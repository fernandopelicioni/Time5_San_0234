unit TelaRelatorioExterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFormRelatorioExterno = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Query1: TQuery;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
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
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    letreiro: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    Query2: TQuery;
    Query2Sequencial: TIntegerField;
    Query2JORNADA_MAXIMA: TStringField;
    Query2INICIO_ADCIONAL: TStringField;
    Query2FIM_ADCIONAL: TStringField;
    Query2INTERVALO_TIPO: TStringField;
    Query2COM_PRIMEIRA: TDateField;
    Query2COM_SEGUNDA: TDateField;
    Query2COM_TERCEIRA: TDateField;
    Query2COM_QUARTA: TDateField;
    Query2COM_QUINTA: TDateField;
    Query2PERIODO_INICIAL: TDateField;
    Query2PERIODO_FINAL: TDateField;
    Table1: TTable;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    Query1Matricula: TStringField;
    Query1Sequencial: TIntegerField;
    Query1DIA_MES_ANO: TDateField;
    Query1VEICULO_1: TStringField;
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
    Query1TIPO_DIA: TStringField;
    Query1INTERVALO: TStringField;
    Query1MATRICULA_1: TStringField;
    Query1FUNCAO: TStringField;
    Query1OPERAVEICULO: TBooleanField;
    Query1Nome: TStringField;
    Query1SITUACAO: TStringField;
    Query1INATIVO_INICIO: TDateField;
    Query1INATIVO_FIM: TDateField;
    Query1CODIGO: TStringField;
    Query1DESCRICAO: TStringField;
    Query1HORA_DIARIA: TStringField;
    Query1COMPESA: TBooleanField;
    Query1OPERA_VEICULO: TBooleanField;
    Query1REDUCAO_INTERVALO: TStringField;
    Query1LIMITE_HORAS: TStringField;
    QRLabel2: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    limpatela: TQRLabel;
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
     ChapaI:integer;
     ChapaF:integer;
     ExtraPrimeiraSemana,ExtraSegundaSemana,ExtraTerceiraSemana,ExtraQuartaSemana,ExtraQuintaSemana:tTime;
     extraacumuladacompensa, extraacumuladanaocompensa:real;
     compensa:string;
     HORA,MINUTO:WORD;

    { Public declarations }
  end;

var
  FormRelatorioExterno: TFormRelatorioExterno;
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

uses TelaLanca2, TelaDados;

{$R *.dfm}

procedure TFormRelatorioExterno.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);

 begin
ExtraPrimeiraSemana:=0;
ExtraSegundaSemana:=0;
ExtraTerceiraSemana:=0;
ExtraQuartaSemana:=0;
extraacumuladacompensa:=0;
extraacumuladanaocompensa:=0;
ExtraQuintaSemana:=0;
minuto:=0;
hora:=0;

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

procedure TFormRelatorioExterno.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var horaextralinha: ttime;
varsimples: string;
tipodia:string[1];
precisalimpar2semana,precisalimpar3semana,precisalimpar4semana:string;
begin
  query1.refresh;
  QrLabel25.caption :=' ';
  QrLabel20.caption :=' ';
  QrLabel16.caption :=' ';
  LETREIRO.CAPTION  :=' ';
  Tipodia           :=query1tipo_dia.text;
  Compensa          :=Query1COMPESA.text;
  HoraExtraLinha    :=strtotime(Query1TOTAL_GERAL.text) - strtoTime(Query1HORA_DIARIA.text);

if horaextralinha > 0 then
    begin
    qrlabel20.Caption:='+' + copy(timetostr(horaextralinha),1,5);
    end;
if horaextralinha < 0 then
    begin
    qrlabel20.Caption:='-' + copy(timetostr(horaextralinha),1,5);
    end;

if horaextralinha = 0 then
    begin
    qrlabel20.Caption:='0:00';
    end;

if (tipodia <> 'N') and (tipodia <> 'R') then
     QrLabel20.caption:='0:00';

// se nao compensa compensar
if (compensa = 'False') and ((Query1TIPO_DIA.Text = 'N') or (Query1TIPO_DIA.Text = 'R')) then
     Begin
     if HoraExtraLinha > 0 then
          begin
          varsimples:=timetostr(horaextralinha);
          extraacumuladaNaoCompensa:=ExtraAcumuladaNaoCompensa + StrToInt(copy(varsimples,1,2)) + (StrtoInt(copy(varsimples,4,2))/60);
          end;
     end;

 // se Compensar devo caucular entre a semanas da compensacao especificada na seçao diretriz do sistema
if (compensa = 'True') and ((Query1TIPO_DIA.Text = 'N') or (Query1TIPO_DIA.Text = 'R')) then
     Begin
     // Primeira semana
     if (StrToDate(Query1DIA_MES_ANO.text) >= StrtoDate(Query2Com_Primeira.text)) and (StrToDate(Query1DIA_MES_ANO.text) < StrToDate(Query2COM_SEGUNDA.text)) then
           begin
           ExtraPrimeiraSemana:=ExtraPrimeiraSemana+ HoraExtraLinha;
           end;
     // Caucula COmpensacao segunda semana
     if (StrToDate(Query1DIA_MES_ANO.text) >= StrtoDate(Query2COM_SEGUNDA.text)) and
                      (StrToDate(Query1DIA_MES_ANO.text) < StrToDate(Query2COM_Terceira.text)) then
           begin
           ExtraSegundaSemana:=ExtraSegundaSemana+ HoraExtraLinha;
           end;

     // Caucula COmpensacao Terceira semana
     if (StrToDate(Query1DIA_MES_ANO.text) >= StrtoDate(Query2COM_Terceira.text)) and
                      (StrToDate(Query1DIA_MES_ANO.text) < StrToDate (Query2COM_Quarta.text)) then
           begin
           ExtraTerceiraSemana:=ExtraTerceiraSemana+ HoraExtraLinha;
           end;
     // Caucula COmpensacao Quarta semana
     if (StrToDate(Query1DIA_MES_ANO.text) >= StrtoDate(Query2COM_Quarta.text)) and
                      (StrToDate(Query1DIA_MES_ANO.text) < StrToDate (Query2COM_Quinta.text)) then
           begin
           ExtraQuartaSemana:=ExtraQuartaSemana+ HoraExtraLinha;
           end;

     // Caucula COmpensacao Quinta semana
     if (StrToDate(Query1DIA_MES_ANO.text) >= StrtoDate(Query2COM_Quinta.text)) and
                      (StrToDate(Query1DIA_MES_ANO.text) < StrToDate (Query2PERIODO_FINAL.text)) then
           begin
           ExtraQuintaSemana:=ExtraQuintaSemana+ HoraExtraLinha;
           end;
     end;
     // aqui escreve limite de semanas com subTotais
     if StrToDate(Query1DIA_MES_ANO.text) = (StrToDate(Query2COM_SEGUNDA.text)-1) then
          begin
          QrLabel25.caption:='------------------------------';
          if extraprimeirasemana > 0 then
              qrlabel16.caption:=copy(TimeToStr(ExtraPrimeiraSemana),1,5)
              else
              qrlabel16.caption:='00:00';
          end;
     if StrToDate(Query1DIA_MES_ANO.text) = (StrToDate(Query2COM_terceira.text)-1) then
          begin
          QrLabel25.caption:='------------------------------';
          if ExtraSegundaSemana > 0 then
              qrlabel16.caption:=copy(TimeToStr(ExtraSegundaSemana),1,5)
              else
              QrLabel16.caption:='00:00';
          end;
     if StrToDate(Query1DIA_MES_ANO.text) = (StrToDate(Query2COM_quarta.text)-1) then
          begin
          QrLabel25.caption:='------------------------------';
          If ExtraterceiraSemana > 0 Then
             qrlabel16.caption:=copy(TimeToStr(ExtraTerceiraSemana),1,5)
             else
              QrLabel16.caption:='00:00';

          end;
     if StrToDate(Query1DIA_MES_ANO.text) = (StrToDate(Query2COM_Quinta.text)-1) then
          begin
          QrLabel25.caption:='------------------------------';
          If ExtraQuartaSemana > 0 Then
              qrlabel16.caption:=copy(TimeToStr(ExtraQuartaSemana),1,5)
              Else
              QrLabel16.caption:='00:00';

          end;
     if StrToDate(Query1DIA_MES_ANO.text) = (StrToDate(Query2Periodo_Final.text)) then
          begin
          QrLabel25.caption:='------------------------------';
          If ExtraQuintaSemana > 0 then
              qrlabel16.caption:=copy(TimeToStr(ExtraQuintaSemana),1,5)
              Else
              QrLabel16.caption:='00:00';

     end;


IF TIPODIA = 'N' THEN
         LETREIRO.CAPTION:=' ' ;
IF TIPODIA = 'F' THEN
         LETREIRO.CAPTION:=' ## FOLGA ##                                                                   ## FOLGA ##                                                                             ' + QUERY1HORA_DIARIA.TEXT + '    ';
IF TIPODIA = 'L' THEN
         LETREIRO.CAPTION:='                                     --- FALTA REGISTRADA ---                                             FALTA                                                                   ' ;
IF TIPODIA = 'I' THEN
         LETREIRO.CAPTION:='                                 INATIVO PROVISORIAMENTE NESTA DATA                                                                                                               ' ;
IF TIPODIA = 'B' THEN
         LETREIRO.CAPTION:='                     :::: ABONADO PELA GERENCIA ::::                    07:20                                                   07:20                                             ' ;
IF TIPODIA = 'A' THEN
         LETREIRO.CAPTION:='                                 ++++ ATESTADO ++++                                                                                                            07:20              ' ;
IF TIPODIA = 'R' THEN
         LETREIRO.CAPTION:='*FERIADO' ;
IF TIPODIA = 'S' THEN
         LETREIRO.CAPTION:='                                          +=+=+=+   ADVERTIDO COM SUSPENSAO     +=+=+=+                                                                                           ';

IF (QUERY1TIPO_DIA.TEXT = 'R') OR (QUERY1TIPO_DIA.TEXT = 'N') THEN
     BEGIN
//     hora:=StrToInt(copy(Query1TOTAL_GERAL.TEXT,1,2)) ;
     HORA:=hora+StrToInt(copy(Query1TOTAL_GERAL.TEXT,1,2));
     minuto:= minuto+strtoInt(copy(Query1TOTAL_GERAL.text,4,2));
     end;
decimalSeparator:=':';
qrlabel26.caption:=FormatFloat('00.00',hora+(minuto/60));
decimalSeparator:=',';
PrecisaLimpar2Semana:=Query1ENTRADA_2.text;
PrecisaLimpar3Semana:=Query1ENTRADA_3.text;
PrecisaLimpar4Semana:=Query1ENTRADA_4.text;
//PrecisaLimpar2Semana:=Query1ENTRADA_4.text;
LIMPATELA.CAPTION:=' ';

if precisaLimpar3semana = '00:00' then
    begin
    with limpatela do
         begin
         left:=405;
         caption:='                                                                           ';

         end
    end;
if precisaLimpar4semana = '00:00' then
    begin
    with limpatela do
         begin
         left:=542;
         caption:='                    ';
         end
    end;
if precisaLimpar3semana = '00:00' then
    begin
    with limpatela do
         begin
         left:=405;
         caption:='                                 ';

         end
    end;
if precisaLimpar2semana = '00:00' then
    begin
    with limpatela do
         begin
         left:=262;
         caption:='                                                  ';
         end;
    END;


end;

procedure TFormRelatorioExterno.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if ExtraAcumuladaCompensa > 0 then
     qrlabel12.caption:=FormatFloat('#0.00',ExtraAcumuladaCompensa);
if ExtraAcumuladaNaoCompensa > 0 then
     qrlabel12.caption:=FormatFloat('#0.00',ExtraAcumuladaNaoCompensa);

qrlabel12.caption:=FormatFloat('#0.00',hora+(minuto/60));
if compensa = 'False' then
        QrLabel21.Caption:=FormatFloat('#0.00',ExtraAcumuladaNaoCOmpensa);
if compensa = 'True' then
        QrLabel21.Caption:=FormatFloat('#0.00',ExtraAcumuladaNaoCOmpensa);

// aqui eu apago as jornadas que não possuem lancamentos para nao aparecer 00:00 e economizar toner;

end;

end.





