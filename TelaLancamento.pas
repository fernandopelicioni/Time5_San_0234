unit TelaLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ActnColorMaps, ActnMan, XPMan, DBCtrls, Buttons,
  Mask, CJVEditDate, Grids, DBGrids, ComCtrls, ExtCtrls, JvExControls,
  JvComponent, JvButton, JvTransparentButton;

type
  TFormLancamento = class(TForm)
    XPManifest1: TXPManifest;
    StandardColorMap1: TStandardColorMap;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBText3: TDBText;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBText4: TDBText;
    TwilightColorMap1: TTwilightColorMap;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBText5: TDBText;
    Panel3: TPanel;
    Label10: TLabel;
    DBText6: TDBText;
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
    busca: TBitBtn;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1Matricula: TStringField;
    Query1VEICULO_1: TStringField;
    Query1TIPO_DIA: TStringField;
    Panel4: TPanel;
    Label17: TLabel;
    EditIntervalo: TDBEdit;
    QrVeiculo: TQuery;
    DataSource2: TDataSource;
    qrFuncionario: TQuery;
    qrFuncionarioMATRICULA: TStringField;
    qrFuncionarioFUNCAO: TStringField;
    qrFuncionarioOPERAVEICULO: TBooleanField;
    qrFuncionarioNome: TStringField;
    qrFuncionarioSITUACAO: TStringField;
    qrFuncionarioINATIVO_INICIO: TDateField;
    qrFuncionarioINATIVO_FIM: TDateField;
    qrFuncionarioCODIGO: TStringField;
    qrFuncionarioDESCRICAO: TStringField;
    qrFuncionarioHORA_DIARIA: TStringField;
    qrFuncionarioCOMPESA: TBooleanField;
    qrFuncionarioOPERA_VEICULO: TBooleanField;
    qrFuncionarioREDUCAO_INTERVALO: TStringField;
    qrFuncionarioLIMITE_HORAS: TStringField;
    dtfuncionario: TDataSource;
    qrdiretriz: TQuery;
    qrdiretrizSequencial: TIntegerField;
    qrdiretrizCOM_PRIMEIRA: TDateField;
    qrdiretrizCOM_SEGUNDA: TDateField;
    qrdiretrizCOM_TERCEIRA: TDateField;
    qrdiretrizCOM_QUARTA: TDateField;
    qrdiretrizCOM_QUINTA: TDateField;
    qrdiretrizJORNADA_MAXIMA: TStringField;
    qrdiretrizINICIO_ADCIONAL: TStringField;
    qrdiretrizFIM_ADCIONAL: TStringField;
    qrdiretrizINTERVALO_TIPO: TStringField;
    qrdiretrizPERIODO_INICIAL: TDateField;
    qrdiretrizPERIODO_FINAL: TDateField;
    qrdiretrizFERIADO: TStringField;
    qrdiretrizFALTA: TStringField;
    qrdiretrizSUSPENSAO: TStringField;
    qrdiretrizHORAEXTRA: TStringField;
    qrdiretrizREFLEXOEXTRA: TStringField;
    qrdiretrizADICIONAL: TStringField;
    dtlanca: TDataSource;
    Query1Sequencial: TIntegerField;
    Query1DIA_MES_ANO: TDateField;
    Query1ENTRADA_1: TStringField;
    Query1ENTRADA_2: TStringField;
    Query1ENTRADA_3: TStringField;
    Query1ENTRADA_4: TStringField;
    Query1SAIDA_1: TStringField;
    Query1SAIDA_2: TStringField;
    Query1SAIDA_3: TStringField;
    Query1SAIDA_4: TStringField;
    Query1VEICULO_2: TStringField;
    Query1VEICULO_3: TStringField;
    Query1VEICULO_4: TStringField;
    Query1TOTAL_1: TStringField;
    Query1TOTAL_2: TStringField;
    Query1TOTAL_3: TStringField;
    Query1TOTAL_4: TStringField;
    Query1TOTAL_GERAL: TStringField;
    Query1INTERVALO: TStringField;
    qrlanca: TTable;
    qrlancaMatricula: TStringField;
    qrlancaSequencial: TAutoIncField;
    qrlancaDIA_MES_ANO: TDateField;
    qrlancaVEICULO_1: TStringField;
    qrlancaENTRADA_1: TStringField;
    qrlancaENTRADA_2: TStringField;
    qrlancaENTRADA_3: TStringField;
    qrlancaENTRADA_4: TStringField;
    qrlancaSAIDA_1: TStringField;
    qrlancaSAIDA_2: TStringField;
    qrlancaSAIDA_3: TStringField;
    qrlancaSAIDA_4: TStringField;
    qrlancaVEICULO_2: TStringField;
    qrlancaVEICULO_3: TStringField;
    qrlancaVEICULO_4: TStringField;
    qrlancaTOTAL_1: TStringField;
    qrlancaTOTAL_2: TStringField;
    qrlancaTOTAL_3: TStringField;
    qrlancaTOTAL_4: TStringField;
    qrlancaTOTAL_GERAL: TStringField;
    qrlancaTIPO_DIA: TStringField;
    qrlancaINTERVALO: TStringField;
    status: TLabel;
    Label16: TLabel;
    EditInicioIntervalo: TMaskEdit;
    EditFinalIntervalo: TMaskEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    JvTransparentButton1: TJvTransparentButton;
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure btsalvaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DATAFKeyPress(Sender: TObject; var Key: Char);
    procedure DATAIKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditMatriculaEnter(Sender: TObject);
    procedure EditIntervaloKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure buscaClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DATAIEnter(Sender: TObject);
    procedure DATAFEnter(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIntervaloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditInicioIntervaloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditInicioIntervaloKeyPress(Sender: TObject; var Key: Char);
    procedure EditFinalIntervaloKeyPress(Sender: TObject; var Key: Char);
    procedure EditFinalIntervaloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btsalvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvTransparentButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancamento: TFormLancamento;
       saida,entrada :Ttime;
       situacao: string[1];
       inter2:string[5];
       tipooperador:string;
       datalancamento: tdate;
implementation

uses  DateUtils, TelaModule;

{$R *.dfm}

procedure TFormLancamento.MaskEdit1Change(Sender: TObject);
begin
qrlanca.open;
end;

procedure TFormLancamento.DBEdit1Exit(Sender: TObject);
begin
label16.caption:=' ';

end;

procedure TFormLancamento.DBEdit1Enter(Sender: TObject);
begin
label16.caption:='F5-F.Folga | F6-T.Falta | F7-A.Atestado | F8-S.Suspensão | F9-B.Abono | F10-N.Normal | F11 - Inat.';
end;

procedure TFormLancamento.btsalvaClick(Sender: TObject);
begin
color:=clBtnFace;
DbText1.Visible:=false;
DbText7.Visible:=false;
Datai.ReadOnly:=false;
Dataf.ReadOnly:=false;
editInicioIntervalo.text:='00:00';
editFinalIntervalo.text:='00:00';
EditMatricula.ReadOnly:=false;
qrlanca.Post;
qrlanca.close;
btsalva.Enabled:=false;
bitbtn2.setfocus;
end;

procedure TFormLancamento.BitBtn2Click(Sender: TObject);
begin
color:=clBtnFace;

if datalancamento = strToDate(dataf.text) then
     begin
     qrlanca.Cancel;
     dbtext1.Visible:=false;
     dbtext7.Visible:=false;
     qrlanca.close;
     editmatricula.setfocus;
     end
     else
     begin
     Datalancamento:=datalancamento+1;
     EditData.caption:=DateToStr(datalancamento);
     qrlanca.Cancel;
     dbtext1.Visible:=false;
     dbtext7.Visible:=false;
     qrlanca.close;
//     editmatricula.setfocus;
     buscaclick(nil);
     end;

end;

procedure TFormLancamento.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       DbEdit2.setfocus;
       End;

end;

procedure TFormLancamento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
var
total:TTIME;
begin
if Key = #13 Then
       Begin
       Key:=#0;
       TimeSeparator:=':';
       ShortTimeFormat:='hh:mm';
       Entrada  :=StrToTime(DbEdit1.text);
       Saida    :=StrToTime(DbEdit2.text);
       if entrada > saida then
            begin
            DBText2.Caption:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            end
            else
            begin
//       if saida > entrada then
            DBText2.Caption:=copy(TimeToStr(Saida-Entrada),1,5);
            qrlancaTOTAL_1.Text:=copy(TimeToStr(Saida-Entrada),1,5);
            end;
       total:=StrToTime(DbText2.caption)+
              StrToTime(DbText3.caption)+
              StrToTime(DbText4.caption)+
              StrToTime(DbText5.caption)-
              strToTime(EditIntervalo.Text);

       QrlancaTOTAL_GERAL.text:=copy(TimeToStr(total),1,5);
       //       DBText6.Caption:=copy(TimeToStr(DBtext2.caption+DBtext3.caption),1,5);

       if qrFuncionarioOPERA_VEICULO.text = 'True' then
           DbEdit3.setfocus
           else
           DBEdit4.setfocus;
       if StrtoTime(Dbtext2.caption) > StrToTime(qrFuncionarioLIMITE_HORAS.text) then
           begin
           Beep;
           if messagedlg('Limite Maximo de horas trabalhadas por dia foi atingido ' + Dbtext2.caption +#13+
                 'Deseja Alterar ?',mtConfirmation,[mbno, mbyes],0) =mryes then
                  DbEdit1.setfocus;
           end;
       End;

end;

procedure TFormLancamento.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       if Dbedit3.Text = '' then
       begin
       DbEdit3.Text:='';
       dbedit3.setfocus;
       end
       else
       begin
       QrVeiculo.Close;
       QrVeiculo.Filter:='Numero = ' + s.Caption + DbEdit3.Text + s.Caption;
       QrVeiculo.Filtered:=True;
       QrVeiculo.Open;
       if Not QrVeiculo.eof then
           begin
           DbEdit4.setfocus;
           End
           Else
           begin
           ShowMessage('Veículo não Cadastrado !');
           DbEdit3.text:='';
           DbEdit3.SetFocus;
           End;
       Qrveiculo.Close;
       End;
       End;
end;

procedure TFormLancamento.DATAFKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN
      BEGIN
     if StrToDate(Dataf.text) > StrToDate(qrdiretrizPERIODO_final.text) then
          begin
          showMessage('Periodo fora do especificado');
          Dataf.setfocus;
          end
          else
          begin
          datalancamento:=strtodate(datai.text);
          editdata.caption:=datai.text;
          EditMatricula.SETFOCUS;
          end
      END;
end;
procedure TFormLancamento.DATAIKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13
     THEN
     BEGIN
     KEY:=#0;
     if StrToDate(Datai.text) < StrToDate(qrdiretrizPERIODO_INICIAL.text) then
          begin
          showMessage('Periodo fora do especificado');
          Datai.setfocus;
          end
          else
          DATAF.SETFOCUS;
     END;
end;
procedure TFormLancamento.DBEdit4KeyPress(Sender: TObject; var Key: Char);
var
hora,horat:TTime;
resultado: real;
begin
if Key = #13 Then
       Begin
       Key:=#0;
       TimeSeparator:=':';
       ShortTimeFormat:='hh:mm';
       horat:=0;
       hora:=strtotime(dbEdit4.text);
       resultado:=hora-horat;
       if resultado > 0 then
             begin
             DbEdit5.setfocus;
             End
             Else
                begin
                if qrdiretrizINTERVALO_TIPO.text = 'C' then
                    editInicioIntervalo.setfocus;
                if qrdiretrizINTERVALO_TIPO.text = 'D' then
                    EditIntervalo.Setfocus;
                end;
             End;
       ENd;


procedure TFormLancamento.DBEdit7KeyPress(Sender: TObject; var Key: Char);
var
hora,horat:TTime;
resultado: real;
begin
if Key = #13 Then
       Begin
       Key:=#0;
       TimeSeparator:=':';
       ShortTimeFormat:='hh:mm';
       horat:=0;
       hora:=strtotime(dbEdit7.text);
       resultado:=hora-horat;
       if resultado > 0 then
             begin
             DbEdit8.setfocus;
             End
             Else
                begin
                if qrdiretrizINTERVALO_TIPO.text = 'C' then
                    editInicioIntervalo.setfocus;
                if qrdiretrizINTERVALO_TIPO.text = 'D' then
                    EditIntervalo.Setfocus;
                end;
             End;
       ENd;

procedure TFormLancamento.DBEdit10KeyPress(Sender: TObject; var Key: Char);
var
hora,horat:TTime;
resultado: real;
begin
if Key = #13 Then
       Begin
       Key:=#0;
       TimeSeparator:=':';
       ShortTimeFormat:='hh:mm';
       horat:=0;
       hora:=strtotime(dbEdit10.text);
       resultado:=hora-horat;
       if resultado > 0 then
             begin
             DbEdit11.setfocus;
             End
             Else
                begin
                if qrdiretrizINTERVALO_TIPO.text = 'C' then
                    editInicioIntervalo.setfocus;
                if qrdiretrizINTERVALO_TIPO.text = 'D' then
                    EditIntervalo.Setfocus;
                end;
             End;
       ENd;

procedure TFormLancamento.DBEdit5KeyPress(Sender: TObject; var Key: Char);
var
entrada,saida: TTime;
total:TTIME;
begin
TimeSeparator:=':';
ShortTimeFormat:='hh:mm';
if Key = #13 Then
       Begin
       Key:=#0;
       Entrada  :=StrToTime(DbEdit4.text);
       Saida    :=StrToTime(DbEdit5.text);
       if saida < entrada then
            begin
            DBText3.Caption:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            qrlancaTOTAL_2.Text:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            end
            else
            begin
            DBText3.Caption:=copy(TimeToStr(Saida-Entrada),1,5);
            qrlancaTOTAL_2.Text:=copy(TimeToStr(Saida-Entrada),1,5);
            end;
       total:=StrToTime(DbText2.caption)+StrToTime(DbText3.caption)+
              StrToTime(DbText4.caption)+StrToTime(DbText5.caption)-strToTime(EditIntervalo.Text);
       QrlancaTOTAL_GERAL.text:=copy(TimeToStr(total),1,5);
       if qrFuncionarioOPERA_VEICULO.text = 'True' then
           DbEdit6.setfocus
           else
           DBEdit7.setfocus;
       if StrtoTime(Dbtext3.caption) > StrToTime(qrFuncionarioLIMITE_HORAS.text) then
           begin
           ShowMessage('Limite Maximo de horas trabalhadas por dia foi atingido ' + Dbtext3.caption + ' , Verifique !!!');
           DbEdit4.setfocus;
           end;

       End;

end;

procedure TFormLancamento.DBEdit8KeyPress(Sender: TObject; var Key: Char);
var
entrada,saida: TTime;
total:TTIME;
begin
TimeSeparator:=':';
ShortTimeFormat:='hh:mm';
if Key = #13 Then
       Begin
       Key:=#0;
       Entrada  :=StrToTime(DbEdit7.text);
       Saida    :=StrToTime(DbEdit8.text);
       if saida < entrada then
            begin
            DBText4.Caption:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            qrlancaTOTAL_3.Text:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            end
            else
            begin
            DBText4.Caption:=copy(TimeToStr(Saida-Entrada),1,5);
            qrlancaTOTAL_3.Text:=copy(TimeToStr(Saida-Entrada),1,5);
            end;
//       DBText4.Caption:=copy(TimeToStr(Saida-Entrada),1,5);
       total:=StrToTime(DbText2.caption)+StrToTime(DbText3.caption)+
              StrToTime(DbText4.caption)+StrToTime(DbText5.caption)-strToTime(EditIntervalo.Text);
       QrlancaTOTAL_GERAL.text:=copy(TimeToStr(total),1,5);
       //       DBText6.Caption:=copy(TimeToStr(DBtext2.caption+DBtext3.caption),1,5);
       if qrFuncionarioOPERA_VEICULO.text = 'True' then
           DbEdit9.setfocus
           else
           DBEdit10.setfocus;
       if StrtoTime(Dbtext4.caption) > StrToTime(qrFuncionarioLIMITE_HORAS.text) then
           begin
           ShowMessage('Limite Maximo de horas trabalhadas por dia foi atingido ' + Dbtext4.caption + ' , Verifique !!!');
           DbEdit7.setfocus;
           end;

       End;
End;

procedure TFormLancamento.DBEdit11KeyPress(Sender: TObject; var Key: Char);
var
entrada,saida: TTime;
total:TTIME;
begin
TimeSeparator:=':';
ShortTimeFormat:='hh:mm';
if Key = #13 Then
       Begin
       Key:=#0;
       Entrada  :=StrToTime(DbEdit10.text);
       Saida    :=StrToTime(DbEdit11.text);
       if saida < entrada then
            begin
            DBText5.Caption:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            qrlancaTOTAL_4.Text:=copy(TimeToStr((Saida-Entrada)+1440),1,5);
            end
            else
            begin
            DBText5.Caption:=copy(TimeToStr(Saida-Entrada),1,5);
            qrlancaTOTAL_3.Text:=copy(TimeToStr(Saida-Entrada),1,5);
            end;
       total:=StrToTime(DbText2.caption)+StrToTime(DbText3.caption)+
       StrToTime(DbText4.caption)+StrToTime(DbText5.caption)-strToTime(EditIntervalo.Text);
       QrlancaTOTAL_GERAL.text:=copy(TimeToStr(total),1,5);
       if qrFuncionarioOPERA_VEICULO.text = 'True' then
           DbEdit12.setfocus
           else
           EditIntervalo.setfocus;
       if StrtoTime(Dbtext5.caption) > StrToTime(qrFuncionarioLIMITE_HORAS.text) then
           begin
           ShowMessage('Limite Maximo de horas trabalhadas por dia foi atingido ' + Dbtext5.caption + ' , Verifique !!!');
           DbEdit10.setfocus;
           end;

       End;
End;


procedure TFormLancamento.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       if DbEdit6.text = '' then
       begin
       dbedit9.SetFocus;
       end
       else
       begin
       QrVeiculo.Close;
       QrVeiculo.Filter:='Numero = ' + s.Caption + DbEdit6.Text + s.Caption;
       QrVeiculo.Filtered:=True;
       QrVeiculo.Open;
       if Not QrVeiculo.eof then
           begin
           DbEdit7.setfocus;
           End
           Else
           begin
           ShowMessage('Veículo não Cadastrado !');
           DbEdit6.Text:='';
           DbEdit6.SetFocus;
           End;
       Qrveiculo.Close;
       End;
      end;
end;

procedure TFormLancamento.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       If DbEdit9.Text = '' then
       Begin
       DbEdit9.setfocus;
       end
       else
       begin
       QrVeiculo.Close;
       QrVeiculo.Filter:='Numero = ' + s.Caption + DbEdit9.Text + s.Caption;
       QrVeiculo.Filtered:=True;
       QrVeiculo.Open;
       if Not QrVeiculo.eof then
           begin
           DbEdit10.setfocus;
           End
           Else
           begin
           ShowMessage('Veículo não Cadastrado !');
           DbEdit9.Text:='';
           DbEdit9.SetFocus;
           End;
       Qrveiculo.Close;
       End;
      End;
end;

procedure TFormLancamento.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 Then
       Begin
       Key:=#0;
       If DbEdit12.text = '' then
       begin
       DbEdit12.setfocus;
       end
       else
       begin
       QrVeiculo.Close;
       QrVeiculo.Filter:='Numero = ' + s.Caption + DbEdit12.Text + s.Caption;
       QrVeiculo.Filtered:=True;
       QrVeiculo.Open;
       if Not QrVeiculo.eof then
           begin
           EditIntervalo.setfocus;
           End
           Else
           begin
           ShowMessage('Veículo não Cadastrado !');
           DbEdit12.text:='';
           DbEdit12.setfocus;
            End;
       Qrveiculo.Close;
       End;
      end;
end;

procedure TFormLancamento.FormShow(Sender: TObject);
begin
qrdiretriz.Open;
if qrdiretrizINTERVALO_TIPO.Text = 'C' THEN
   BEGIN
   EditInicioIntervalo.enabled:=true;
   EditFinalIntervalo.enabled:=true;
   END;
if qrdiretrizINTERVALO_TIPO.Text = 'D' THEN
   BEGIN
   EditIntervalo.ReadOnly:=False;
   END;
qrfuncionario.Open;
EditData.caption:=' ';
end;

procedure TFormLancamento.BitBtn3Click(Sender: TObject);
begin
Qrlanca.edit;
end;

procedure TFormLancamento.EditMatriculaEnter(Sender: TObject);
begin
EDITMATRICULA.Text:=' ';
end;

procedure TFormLancamento.EditIntervaloKeyPress(Sender: TObject;
  var Key: Char);
var
total:TTIME;
begin
if Key = #13 Then
       Begin
       Key:=#0;
       TimeSeparator:=':';
       ShortTimeFormat:='hh:mm';
       total:=StrToTime(DbText2.caption)+StrToTime(DbText3.caption)+
              StrToTime(DbText4.caption)+StrToTime(DbText5.caption)-
              StrToTime(EditIntervalo.Text);
       QrlancaTOTAL_GERAL.text:=copy(TimeToStr(total),1,5);
       Btsalva.Enabled:=true;
       Btsalva.setfocus;
       End;
End;

procedure TFormLancamento.FormActivate(Sender: TObject);
begin
DATAI.TEXT:=qrdiretrizPERIODO_INICIAL.text;
DATAf.TEXT:=qrdiretrizPERIODO_final.text;
datai.setfocus;
end;

procedure TFormLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
qrlanca.close;
qrdiretriz.close;
qrfuncionario.close;
query1.close;
qrveiculo.close;
Action:=cafree;
end;

procedure TFormLancamento.EditMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
     begin
     key:=#0;
     qrfuncionario.close;
     qrfuncionario.Filter:='matricula = ' + s.caption + editmatricula.Text + s.caption;
     qrfuncionario.Filtered:=true;
     qrfuncionario.open;
     dbtext1.Visible:=true;
     dbtext7.Visible:=true;
     if qrfuncionario.Eof then
          begin
          ShowMessage('Funcionário não cadastrado no Sistema, verifique Matricula !');
          EditMatricula.setfocus;
          end
          else
          buscaclick(nil);
    end;

end;

procedure TFormLancamento.buscaClick(Sender: TObject);
var alerta:String;
begin
with query1 do
    begin
    close;
    filter:='dia_mes_ano = ' + s.caption + editdata.caption + s.caption + ' and matricula = ' + s.caption +
             editmatricula.Text + s.caption;
    filtered:=true;
    open;
    if not eof then
         begin
         if query1tipo_dia.text = 'N'  then
             alerta:='Dia Normal';
         if query1tipo_dia.text = 'A'  then
             alerta:=' * ATESTADO * ';
         if query1tipo_dia.text = 'S'  then
             alerta:='-- SUSPENSO DE ESCALA --';
         if query1tipo_dia.text = 'F'  then
             alerta:='*-*-*- FOLGA *-*-*-';
         if query1tipo_dia.text = 'T'  then
             alerta:=' +++ FALTA (PERDE DSR) +++ ';
         if query1tipo_dia.text = 'B'  then
             alerta:=' <<< ABONADO PELA GERENCIA >>> ';
         if query1tipo_dia.text = 'I'  then
             alerta:=' ### INATIVO NO PERIODO ### ';


         if messagedlg('Encontrei um lançamento para este Colaborador,'+#13+
                 'Quer alterar alguma coisa ?' + #13 + ALERTA,mtConfirmation,[mbno, mbyes],0) =mryes then
                  begin
                  QRLANCA.CLOSE;
                  QRLANCA.FILTER:= 'dia_mes_ano = ' + s.caption + editdata.caption + s.caption + ' and matricula = ' + s.caption + editmatricula.Text + s.caption;
                  QRLANCA.FILTERED:=TRUE;
                  QRLANCA.OPEN;
                  if qrlancatipo_dia.text = 'F' then
                      begin
                      status.caption:='Folga';
                      color:=clMoneyGreen;
                      end;
                  if qrlancatipo_dia.text = 'T' then
                      begin
                      status.caption:='Falta cadastrada';
                      color:=$00FFFFCE;
                      end;
                  if qrlancatipo_dia.text = 'S' then
                      begin
                      status.caption:='Suspensão';
                      color:=clCream;
                      end;
                  if qrlancatipo_dia.text = 'B' then
                      begin
                      status.caption:='Dia Abonado pela Gerencia';
                      color:=clInfoBk;
                      end;

                  if qrlancatipo_dia.text = 'I' then
                      begin
                      status.caption:='Inativo ou Afastado';
                      color:=clScrollBar;
                      end;

                  if qrlancatipo_dia.text = 'A' then
                      begin
                      status.caption:='Atestado Médico Lançado';
                      color:=$00F3A9CB;
                      end;

                  if qrlancatipo_dia.text = 'L' then
                      begin
                      status.caption:='Licença';
                      color:=clMoneyGreen;
                      end;

                  if qrlancatipo_dia.text = 'N' then
                      begin
                      Status.caption:='Lançamento Dia Normal';
                      color:=clBtnFace;
                      end;

                  if qrlancatipo_dia.text = 'R' then
                      begin
                      Status.caption:='Cadastrado como Feriado';
                      color:=clMoneyGreen;
                      end;

                  qrlanca.edit;
                  dbedit1.setfocus;
                  end
                  else
                  begin
                  dbtext1.Visible:=false;
                  dbtext7.Visible:=false;
                  bitbtn2.SetFocus;
                  //editmatricula.setfocus;
                  end;
          end
          else
          begin
          qrlanca.Open;
          Qrlanca.Insert;
          Status.caption:='Lançamento Dia Normal';
          qrlancaMatricula.text:=editmatricula.Text;
          qrlancaDIA_MES_ANO.text:=Editdata.caption;
          dbedit1.setfocus;
          end;

    end;

end;

procedure TFormLancamento.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    EditMatricula.setfocus;
  end;


if key = VK_F5 then
       Begin
         if messagedlg('Lançar como: FOLGA para este Colaborador,'+#13+
        'É isso que você quer ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='F';
              QrLancaENTRADA_1.text:='00:00';
              QrLancaENTRADA_2.text:='00:00';
              QrLancaENTRADA_3.text:='00:00';
              QrLancaENTRADA_4.text:='00:00';
              QrLancasaida_1  .text:='00:00';
              QrLancasaida_2  .text:='00:00';
              QrLancasaida_3  .text:='00:00';
              QrLancasaida_4  .text:='00:00';
              QrLancaINTERVALO.text:='00:00';
              qrlancaVEICULO_1.text:=' ';
              qrlancaVEICULO_2.text:=' ';
              qrlancaVEICULO_3.text:=' ';
              qrlancaVEICULO_4.text:=' ';
              qrlancaTOTAL_1.  text:='00:00';
              qrlancaTOTAL_2.  text:='00:00';
              qrlancaTOTAL_3.  text:='00:00';
              qrlancaTOTAL_4.  text:='00:00';
              qrlancaTOTAL_GERAL.text:='00:00';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
// CADASTRAR FALTA
if key = VK_F6 then
       Begin
         if messagedlg('FALTA (perde DSR)-  para este Colaborador,'+#13+
        'Me confirme ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='T';
              QrLancaENTRADA_1.text:='00:00';
              QrLancaENTRADA_2.text:='00:00';
              QrLancaENTRADA_3.text:='00:00';
              QrLancaENTRADA_4.text:='00:00';
              QrLancasaida_1  .text:='00:00';
              QrLancasaida_2  .text:='00:00';
              QrLancasaida_3  .text:='00:00';
              QrLancasaida_4  .text:='00:00';
              QrLancaINTERVALO.text:='00:00';
              qrlancaVEICULO_1.text:=' ';
              qrlancaVEICULO_2.text:=' ';
              qrlancaVEICULO_3.text:=' ';
              qrlancaVEICULO_4.text:=' ';
              qrlancaTOTAL_1.  text:='00:00';
              qrlancaTOTAL_2.  text:='00:00';
              qrlancaTOTAL_3.  text:='00:00';
              qrlancaTOTAL_4.  text:='00:00';
              qrlancaTOTAL_GERAL.text:='00:00';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
if key = VK_F7 then
       Begin
         if messagedlg('Atestado Médico para este dia ???,'+#13+
        'Verificou o CID',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='A';
              QrLancaENTRADA_1.text:='00:00';
              QrLancaENTRADA_2.text:='00:00';
              QrLancaENTRADA_3.text:='00:00';
              QrLancaENTRADA_4.text:='00:00';
              QrLancasaida_1  .text:='00:00';
              QrLancasaida_2  .text:='00:00';
              QrLancasaida_3  .text:='00:00';
              QrLancasaida_4  .text:='00:00';
              QrLancaINTERVALO.text:='00:00';
              qrlancaVEICULO_1.text:=' ';
              qrlancaVEICULO_2.text:=' ';
              qrlancaVEICULO_3.text:=' ';
              qrlancaVEICULO_4.text:=' ';
              qrlancaTOTAL_1.  text:='00:00';
              qrlancaTOTAL_2.  text:='00:00';
              qrlancaTOTAL_3.  text:='00:00';
              qrlancaTOTAL_4.  text:='00:00';
              qrlancaTOTAL_GERAL.text:='00:00';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;
// suspensao
if key = VK_F8 then
       Begin
         if messagedlg('Suspensão, (Não Perde DSR),'+#13+
        'Foi suspenso ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='S';
              QrLancaENTRADA_1.text:='00:00';
              QrLancaENTRADA_2.text:='00:00';
              QrLancaENTRADA_3.text:='00:00';
              QrLancaENTRADA_4.text:='00:00';
              QrLancasaida_1  .text:='00:00';
              QrLancasaida_2  .text:='00:00';
              QrLancasaida_3  .text:='00:00';
              QrLancasaida_4  .text:='00:00';
              QrLancaINTERVALO.text:='00:00';
              qrlancaVEICULO_1.text:=' ';
              qrlancaVEICULO_2.text:=' ';
              qrlancaVEICULO_3.text:=' ';
              qrlancaVEICULO_4.text:=' ';
              qrlancaTOTAL_1.  text:='00:00';
              qrlancaTOTAL_2.  text:='00:00';
              qrlancaTOTAL_3.  text:='00:00';
              qrlancaTOTAL_4.  text:='00:00';
              qrlancaTOTAL_GERAL.text:='00:00';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;

if key = VK_F9 then
       Begin
         if messagedlg('Abonado Pela Gerência,'+#13+
        'Certeza ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text:='B';
              QrLancaENTRADA_1.text:='00:00';
              QrLancaENTRADA_2.text:='00:00';
              QrLancaENTRADA_3.text:='00:00';
              QrLancaENTRADA_4.text:='00:00';
              QrLancasaida_1  .text:='00:00';
              QrLancasaida_2  .text:='00:00';
              QrLancasaida_3  .text:='00:00';
              QrLancasaida_4  .text:='00:00';
              QrLancaINTERVALO.text:='00:00';
              qrlancaVEICULO_1.text:=' ';
              qrlancaVEICULO_2.text:=' ';
              qrlancaVEICULO_3.text:=' ';
              qrlancaVEICULO_4.text:=' ';
              qrlancaTOTAL_1.  text:='00:00';
              qrlancaTOTAL_2.  text:='00:00';
              qrlancaTOTAL_3.  text:='00:00';
              qrlancaTOTAL_4.  text:='00:00';
              qrlancaTOTAL_GERAL.text:='00:00';
              BtSalva.Enabled:=true;
              BtSalva.SetFocus;
              End
              Else begin
              DbEdit1.SetFocus;
              End;
      End;

if key = VK_F10 then
       Begin
         if messagedlg('Alterar Lançamento para dia NORMAL,'+#13+
        'É isso que você quer ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
              QrLancaTIPO_DIA.Text :='N';
              QrLancaENTRADA_1.text:='00:00';
              QrLancaENTRADA_2.text:='00:00';
              QrLancaENTRADA_3.text:='00:00';
              QrLancaENTRADA_4 .text:='00:00';
              QrLancasaida_1   .text:='00:00';
              QrLancasaida_2   .text:='00:00';
              QrLancasaida_3   .text:='00:00';
              QrLancasaida_4   .text:='00:00';
              QrLancaINTERVALO .text:='00:00';
              qrlancaVEICULO_1 .text:=' ';
              qrlancaVEICULO_2 .text:=' ';
              qrlancaVEICULO_3 .text:=' ';
              qrlancaVEICULO_4 .text:=' ';
              qrlancaTOTAL_1.   text:='00:00';
              qrlancaTOTAL_2.   text:='00:00';
              qrlancaTOTAL_3.   text:='00:00';
              qrlancaTOTAL_4.   text:='00:00';
              qrlancaTOTAL_GERAL.text:='00:00';
              dbEDIT1.setfocus;
              BtSalva.SetFocus;
              End
              Else begin
              BitBtn2.SetFocus;
              End;
      End;

end;

procedure TFormLancamento.DATAIEnter(Sender: TObject);
begin
color:=clBtnFace;

end;

procedure TFormLancamento.DATAFEnter(Sender: TObject);
begin
color:=clBtnFace;

end;

procedure TFormLancamento.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    DbEdit2.setfocus;
  end;


end;

procedure TFormLancamento.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    DbEdit5.setfocus;
  end;


end;

procedure TFormLancamento.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Dbedit8.setfocus;
  end;


end;

procedure TFormLancamento.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.EditIntervaloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Dbedit1.Setfocus;
  end;


end;

procedure TFormLancamento.EditInicioIntervaloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    DbEdit1.setfocus;
  end;

end;

procedure TFormLancamento.EditInicioIntervaloKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   EditFinalIntervalo.SetFocus;
   end;
end;

procedure TFormLancamento.EditFinalIntervaloKeyPress(Sender: TObject;
  var Key: Char);
VAR
CAUCULO:TTIME;
total:TTIME;
  begin
IF KEY = #13 THEN
   BEGIN
   Key:=#0;
   CAUCULO:=STRTOTIME(EDITFINALINTERVALO.TEXT) -  STRTOTIME(EDITINICIOINTERVALO.TEXT);
   EDITINTERVALO.TEXT:=COPY(TIMETOSTR(CAUCULO),1,5);
   Key:=#0;
    TimeSeparator:=':';
    ShortTimeFormat:='hh:mm';
    total:=StrToTime(DbText2.caption)+StrToTime(DbText3.caption)+
           StrToTime(DbText4.caption)+StrToTime(DbText5.caption)-
           StrToTime(EditIntervalo.Text);
    QrlancaTOTAL_GERAL.text:=copy(TimeToStr(total),1,5);
    if StrToTime(EditIntervalo.text) > strtoTime(qrFuncionarioREDUCAO_INTERVALO.text) then
          begin
          if messagedlg('Intervalo Excede Programado,'+#13+
        'Corrigir ?',mtConfirmation,[mbno, mbyes],0)
         =mryes then
             begin
             EditInicioIntervalo.setfocus;
             end;
         end
         else
         begin
         Btsalva.Enabled:=true;
         Btsalva.setfocus;
         end;
    End;
end;

procedure TFormLancamento.EditFinalIntervaloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    EditInicioIntervalo.setfocus;
  end;

end;

procedure TFormLancamento.btsalvaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    btsalva.enabled:=false;
    Perform(WM_NextDlgCtl,2,0);
  end;


end;

procedure TFormLancamento.JvTransparentButton1Click(Sender: TObject);
begin
qrlanca.Cancel;
QrVeiculo.close;
Query1.close;
QrFuncionario.Close;
QrLanca.close;
QrDiretriz.close;
Close;
end;

end.




