unit TelaRelatorioInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFormRelatorioInterno = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Query1: TQuery;
    QRBand2: TQRBand;
    Query1Matricula: TStringField;
    Query1Seq: TIntegerField;
    Query1ENTRADA: TStringField;
    Query1INICIO_INTERVALO: TStringField;
    Query1FIM_INTERVALO: TStringField;
    Query1SAIDA: TStringField;
    Query1TOTAL: TStringField;
    Query1TIPO_DIA: TStringField;
    Query1Total_intervalo: TStringField;
    Query1MATRICULA_1: TStringField;
    Query1FUNCAO: TStringField;
    Query1OPERAVEICULO: TBooleanField;
    Query1Nome: TStringField;
    Query1SITUACAO: TStringField;
    Query1CODIGO: TStringField;
    Query1DESCRICAO: TStringField;
    Query1HORA_DIARIA: TStringField;
    Query1COMPESA: TBooleanField;
    Query1OPERA_VEICULO: TBooleanField;
    Query1REDUCAO_INTERVALO: TStringField;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    letreiro: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText6: TQRDBText;
    Query2: TQuery;
    Query2Sequencial: TIntegerField;
    Query2JORNADA_MAXIMA: TStringField;
    Query2INICIO_ADCIONAL: TStringField;
    Query2FIM_ADCIONAL: TStringField;
    Query1DIA_MES_ANO: TDateField;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    Query2INTERVALO_TIPO: TStringField;
    Query2COM_PRIMEIRA: TDateField;
    Query2COM_SEGUNDA: TDateField;
    Query2COM_TERCEIRA: TDateField;
    Query2COM_QUARTA: TDateField;
    Query2COM_QUINTA: TDateField;
    QRLabel26: TQRLabel;
    Query2PERIODO_INICIAL: TDateField;
    Query2PERIODO_FINAL: TDateField;
    Table1: TTable;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
     ChapaI:integer;
     ChapaF:integer;

    { Public declarations }
  end;

var
  FormRelatorioInterno: TFormRelatorioInterno;
  pegahora:string;
  compensacao:string[1];
  horas:tTime;
  horareal:real;
  SOMAHORA:INTEGER;
  HORAPARASOMA,HORASOMAT:TTIME;
  totExtraH,TotExtraM:word;
  varextra:TTime;
  TOTHORAS1,TOTHORAS2,TOTHORAS3,TOTHORAS4,TOTHORAS5,SEM1,SEM2,SEM3,SEM4,SEM5:TTIME;
implementation

uses TelaLanca2, TelaDados, TelaLogaUsuario;

{$R *.dfm}

procedure TFormRelatorioInterno.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
HOUR,MIM,SEC,MSEC :WORD;
TT,MM,shora,xmim,smim,ssec,smsec:word;
TTT:TTIME;
begin
mm:=0;
tt:=0;
timeSeparator:=':';
ShortTimeFormat:='hh:mm';
qrlabel12.caption:=qrlabel16.caption;
decodeTime(varextra,hour,mim, sec,msec);
// CHECA SE ESSA FUNCAO ESTA HABILITADA PARA COMPENSANCAO
// TOT ABAIXO E TOTAL POR SEMANA, SE FICAR NEGATIVO, NAO PODE SER TRANSPORTADO P/ PROX SEMANA
if TotHoras1 < 0 then
     TotHoras1:=0;
if TotHoras2 < 0 then
     TotHoras2:=0;
if TotHoras3 < 0 then
     TotHoras3:=0;
if TotHoras4 < 0 then
     TotHoras4:=0;
if TotHoras5 < 0 then
     TotHoras5:=0;
decodeTime(TotHoras1,shora,smim,ssec,smsec);
TT:=SHORA;
MM:=MM+SMIM;
decodeTime(TotHoras2,shora,smim,ssec,smsec);
TT:=TT+SHORA;
MM:=MM+SMIM;
decodeTime(TotHoras3,shora,smim,ssec,smsec);
TT:=TT+SHORA;
MM:=MM+SMIM;
decodeTime(TotHoras4,shora,smim,ssec,smsec);
TT:=TT+SHORA;
MM:=MM+SMIM;
decodeTime(TotHoras5,shora,smim,ssec,smsec);
TT:=TT+SHORA;
MM:=MM+SMIM;
TTT:=TOTHORAS1+TOTHORAS2+TOTHORAS3+TOTHORAS4+TOTHORAS5;
decodeTime(ttt,shora,smim,ssec,smsec);
if ttt > StrToTime('23:59:59') then
      shora:=shora+24;
if compensacao = 'S' then
//      Qrlabel21.caption:=TimeTostr(ttt)
      Qrlabel21.caption:=IntToStr(shora) + ':' + FormatFloat('00',smim)
      else
      begin
      QrLabel21.caption:=IntToStr(TotExtraH + (TotExtraM * 60 Div 3600))+ ':' + FormatFloat('00',Mim);
      end;
end;
/////////////////////////////////////////////////////////////////////////////
procedure TFormRelatorioInterno.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
hour1,HOUR,MIM,SEC,MSEC :WORD;
hour2,MIM2,SEC2,MSEC2 :WORD;
extra : Ttime;
dia,dia1,mes,mes1,ano,ano1:word;
begin
timeSeparator:=':';
ShortTimeFormat:='hh:mm';
QrLabel26.caption:=' ';
PegaHora:=Copy(Query1TOTAL.Text,1,5);
HORAPARASOMA:=STRTOTIME(PEGAHORA);
horas:=Horas+StrToTime(PegaHora);
if (Query1TIPO_DIA.Text <> 'N') and (Query1TIPO_DIA.Text <> 'F') AND (Query1TIPO_DIA.Text <> 'R') then
       begin
       HoraParaSoma:=StrToTime(Query1HORA_DIARIA.Text);
       Horas:=StrToTime(Query1HORA_DIARIA.Text);
       if Query1TIPO_DIA.Text = 'T' then
            letreiro.caption:='Falta              '+ Query1HORA_DIARIA.Text +'           Falta           ';
       if Query1TIPO_DIA.Text = 'S' then
            letreiro.caption:='Suspensão              '+ Query1HORA_DIARIA.Text +'           Suspensão ';
       if Query1TIPO_DIA.Text = 'A' then
            letreiro.caption:='Atestado               '+ Query1HORA_DIARIA.Text +'           Atestado  ';
       if Query1TIPO_DIA.Text = 'R' then
            letreiro.caption:='* - Feriado';
       if Query1TIPO_DIA.Text = 'B' then
            letreiro.caption:='Abonado pela Gerência  '+ Query1HORA_DIARIA.Text +'           Abonado   ';
       End
       Else begin
            Letreiro.caption:='';
            end;


if Query1TIPO_DIA.Text = 'R' then
       letreiro.caption:='* - Feriado';

If Query1TIPO_DIA.Text = 'F' then
       Letreiro.caption:='Folga Semanal                                          ';
if Query1TIPO_DIA.Text = 'I' then
        BEGIN
       letreiro.caption:='Afastado OU Inativo                                               ';
       HoraParaSoma:=0;
       Horas:=0;
       END;
DECODETIME(HORAPARASOMA,HOUR,MIM,SEC,MSEC);
SOMAHORA:=SOMAHORA+HOUR;
HORASOMAT:=HORASOMAT+HORAPARASOMA;
DECODETIME(HORASOMAT,HOUR,MIM,SEC,MSEC);
qrlabel16.caption:=FormatFloat('#0',somahora)+':'+FormatFloat('00',mim);
//VERIFICA SE A HORA TOTAL E MENOR QUE JORNADA PREVISTA
//if StrToTime(Query1TOTAL.text) >= StrToTime(Query1HORA_DIARIA.text) THEN
//     BEGIN
extra:=0;
if (Query1TIPO_DIA.Text = 'N') OR (Query1TIPO_DIA.Text = 'R')  then
       Extra:= StrToTime(Query1TOTAL.text) - StrToTime(Query1HORA_DIARIA.text);
if (Query1TIPO_DIA.Text = 'F') then
       Extra:= 0;
if Query1COMPESA.Text = 'True' then
     Compensacao:='S'
     else
     Compensacao:='N';
if extra < 0 then begin
//   if Query1TIPO_DIA.Text <> 'I' then
//      begin
      QrLabel20.caption     :='-'+Copy(TimeToStr(Extra),1,5);
      end
      else begin
      if extra > 0 then
            begin
            VarExtra              :=VarExtra+Extra;
            DecodeTime            (Extra,hour2,Mim2,sec2,mSec2);
            TotExtraM             := TotExtraM + Mim2;
            TotExtraH             := TotExtraH + Hour2;
            QrLabel20.caption     :='+'+Copy(TimeToStr(Extra),1,5)
            end
            else
            begin
            qrlabel20.caption     :='00:00';
            end;
//      End;
      end;

QrLabel25.caption:=' ';
// Aqui verifica se é o ultimo dia da semana para exibir sub-total
//Primeira semana
IF (StrToDate(Query1DIA_MES_ANO.TEXT) >= StrToDate(Query2COM_PRIMEIRA.TEXT)) and (StrToDate(Query1DIA_MES_ANO.TEXT) < StrToDate(Query2COM_Segunda.TEXT)) THEN
           begin
           totHoras1  :=TotHoras1+Extra;
           Extra:=0;
           if StrToDate(Query1Dia_Mes_Ano.Text) = (StrToDate(Query2Com_segunda.Text)-1) Then
                  begin
                  if tothoras1 < 0 then
                       Qrlabel25.caption:='0:00'
                       else
                       QrLabel25.caption:=Copy(TimeToStr(TotHoras1),1,5);
                  Qrlabel26.caption:='-------------------------';
                  End;
           End;

//Segunda Semana
IF (StrToDate(Query1DIA_MES_ANO.TEXT) >= StrToDate(Query2COM_Segunda.TEXT)) and (StrToDate(Query1DIA_MES_ANO.TEXT) < StrToDate(Query2COM_Terceira.TEXT)) THEN
           begin
           totHoras2  :=TotHoras2+Extra;
           Extra:=0;
           if StrToDate(Query1Dia_Mes_Ano.Text) = (StrToDate(Query2Com_Terceira.Text)-1) Then
                  begin
                  if tothoras2 < 0 then
                       Qrlabel25.caption:='0:00'
                       else
                       QrLabel25.caption:=Copy(TimeToStr(TotHoras2),1,5);
                  Qrlabel26.caption:='-------------------------';
                  End;
           End;
//terceira semana
IF (StrToDate(Query1DIA_MES_ANO.TEXT) >= StrToDate(Query2COM_terceira.TEXT)) and (StrToDate(Query1DIA_MES_ANO.TEXT) < StrToDate(Query2COM_Quarta.TEXT)) THEN
           begin
           totHoras3  :=TotHoras3+Extra;
           Extra:=0;
           if StrToDate(Query1Dia_Mes_Ano.Text) = (StrToDate(Query2Com_quarta.Text)-1) Then
                  begin
                  if tothoras3 < 0 then
                       Qrlabel25.caption:='0:00'
                       else
                  QrLabel25.caption:=Copy(TimeToStr(TotHoras3),1,5);
                  Qrlabel26.caption:='-------------------------';
                  End;
           End;
// Quarta Semana
IF (StrToDate(Query1DIA_MES_ANO.TEXT) >= StrToDate(Query2COM_Quarta.TEXT)) and (StrToDate(Query1DIA_MES_ANO.TEXT) < StrToDate(Query2COM_Quinta.TEXT)) THEN
           begin
           totHoras4  :=TotHoras4+Extra;
           Extra:=0;
           if StrToDate(Query1Dia_Mes_Ano.Text) = (StrToDate(Query2Com_quinta.Text)-1) Then
                  begin
                  if tothoras4 < 0 then
                       Qrlabel25.caption:='0:00'
                       else
                       QrLabel25.caption:=Copy(TimeToStr(TotHoras4),1,5);
                  Qrlabel26.caption:='-------------------------';
                  End;
           End;
//Quinta Semana;
IF (StrToDate(Query1DIA_MES_ANO.TEXT) >= StrToDate(Query2COM_Quinta.TEXT))  THEN
           begin
           totHoras5  :=TotHoras5+Extra;
           Extra:=0;
           if sTRtODate(Query1Dia_Mes_Ano.Text) = (StrToDate(Query2PERIODO_FINAL.Text)) Then
                  begin
                  if tothoras5 < 0 then
                       Qrlabel25.caption:='0:00'
                      else
                      QrLabel25.caption:=Copy(TimeToStr(TotHoras5),1,5);
                  Qrlabel26.caption:='-------------------------';
                  End;
           End;

end;

procedure TFormRelatorioInterno.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
SomaHora:=0;
Horas:=0;
VarExtra:=0;
TotExtraH:=0;
Tothoras1:=0;
Tothoras2:=0;
Tothoras3:=0;
Tothoras4:=0;
Tothoras5:=0;
TotExtraM:=0;
TotExtrah:=0;
HORASOMAT:=0;
end;

procedure TFormRelatorioInterno.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
QrLabel3.caption:='Versão : ' + formUsuario.versao;
end;

end.
