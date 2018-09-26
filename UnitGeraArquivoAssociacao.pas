unit UnitGeraArquivoAssociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, Buttons, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, Mask,
  DBCtrls;

type
  TFormGeraArquivoAssociacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Gauge1: TGauge;
    QrMov: TADOQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    EditLinha: TDBLookupComboBox;
    QrLinha: TADOQuery;
    Label4: TLabel;
    DtLinha: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker1Click(Sender: TObject);
    procedure DateTimePicker2Exit(Sender: TObject);
    procedure MaskEdit1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraArquivoAssociacao: TFormGeraArquivoAssociacao;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormGeraArquivoAssociacao.DateTimePicker1Click(Sender: TObject);
begin
           Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2)
                       + Copy(DateToStr(DateTimePicker1.Date),4,2)
                       + '-'
                       + Copy(MaskEdit1.Text,1,2)
                       + Copy(MaskEdit1.Text,4,2)
                         +'.TXT';

end;

procedure TFormGeraArquivoAssociacao.DateTimePicker1Exit(Sender: TObject);
begin
           Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2)
                       + Copy(DateToStr(DateTimePicker1.Date),4,2)
                       + '-'
                       + Copy(MaskEdit1.Text,1,2)
                       + Copy(MaskEdit1.Text,4,2)
                         +'.TXT';

end;

procedure TFormGeraArquivoAssociacao.DateTimePicker2Exit(Sender: TObject);
begin
           Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2)
                       + Copy(DateToStr(DateTimePicker1.Date),4,2)
                       + '-'
                       + Copy(MaskEdit1.Text,1,2)
                       + Copy(MaskEdit1.Text,4,2)
                         +'.TXT';

end;

procedure TFormGeraArquivoAssociacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
           Action:=cafree;
end;

procedure TFormGeraArquivoAssociacao.FormShow(Sender: TObject);
begin
           Gauge1.Progress:=0;
           DtLinha.DataSet.Open;
           DateTimePicker1.Date:=Now+1;
           //Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2) + Copy(DateToStr(DateTimePicker1.Date),4,2) +'.TXT';
           Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2)
                       + Copy(DateToStr(DateTimePicker1.Date),4,2)
                       + '-'
                       + Copy(MaskEdit1.Text,1,2)
                       + Copy(MaskEdit1.Text,4,2)
                         +'.TXT';

end;

procedure TFormGeraArquivoAssociacao.MaskEdit1Click(Sender: TObject);
begin
           Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2)
                       + Copy(DateToStr(DateTimePicker1.Date),4,2)
                       + '-'
                       + Copy(MaskEdit1.Text,1,2)
                       + Copy(MaskEdit1.Text,4,2)
                         +'.TXT';

end;

procedure TFormGeraArquivoAssociacao.MaskEdit1Exit(Sender: TObject);
begin
           Edit2.Text:='C:\Genoma\As'+ Copy(DateToStr(DateTimePicker1.Date),1,2)
                       + Copy(DateToStr(DateTimePicker1.Date),4,2)
                       + '-'
                       + Copy(MaskEdit1.Text,1,2)
                       + Copy(MaskEdit1.Text,4,2)
                         +'.TXT';

end;

procedure TFormGeraArquivoAssociacao.SpeedButton1Click(Sender: TObject);
var
MudaLinha,X:integer;
Arquivo:TextFile;
Linha,Iti,Data,Horario,Veiculo,Oso,Saida:String;
begin
          Screen.Cursor:=crHourGlass;
          X:=0;
          with QrMov do
               begin
                      Close;
                      Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                      Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                      Parameters.ParamByName('Hora').Value:=(MaskEdit1.Text);
                      if editlinha.KeyValue <> Null then
                                  Parameters.ParamByName('Linha').Value:=(EditLinha.KeyValue);
                      Open;
                      Gauge1.MaxValue:=RecordCount;
                      if not Eof then
                            begin
//                                 try
                                       AssignFile(Arquivo, Edit2.Text);
                                       Rewrite(Arquivo);
//                                 Except
//                                        MessageBox(0, 'O nome para o arquivo informado n�o � valido, verifique!', 'Inv�lido', MB_ICONWARNING or MB_OK);
//                                        Abort;
//                                 end;
                                 repeat
                                       Gauge1.Progress:=Gauge1.Progress+1;
                                       MudaLinha:=FieldByName('Linha').AsInteger;
                                       // Adaptacao para linhas operadas pelas duas coligadas, sera usado numero maior
                                       if (MudaLinha > 2500) and (MudaLinha < 2999)  then
                                              Linha:=IntToStr(MudaLinha-2000)
                                              else
                                              Linha:=FieldByName('Linha').AsString;
                                       Iti:=FieldByName('Iti').AsString;
                                       if Copy(Iti,1,4) = '2526' then
                                           Iti:=Copy(Iti,2,20);
                                       if (Linha = '927') or (FieldByName('Hora').AsDateTime < StrToTime('01:20')) then
                                                 Data:=DateToStr(FieldByName('Data').AsDatetime+1)
                                                 else
                                                 Data:=DateToStr(FieldByName('Data').AsDatetime);
                                       Horario:=FieldByName('Hora').AsString;
                                       Veiculo:=FieldByName('Vei').AsString;
                                       Oso:=FormatFloat('0000000000',FieldByName('Oso').AsInteger);
                                       //Inicia Grava��o da linha
                                       Saida:=
                                               Linha + ';' +
                                               Iti   + ';' +
                                               Data +  ' ' +
                                               Horario + ';' +
                                               Veiculo + ';' +
                                               Oso;
                                       Writeln(Arquivo, Saida);
                                 Next
                                 until Eof;
                                 CloseFile(Arquivo);
                                 MessageBox(0, 'O Arquivo ja pode ser usado!', 'Sucesso', MB_ICONASTERISK or MB_OK);
                            end
                            else
                            begin
                                  MessageBox(0, 'N�o foram encontrados dados nesta data, verifique se o movimento ja foi gerado e ajsutado!', 'Dados N�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                  DateTimePicker1.SetFocus;
                            end;
               end;
               Screen.Cursor:=crDefault;
end;

procedure TFormGeraArquivoAssociacao.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
