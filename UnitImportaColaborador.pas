unit UnitImportaColaborador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGrids, ADODB, StdCtrls, Buttons, Gauges,
  pngimage;

type
  TFormImportaColaborador = class(TForm)
    Panel1: TPanel;
    DtProCorpore: TDataSource;
    QrProCorpore: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    QrPro: TADOQuery;
    Gauge1: TGauge;
    DtColigada: TDataSource;
    QrCarreira: TADOQuery;
    QrExperiencia: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    QrFunCor: TADOQuery;
    QrFuncao: TADOQuery;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaColaborador: TFormImportaColaborador;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormImportaColaborador.BitBtn1Click(Sender: TObject);
var CodigoAtual,CPF,Endereco,ChapaAtual: String;
X:Word;
begin
Screen.Cursor:=CrHourGlass;
     ShowMessage('Aconselhamos voc� a fechar todos os Sistemas antes de prosseguir !');
     with QrFunCor do
         begin
               Close;

               Sql.Clear;
               Sql.Add('Select  * from Pfuncao where codcoligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_coligada').AsString));
               Sql.Add('Order by codigo');
               Open;
               first;
               if not eof then
                     Begin
                           Repeat
                                With QrFuncao do
                                     begin
                                           Close;
                                           Sql.Clear;
                                           Sql.Add('Select * from tb_funcao where cod_funcao = ' + QuotedStr(QrFunCor.FieldByName('codigo').AsString));
                                           open;
                                           if eof then
                                                 begin
                                                       Insert;
                                                       QrFuncao.FieldByName('cod_Funcao').AsString:=QrFunCor.FieldByName('codigo').AsString;
                                                       QrFuncao.FieldByName('Des_Funcao').AsString:=QrFunCor.FieldByName('Nome').AsString;
                                                       QrFuncao.FieldByName('Reg_Ponto').AsString:='N';
                                                       Post;
                                                       Close;
                                                 end;
                                     end;
                           Next;
                           Until Eof ;
                     End;
         end;
     With QrProCorpore do
           Begin
                 Close;
                  Sql.Clear;
                   Sql.Add('Select A.Chapa,A.Nome,a.*, B.* from PFunc A, PPessoa B');
                    Sql.Add('Where B.Codigo = A.CodPessoa');
                    Sql.Add('and A.codsituacao = ' +  quotedStr('A'));
                     Sql.Add('And A.CodColigada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
                      Sql.Add('order by A.Chapa');
                      Open;
                      Gauge1.MaxValue:=RecordCount;
                     // Showmessage('1');
                      if (not Eof) then
                           begin
                                  Repeat;
                                          // Se For Sanremo importa chapa com 8 Digitos
                                          if (DtColigada.DataSet.FieldByName('Cod_Coligada').AsInteger = 1) or (DtColigada.DataSet.FieldByName('Cod_Coligada').AsInteger = 3) then
                                                    ChapaAtual:=Copy(QrProCorpore.FieldByName('Chapa').AsString,1,8)
                                                    else
                                                    ChapaAtual:=Copy(QrProCorpore.FieldByName('Chapa').AsString,1,6);

                                         With QrPro do
                                               Begin
                                                     Close;
                                                     Sql.Clear;
                                                     Sql.Add('Select * From Tb_Profissionais');
                                                     Sql.Add('Where Cod_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                     Sql.Add('And Cha_Pro = ' + QuotedStr(ChapaAtual));
                                                     Open;
                                                     if Eof then
                                                             begin
                                                                       QrPro.Insert;
                                                                       QrPro.FieldByName('Cha_Pro').AsString:=ChapaAtual;
                                                                       QrPro.FieldByName('Cod_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                                                       QrPro.FieldByName('Nom_pro').AsString:=Copy(QrProCorpore.FieldByName('Nome').AsString,1,50);
                                                                       QrPro.FieldByName('Rg_pro').AsString:=Copy(QrProCorpore.FieldByName('CARTIDENTIDADE').AsString,1,15);
                                                                       Cpf:=Copy(QrProCorpore.FieldByName('CPF').AsString,1,3)+'.'+Copy(QrProCorpore.FieldByName('CPF').AsString,4,3)+'.'+Copy(QrProCorpore.FieldByName('CPF').AsString,7,3)+'-'+Copy(QrProCorpore.FieldByName('CPF').AsString,10,2);
                                                                       QrPro.FieldByName('CPF_pro').AsString:=Cpf;
                                                                       QrPro.FieldByName('Fun_pro').AsString:=IntToStr(StrToInt(QrProCorpore.FieldByName('CodFuncao').AsString));
                                                                       QrPro.FieldByName('Dep_pro').AsString:='1';
                                                                       QrPro.FieldByName('Dt_Admissao').AsString:=QrProCorpore.FieldByName('DATAADMISSAO').AsString;
                                                                       Endereco:=Copy(QrProCorpore.FieldByName('Rua').AsString,1,30)+' - ' + Copy(QrProCorpore.FieldByName('Numero').AsString,1,3) + ' - ' + Copy(QrProCorpore.FieldByName('Bairro').AsString,1,30)+' - ' + Copy(QrProCorpore.FieldByName('Complemento').AsString,1,15);
                                                                       //QrPro.FieldByName('ENDERECO_PRO').AsString:=Endereco;
                                                                       //QrPro.FieldByName('Cidade_PRO').AsString:=Copy(QrProCorpore.FieldByName('Cidade').AsString,1,30);
                                                                       //QrPro.FieldByName('Tel_PRO').AsString:=Copy(QrProCorpore.FieldByName('Telefone1').AsString,1,9);
                                                                       //QrPro.FieldByName('Cnh_Val_Pro').AsString:=QrProCorpore.FieldByName('DTVENCHABILIT').AsString;
                                                                       //QrPro.FieldByName('Cnh_Num_Pro').AsString:=Copy(QrProCorpore.FieldByName('CARTMOTORISTA').AsString,1,10);
                                                                       //QrPro.FieldByName('Cnh_Cat_Pro').AsString:=Copy(QrProCorpore.FieldByName('TIPOCARTHABILIT').AsString,1,3);
                                                                       QrPro.FieldByName('Tipo_Pro').AsString:='N';
                                                                       QrPro.FieldByName('Ativo_Pro').AsString:='A';
                                                                       QrPro.FieldByName('His_Pro').AsString:='Importado RMLabore';
                                                                       //QrPro.FieldByName('Ani_Pro').AsString:=QrProCorpore.FieldByName('DTNASCIMENTO').AsString;
                                                                       //QrPro.FieldByName('UF_Pro').AsString:=QrProCorpore.FieldByName('Estado').AsString;
                                                                       //QrPro.FieldByName('Pro_CTPS_Num').AsString:=Copy(QrProCorpore.FieldByName('CARTEIRATRAB').AsString,1,10);
                                                                       //QrPro.FieldByName('Pro_CTPS_Serie').AsString:=Copy(QrProCorpore.FieldByName('SERIECARTTRAB').AsString,1,5);
                                                                       //QrPro.FieldByName('Pro_Pis').AsString:=Copy(QrProCorpore.FieldByName('PISPASEP').AsString,1,11);
                                                                       //QrPro.FieldByName('Pro_Sexo').AsString:=QrProCorpore.FieldByName('SEXO').AsString;
                                                                       //QrPro.FieldByName('Pro_CEP').AsString:=Copy(QrProCorpore.FieldByName('CEP').AsString,1,10);
                                                                       QrPro.FieldByName('Pro_ExpSta').AsString:='S';
                                                                       QrPro.FieldByName('Pro_IntMon').AsString:='S';
                                                                       if ((QrProCorpore.FieldByName('CodFuncao').AsInteger <> 0) or (QrProCorpore.FieldByName('CodFuncao').AsInteger > 256)) then
                                                                             begin
                                                                                 //ShowMessage(chapaatual);
                                                                                 Post;
                                                                                 CodigoAtual:=QrPro.FieldByName('Cod_Pro').AsString;
                                                                                 QrCarreira.open;
                                                                                 QrCarreira.Insert;
                                                                                           //  Showmessage('1');
                                                                                 QrCarreira.FieldByName('Carreira_Chapa').AsString:=CodigoAtual;
                                                                                 QrCarreira.FieldByName('Carreira_Funcao').AsString:=IntToStr(StrToInt(QrProCorpore.FieldByName('CodFuncao').AsString));
                                                                                             //Showmessage('2');
                                                                                 QrCarreira.FieldByName('Carreira_DataInicio').AsString:=QrProCorpore.FieldByName('DATAADMISSAO').AsString;
                                                                                 QrCarreira.FieldByName('Carreira_His').AsString:='Importa��o Labore';
                                                                                 QrCarreira.Post;
                                                                                 QrExperiencia.Open;
                                                                                             //Showmessage('3');
                                                                                 QrExperiencia.Insert;
                                                                                 QrExperiencia.FieldByName('Tex_Chapa').AsString:=CodigoAtual;
                                                                                 QrExperiencia.FieldByName('Tex_Data').AsString:=QrProCorpore.FieldByName('DATAADMISSAO').AsString;
                                                                                 QrExperiencia.FieldByName('TEX_VENPRIEXP').AsString:=DateToStr(StrToDate(QrProCorpore.FieldByName('DATAADMISSAO').AsString) + 45) ;
                                                                                 QrExperiencia.FieldByName('TEX_VENSEGEXP').AsString:=DateToStr(StrToDate(QrProCorpore.FieldByName('DATAADMISSAO').AsString) + 90) ;
                                                                                 QrExperiencia.Post;
                                                                                             //Showmessage('3');
                                                                                 Memo1.Lines.Add('Integrando : ' + ChapaAtual);
                                                                                 X:=X+1;
                                                                             end else
                                                                             cancel;
                                                             end;
                                               End;
                                  Memo1.Lines.Add('Lendo Cadastro : ' + ChapaAtual + ' - ' + QrProCorpore.FieldByName('Nome').AsString);
                                  Gauge1.Progress:=Gauge1.Progress+1;
                                  Next;
                                  Until eof;
                           end;

           End;
Memo1.Lines.Add(intToStr(X) + ' Integrados com Sucesso !!! ');
Screen.Cursor:=CrDefault;
end;

procedure TFormImportaColaborador.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormImportaColaborador.FormActivate(Sender: TObject);
begin
DtProCorpore.DataSet.Open;
end;

procedure TFormImportaColaborador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtProCorpore.DataSet.Close;
QrPro.Close;
QrCarreira.Close;
QrExperiencia.Close;
Action:=cafree;

end;

end.
