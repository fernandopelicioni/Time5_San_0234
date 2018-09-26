unit TelaLanca2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan, Mask, ActnMan, ActnColorMaps, DBCtrls,
  Buttons, CJVEditDate, DB, DBTables, Grids, DBGrids, ComCtrls,
  JvExControls, JvComponent, JvButton, JvTransparentButton;

type
  TFormLanca2 = class(TForm)
    XPManifest1: TXPManifest;
    StandardColorMap1: TStandardColorMap;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    TwilightColorMap1: TTwilightColorMap;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    S: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DATAI: TCJVEditDate;
    DATAF: TCJVEditDate;
    GroupBox2: TGroupBox;
    DBText1: TDBText;
    Label14: TLabel;
    Label13: TLabel;
    EditMatricula: TMaskEdit;
    Label1: TLabel;
    DBText7: TDBText;
    Label15: TLabel;
    EditData: TLabel;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    Query1: TQuery;
    QrVeiculo: TQuery;
    DataSource2: TDataSource;
    QrLanca: TTable;
    DtLanca2: TDataSource;
    QrLancaMatricula: TStringField;
    QrLancaENTRADA: TStringField;
    QrLancaINICIO_INTERVALO: TStringField;
    QrLancaFIM_INTERVALO: TStringField;
    QrLancaSAIDA: TStringField;
    QrLancaTOTAL: TStringField;
    QrLancaTIPO_DIA: TStringField;
    Label4: TLabel;
    Label6: TLabel;
    QrLancaTotal_intervalo: TStringField;
    Panel3: TPanel;
    Label10: TLabel;
    DBText6: TDBText;
    BitBtn3: TBitBtn;
    Query1Matricula: TStringField;
    Query1ENTRADA: TStringField;
    Query1INICIO_INTERVALO: TStringField;
    Query1FIM_INTERVALO: TStringField;
    Query1SAIDA: TStringField;
    Query1TOTAL: TStringField;
    Query1TIPO_DIA: TStringField;
    Query1Total_intervalo: TStringField;
    QrLancaSeq: TAutoIncField;
    Query1Seq: TIntegerField;
    Label7: TLabel;
    StatusBar1: TStatusBar;
    QrLancaDIA_MES_ANO: TDateField;
    Query1DIA_MES_ANO: TDateField;
    Query1Dia_Mes_Ano1: TStringField;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    JvTransparentButton1: TJvTransparentButton;
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure btsalvaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DATAFKeyPress(Sender: TObject; var Key: Char);
    procedure DATAIKeyPress(Sender: TObject; var Key: Char);
    procedure DATAIEnter(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditMatriculaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure DBEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DATAFEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLanca2: TFormLanca2;
       situacao: string[1];
       inter2:string[5];
       tipooperador:string;
       datadigitacao:tDate;
       limpa:string;
       TESTE:STRING;
       datadolancamento:tdate;

implementation

uses TelaModule, DateUtils, telaDiretriz;

{$R *.dfm}

procedure TFormLanca2.DBEdit1Exit(Sender: TObject);
begin
color:=clWindow;
end;

procedure TFormLanca2.DBEdit1Enter(Sender: TObject);
begin
StatusBar1.Panels[0].text:='F5-Folga * F6-Falta * F7-Atestado * F8-Suspensão * F9-Abono  * F10-Normal * F11-INSS';
end;

procedure TFormLanca2.btsalvaClick(Sender: TObject);
begin
//Windows.Beep(150, 200);
color:=clBtnFace;
//Datai.ReadOnly:=false;
//Dataf.ReadOnly:=false;
DbEdit1.Enabled:=false;
DbEdit2.Enabled:=false;
DbEdit8.Enabled:=false;
DbEdit9.Enabled:=false;
DbText2.Enabled:=false;
DbText6.Enabled:=false;

QrlancaDia_Mes_Ano.Text:=EditData.Caption;
EditMatricula.ReadOnly:=false;
QrLancaMatricula.Text:=EditMatricula.Text;
QrLancaTotal_intervalo.Text:=DbText2.caption;
QrLancaTOTAL.Text:=DBText6.Caption;
QrLanca.Post;
//QrLanca.close;
btsalva.Enabled:=false;
bitbtn2.setfocus;
end;

procedure TFormLanca2.BitBtn2Click(Sender: TObject);
begin
DbEdit1.Enabled:=True;
DbEdit2.Enabled:=True;
DbEdit8.Enabled:=True;
DbEdit9.Enabled:=True;
DbText2.Enabled:=True;
DbText6.Enabled:=True;

if (qrlanca.State = DsInsert) or (qrlanca.State = Dsedit) then
    qrlanca.cancel;
//QrLanca.Append;
//Module.QrFuncionario.Close;
btsalva.Enabled:=false;
if DataDigitacao <= strToDate(DataF.Text) Then
     Begin
     QrLanca.Append;
     DataDigitacao:=DataDigitacao+1;
     EditData.Caption:=DateToStr(DataDigitacao);
     label8.Caption:=DateToStr(DataDigitacao);
     //     DBEdit2KeyPress(nil);
     End;

if DataDigitacao <= strToDate(DataF.Text) Then
     Begin
     Limpa:=EditMatricula.Text;
      bitbtn4click(nil);
     //EditMatricula.Setfocus;
     End
     Else
     begin
     ShowMessage('Por Favor, Selecione outro período !');
     Datai.Readonly:=false;
     DataF.Readonly:=false;
     DbText1.Visible:=false;
     Qrlanca.Close;
     module.TbFuncao.close;
     EditMatricula.Text:=' ' ;
     DataI.setfocus;

     End;
end;

procedure TFormLanca2.EditMatriculaKeyPress(Sender: TObject;
  var Key: Char);

begin
If key = #13 then
      begin
      if editmatricula.text <> ' ' then
      begin
      SITUACAO:='O';
      key:=#0;
       bitbtn4click(nil);
      {TESTE:=' ';
      With Module.Qrfuncionario do
           Begin
           Close;
           Filter:='MATRICULA = ' + EDITMATRICULA.TEXT ;
           FILTERED:=TRUE;
           OPEN;
           FIRST;
           if eof then
                 begin
                 situacao:='X';
                 end;
           END;
      With Module.TBFuncao do
           Begin
           Close;
           Filter:='Codigo = ' + S.CAPTION + Module.QRFUNCIONARIOFUNCAO.TEXT + S.CAPTION;
           FILTERED:=TRUE;
           OPEN;
           FIRST;
           TipoOperador:=Module.TBFUNCAOOPERA_VEICULO.text;
           END;
      If situacao = 'X'  then
           Begin
           MessageBox(handle,'Funcionário não Cadastrado !','Epaaaa !?', MB_OK + MB_OK);
           Editmatricula.SetFocus;
           End;
      if Situacao = 'O' then
           begin
           DbText1.Visible:=true;
           bitbtn1click(nil);
           End;
       If SITUACAO = 'O' then
               Begin
               QrLanca.Open;
               QrLanca.Append;
               QrLancaMATRICULA.text:=EditMatricula.Text;
               QrLancaDia_Mes_Ano.text:=EditData.caption;
               DBEdit1.SetFocus;
               End;
       IF SITUACAO = 'N' THEN
            begin
            if DataDigitacao <= strToDate(DataF.Text) Then
                DataDigitacao:=DataDigitacao+1;
            EditData.Caption:=DateToStr(DataDigitacao);
            if DataDigitacao <= strToDate(DataF.Text) Then
                Begin
                Limpa:=EditMatricula.Text;
                EditMatricula.Setfocus;
                End
                Else
                begin
                ShowMessage('Por Favor, Selecione outro período !');
                DbText1.Visible:=false;
                Qrlanca.Close;
                module.TbFuncao.close;
                EditMatricula.Text:=' ' ;
                DataI.setfocus;
                End;
            End;}
      end
      else
      begin
      beep;
      ShowMessage('Você precisa digitar uma matricula valida');
      EditMatricula.setfocus;
      end;
      End;
end;

procedure TFormLanca2.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       Statusbar1.Panels[0].text:=' ';
       if DBEDIT1.text <> '00:00' then
           QrlancaTipo_Dia.text:='N';
       DbEdit2.setfocus;
       End;
end;

procedure TFormLanca2.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       DbEdit8.SetFocus;
       End;

end;

procedure TFormLanca2.DATAFKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN
      BEGIN
     if (strToDate(DataF.text)) > StrToDate(FormDiretriz.Table1PERIODO_Final.text) then
           begin
           ShowMessage('Esta data esta fora do Período Programado, por favor confira !');
           DataF.SetFocus;
           end else
           begin
           EDITDATA.CAPTION:=DATAI.TEXT;
           Label8.caption:=datai.text;
           Editmatricula.Enabled:=true;
           Limpa:=' ';
           EditMatricula.SETFOCUS;
           end;
      END;
end;

procedure TFormLanca2.DATAIKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13
     THEN
     BEGIN
     KEY:=#0;
     if (strToDate(DataI.text)) < StrToDate(FormDiretriz.Table1PERIODO_INICIAL.text) then
           begin
           ShowMessage('Esta data esta fora do Período Programado, por favor confira !');
           DataI.SetFocus;
           end
           else
           begin
           DataDigitacao:=StrToDate(DataI.Text);
           //     DATAF.TEXT:=DATAI.TEXT;
           DATAF.SETFOCUS;
           End;
     END;
end;

procedure TFormLanca2.DATAIEnter(Sender: TObject);
begin
color:=clBtnFace;

DATAI.TEXT:=FormDiretriz.Table1PERIODO_INICIAL.text;
DATAF.TEXT:=FormDiretriz.Table1PERIODO_Final.text;
QrLanca.Cancel;
end;

procedure TFormLanca2.DBEdit8KeyPress(Sender: TObject; var Key: Char);
var
entrada,saida: TTime;
begin
TimeSeparator:=':';
ShortTimeFormat:='hh:mm';
if Key = #13 Then
       Begin
       Key:=#0;
       Entrada  :=StrToTime(DbEdit2.text);
       Saida    :=StrToTime(DbEdit8.text);
       if saida < entrada then
            DBText2.Caption:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
       if saida > entrada then
             DBText2.Caption:=copy(TimeToStr(Saida-Entrada),1,5);
       DbEdit9.Setfocus;
       End;

end;

procedure TFormLanca2.DBEdit9KeyPress(Sender: TObject; var Key: Char);
var
intervalo,entrada,saida: TTime;
begin
if Key = #13 Then
       Begin
       TimeSeparator:=':';
       ShortTimeFormat:='hh:mm';
       intervalo:=StrToTime(DbText2.caption);
       Entrada  :=StrToTime(DbEdit1.text);
       Saida    :=StrToTime(DbEdit9.text);
       if saida < entrada then
            DBText6.Caption:=copy(TimeToStr((Saida-Entrada-Intervalo)+1440),1,5);
       if saida > entrada then
            DBText6.Caption:=copy(TimeToStr(Saida-Entrada-intervalo),1,5);
       Btsalva.Enabled:=true;
       BtSalva.SetFocus;
       If StrToTime(DbText6.caption) > StrToTime(Module.TBFUNCAOLIMITE_HORAS.text) then
            Begin
            ShowMessage('Atenção' +#13 + 'Excesso de Horas Trabalhadas no Dia, Verifique !');
            DbEdit1.SetFocus;
            end;
       End;


end;

procedure TFormLanca2.FormShow(Sender: TObject);
begin
EditData.caption:=' ';
Label7.caption:=' ';
DataI.setfocus;
end;

procedure TFormLanca2.BitBtn1Click(Sender: TObject);
var
registro:string[4];
dataregistro:string[10];
tipolancamento:string;
begin
registro:=EditMatricula.Text;
dataRegistro:=EditData.caption;
with Query1 do
        begin
        close;
        Filter:='Matricula = ' + s.caption + registro + s.caption +
        ' and Dia_Mes_Ano = ' + s.caption + DataRegistro + s.caption;
        Filtered:=True;
        Open;
        if Not Eof THEN
               Begin
              if messagedlg('Colaborador ja cadastrado para este dia,'+#13+
              'Deseja Alterar ?',mtConfirmation,[mbno, mbyes],0)
              =mryes then begin
                      QrLanca.open;
                      QrLanca.Filter:='Matricula = ' + s.caption + registro +  s.caption +
                                      ' and Dia_Mes_Ano =' + s.caption + DataRegistro + s.caption;
                      QrLanca.Filtered:=true;
                      If QrLancaTIPO_DIA.Text = 'N' then
                           begin
                           TIPOLANCAMENTO:='Normal';
                           color:=clBtnFace;
                           end;
                      If QrLancaTIPO_DIA.Text = 'L' then
                           begin
                           TIPOLANCAMENTO:='Falta';
                           color:=$00FFFFCE;
                           end;
                      If QrLancaTIPO_DIA.Text = 'I' then
                           begin
                           TIPOLANCAMENTO:='Inativo';
                           color:=$003FFFCE;
                           end;

                      If QrLancaTIPO_DIA.Text = 'A' then
                           begin
                           TIPOLANCAMENTO:='Atestado';
                           color:=$00F3A9CB;
                           end;
                      If QrLancaTIPO_DIA.Text = 'F' then
                           begin
                           TIPOLANCAMENTO:='Folga';
                           color:=$00FFFFCE;
                           end;
                      If QrLancaTIPO_DIA.Text = 'R' then
                           begin
                           TIPOLANCAMENTO:='Abono Feriado';
                           color:=clMoneyGreen;
                           end;
                      If QrLancaTIPO_DIA.Text = 'S' then
                           begin
                           TIPOLANCAMENTO:='Suspensão';
                           color:=clCream;
                           end;
                      If QrLancaTIPO_DIA.Text = 'B' then
                           begin
                           TIPOLANCAMENTO:='Abonado Pela Gerência';
                           color:=clSkyBlue;
                           end;
                      Label7.Caption:=TipoLancamento;
                      QrLanca.Edit;
                      Datai.ReadOnly:=true;
                      Dataf.ReadOnly:=true;
                      EditMatricula.ReadOnly:=true;
                      DbEdit1.setfocus;
                      SITUACAO:='A';
                      End
                      Else
                      situacao:='N';
                      End;
        End;

end;

procedure TFormLanca2.BitBtn3Click(Sender: TObject);
begin
QrLanca.edit;
end;

procedure TFormLanca2.EditMatriculaEnter(Sender: TObject);
begin
color:=clBtnFace;

EDITMATRICULA.Text:=limpa;
end;

procedure TFormLanca2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CAfree;
end;

procedure TFormLanca2.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = VK_F5 then
       Begin
         if messagedlg('Você Escolhou Abonar FOLGA para este Colaborador,'+#13+
        'É isso que você quer ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='F';
              QrLancaENTRADA.text:='00:00';
              QrLancasaida  .text:='00:00';
              QrLancaINICIO_INTERVALO.text:='00:00';
              QrLancaFIM_INTERVALO.text:='00:00';
              QrLancaTOTAL.text:='00:00';
              QrLancaTotal_intervalo.text:='00:00';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;

if key = VK_F6 then
       Begin
         if messagedlg('Este Colaborador FALTOU !!!,'+#13+
        'É isso que Mesmo que você quer ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='T';
              QrLancaENTRADA.text:='00:00';
              QrLancasaida  .text:='00:00';
              QrLancaINICIO_INTERVALO.text:='00:00';
              QrLancaFIM_INTERVALO.text:='00:00';
              QrLancaTOTAL.text:='00:00';
              QrLancaTotal_intervalo.text:='00:00';

              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
if key = VK_F7 then
       Begin
         if messagedlg('ATESTADO, Abonar Dia ?,'+#13+
        'Confirme por favor !',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='A';
              QrLancaENTRADA.text:='00:00';
              QrLancasaida  .text:='00:00';
              QrLancaINICIO_INTERVALO.text:='00:00';
              QrLancaFIM_INTERVALO.text:='00:00';
              QrLancaTOTAL.text:='00:00';
              QrLancaTotal_intervalo.text:='00:00';

              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
if key = VK_F8 then
       Begin
         if messagedlg('Supenso de Escala? ,'+#13+
        'É isso que Mesmo que você quer ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='S';
              QrLancaENTRADA.text:='00:00';
              QrLancasaida  .text:='00:00';
              QrLancaINICIO_INTERVALO.text:='00:00';
              QrLancaFIM_INTERVALO.text:='00:00';
              QrLancaTOTAL.text:='00:00';
              QrLancaTotal_intervalo.text:='00:00';

              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
if key = VK_F9 then
       Begin
         if messagedlg('Abonar dia? ,'+#13+
        'Você esta Abonando o dia deste Colaborador',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='B';
              QrLancaENTRADA.text:='00:00';
              QrLancasaida  .text:='00:00';
              QrLancaINICIO_INTERVALO.text:='00:00';
              QrLancaFIM_INTERVALO.text:='00:00';
              QrLancaTOTAL.text:='00:00';
              QrLancaTotal_intervalo.text:='00:00';

              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
if key = VK_F10 then
       Begin
         if messagedlg('Alterar lançamento para DIA NORMAL ? ,'+#13+
        'Dia Normal',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='N';
              DbEdit1.SetFocus;
              End;
      End;
if key = VK_F11 then
       Begin
         if messagedlg('Inativar Funcionário?  ,'+#13+
        'Encostar ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='I';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;

end;

procedure TFormLanca2.BitBtn4Click(Sender: TObject);
begin
      SITUACAO:='O';
      TESTE:=' ';
      With Module.Qrfuncionario do
           Begin
           Close;
           Filter:='MATRICULA = ' + EDITMATRICULA.TEXT ;
           FILTERED:=TRUE;
           OPEN;
           FIRST;
           if (eof) then
                 begin
                 situacao:='X';
                 end;
           if (Module.qRfUNCIONARIOSituacao.text = 'D') or (Module.qRfUNCIONARIOSituacao.text = 'I') then
                situacao:='p';
           END;
      With Module.TBFuncao do
           Begin
           Close;
           Filter:='Codigo = ' + S.CAPTION + Module.QRFUNCIONARIOFUNCAO.TEXT + S.CAPTION;
           FILTERED:=TRUE;
           OPEN;
           FIRST;
           TipoOperador:=Module.TBFUNCAOOPERA_VEICULO.text;
           END;
      If situacao = 'X'  then
           Begin
           beep;
     //      Windows.Beep(150, 350);
           MessageBox(handle,'Funcionário não Cadastrado !','Epaaaa !?', MB_OK + MB_OK);
           Editmatricula.SetFocus;
           End;
      If situacao = 'p'  then
           Begin
           if (Module.qRfUNCIONARIOSituacao.text = 'I') then
                begin
                if (datadigitacao >= StrTodate(Module.qRfUNCIONARIOINATIVO_INICIO.text)) and (datadigitacao <= StrTodate(Module.qRfUNCIONARIOINATIVO_FIM.text)) then
                          begin
//                          Windows.Beep(150, 350);
                          MessageBox(handle,'Colaborador Inativo ou Demitido, verifique isso Por Favor !','Epaaaa !?', MB_OK + MB_OK);
                          Editmatricula.SetFocus;
                          end
                          else
                          begin
                          situacao:='O';
                          end;
                end;
           if (Module.qRfUNCIONARIOSituacao.text = 'D') then
               begin
          //     Windows.Beep(150, 350);
               MessageBox(handle,'Colaborador Demitido, verifique isso Por Favor !','Epaaaa !?', MB_OK + MB_OK);
               Editmatricula.SetFocus;
               End;
           end;
      if Situacao = 'O' then
           begin
           DbText1.Visible:=true;
           bitbtn1click(nil);
           End;
       If SITUACAO = 'O' then
               Begin
               QrLanca.Open;
               QrLanca.Append;
               QrLancaMATRICULA.text:=EditMatricula.Text;
               QrLancaDia_Mes_Ano.text:=EditData.caption;
               DBEdit1.SetFocus;
               End;
       IF SITUACAO = 'N' THEN
            begin
            if DataDigitacao <= strToDate(DataF.Text) Then
                DataDigitacao:=DataDigitacao+1;
            EditData.Caption:=DateToStr(DataDigitacao);
            if DataDigitacao <= strToDate(DataF.Text) Then
                Begin
                Limpa:=EditMatricula.Text;
                EditMatricula.Setfocus;
                End
                Else
                begin
    //            Windows.Beep(150, 350);
                ShowMessage('Por Favor, Selecione outro período !');
                DbText1.Visible:=false;
                Qrlanca.Close;
                module.TbFuncao.close;
                EditMatricula.Text:=' ' ;
                DataI.setfocus;
                End;
            End;

end;

procedure TFormLanca2.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLanca2.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLanca2.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLanca2.JvTransparentButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormLanca2.DBEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//testacampo:=copy(DbEdit1.text,5,1);
//if testacampo <> '' then
//   begin
//   keybd_event(VK_RETURN, 0, 0, 0);
//   end;
end;

procedure TFormLanca2.DATAFEnter(Sender: TObject);
begin
color:=clBtnFace;

end;

end.




