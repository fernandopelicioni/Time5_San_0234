unit UnitPai;

interface

uses
  SysUtils, Classes, DB, ADODB, ImgList, Controls, Menus, DateUtils;

type
  TPai = class(TDataModule)
    Genoma: TADOConnection;
    QrPtoMov: TADOQuery;
    QrColigadas: TADOQuery;
    Qrusuarios: TADOQuery;
    QrTipoDia: TADOQuery;
    QrJornadas: TADOQuery;
    QrCadastroEventos: TADOQuery;
    QrPeriodos: TADOQuery;
    QrCadastraPeriodos: TADOQuery;
    ImageList1: TImageList;
    BalloonHint1: TBalloonHint;
    QrCompensacao: TADOQuery;
    QrEventos: TADOQuery;
    QrMovDisp: TADOQuery;
    QrCadastroFuncoes: TADOQuery;
    QrPerfilFuncao: TADOQuery;
    QrPeriodoAtivo: TADOQuery;
    SqlMov: TADOQuery;
    PopupMenu1: TPopupMenu;
    InserirMov1: TMenuItem;
    PegaPtoMov1: TMenuItem;
    QrInc: TADOQuery;
    InserirJor1: TMenuItem;
    ImageList2: TImageList;
    QrHorarios: TADOQuery;
    QrLinhas: TADOQuery;
    QrGpsHorarios: TADOQuery;
    QrTiposOperacao: TADOQuery;
    QrItinerarios: TADOQuery;
    QrVeiculos: TADOQuery;
    QrParams: TADOQuery;
    QrPerfilFuncaoTFU_COD: TSmallintField;
    QrPerfilFuncaoTFU_DES: TWideStringField;
    QrPerfilFuncaoTFU_ATIVO: TWideStringField;
    QrPerfilFuncaoTFU_HORA: TWideStringField;
    QrPerfilFuncaoTFU_LOCAL: TWideStringField;
    QrPerfilFuncaoTFU_INI: TWideStringField;
    QrPerfilFuncaoTFU_FIM: TWideStringField;
    QrPerfilFuncaoTFU_ITI: TWideStringField;
    QrPerfilFuncaoTFU_ITF: TWideStringField;
    QrPerfilFuncaoTFU_COPIAR: TWideStringField;
    QrPerfilFuncaoTFU_INTERVALOMANUAL: TWideStringField;
    QrPerfilFuncaoTFU_HORALIMITE: TWideStringField;
    QrPerfilFuncaoTFU_DIAS: TWordField;
    QrFuncoes: TADOQuery;
    QrPerfilFuncaoTFU_CONSISTE: TWideStringField;
    QrPerfilFuncaoTFU_EDITALOCAL: TWideStringField;
    QrPerfilFuncaoTFU_ITP: TWideStringField;
    QrPerfilFuncaoTFU_CHECK: TWideStringField;
    QrProventos: TADOQuery;
    QrImgPessoa: TADOQuery;
    Corpore: TADOConnection;
    QrImgPessoaID: TIntegerField;
    QrImgPessoaCODSISTEMA: TStringField;
    QrImgPessoaIMAGEM: TBlobField;
    QrImgPessoaRECCREATEDBY: TStringField;
    QrImgPessoaRECCREATEDON: TDateTimeField;
    QrImgPessoaRECMODIFIEDBY: TStringField;
    QrImgPessoaRECMODIFIEDON: TDateTimeField;
    QrPerfilFuncaoTFU_COMPENSACAO: TWideStringField;
    QrPerfilFuncaoTFU_HORREF: TSmallintField;
    QrTemp1: TADOQuery;
    QrDadosEscala: TADOQuery;
    QrDadosEscalaPim_Data: TStringField;
    QrDadosEscalaPIM_CODBSE: TWideStringField;
    QrDadosEscalaChapa: TIntegerField;
    QrDadosEscalaCodPro: TSmallintField;
    QrDadosEscalaPim_Linha: TWideStringField;
    QrDadosEscalaPerfil: TSmallintField;
    QrDadosEscalaPim_Entrada: TStringField;
    QrDadosEscalaEntrada_Ref: TIntegerField;
    QrDadosEscalaPim_Iti: TStringField;
    QrDadosEscalaPim_Itf: TStringField;
    QrDadosEscalaIntervalo_Ref: TIntegerField;
    QrDadosEscalaPim_Saida: TStringField;
    QrDadosEscalaSaida_Ref: TIntegerField;
    QrDadosEscalaSaldo_Ref: TIntegerField;
    QrDadosEscalaIntervalo: TStringField;
    QrDadosEscalaNome: TWideStringField;
    QrDadosEscalaSemi: TADOQuery;
    StringField1: TStringField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    WideStringField2: TWideStringField;
    SmallintField2: TSmallintField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    WideStringField3: TWideStringField;
    QrDadosEscalaSemiVeiculo: TWideStringField;
    QrDadosEscalaVeiculo: TWideStringField;
    QrDadosEscalaSemiNumeroVeiculo: TIntegerField;
    QrDadosEscalaNumeroVeiculo: TIntegerField;
    QrDepto: TADOQuery;
    QrPerfilFuncaoTFU_INTERVALOJORNADAS: TWideStringField;
    QrPerfilFuncaoTFU_SEMREF: TSmallintField;
    QrPerfilFuncaoTFU_SECAO: TWordField;
    QrPerfilFuncaoTFU_MSCARTAO: TWideStringField;
    QrPerfilFuncaoTFU_INTMIN: TWideStringField;
    QrPerfilFuncaoTFU_INTMAX: TWideStringField;
    procedure QrColigadasAfterOpen(DataSet: TDataSet);
    procedure InserirMov1Click(Sender: TObject);
    procedure PegaPtoMov1Click(Sender: TObject);
    function GeraSeq(codigo: string): integer;
    function GeraRef(codigo: string): integer;
    procedure InserirJor1Click(Sender: TObject);
    function GeraSaldo(Entrada: string; saida:string; intervalo: string) : string;
    function HoraExtra(Jornada: string; Saldo: String ): integer;
    procedure EventosBasicos(Sender: TObject);
    Procedure HoraExtra_Modelo1(Sender:TObject);
    PROCEDURE LIMPATB(SENDER:TOBJECT);
//    FUNCTION  CalculaAdcionalDia(Hi1,hf1entradaREF:integer; saidaREF:integer):integer;
    Function CalculaAdcionalDia(Hi1:String; Hf1:string; Hi2:string ;Hf2:string; Hi3:string ;Hf3:string;Hi4:string ;Hf4:string; Hi5:string ;Hf5:string): Integer;
    PROCEDURE CALCULAHN(SENDER: TOBJECT);
    Procedure CalculaHoraDevida(Sender: TObject);
    Procedure SomaArticularidade(Sender: TObject);
    Procedure CalculaDSR(Sender: TObject);
    Procedure HoraExtra_Modelo2(Sender:Tobject);
    procedure HoraExtra_Mod3;
    Procedure SomaSeletividade;
    Function SaldoParcial(Entrada: Ttime; Saida: TTime): String;
    procedure DataModuleCreate(Sender: TObject);
    PROCEDURE LOADDV_COLETUR;
    procedure loadfolgas;
    PROCEDURE ADN;
    FUNCTION CALCULABRT(Hi1:String; Hf1:string; V1:STRING;Hi2:string ;Hf2:string;V2:STRING; Hi3:string ;Hf3:string;V3:STRING;Hi4:string ;Hf4:string;V4:STRING; Hi5:string ;Hf5:string;V5:STRING): Integer;
    FUNCTION CHECAVEIBRE(VEI:STRING):BOOLEAN;
    PROCEDURE HORASEMINTERVALO;
    procedure diastrab;
    function Intervalo (hf1: string; hi2:string; hf2:string; hi3: string;hf3:string;hi4:string;hf4:string;hi5:string) : string;
    function SaldoIntervalo (h1:Ttime; H2:ttime): boolean;
  private
    { Private declarations }
  public
    Coligada:String;
       //  Passagem de parametros da tabela PtoMov
       SaldoRef, PtoPeriodo,PtoCod, PtoRef, PtoFun, JorRef, VChapaAtual, VJornada:Integer;
       JorLocal, JorSaldo, SqlChapa, JorMatricula:String;
       TipoEntrada,PtoUsuario:Word;
       Vf1,Vf2, Vs1, Vs2, VPtoAtual:Integer;
       PtoEvento:Word;
       PtoHoras:TTime;
       ENT1,ENT2,ENT3,ENT4,ENT5: TTIME;
       SAI1,SAI2,SAI3,SAI4,SAI5: TTIME;
       TOT1,TOT2,TOT3,TOT4,TOT5:TTIME;
       VEI1,VEI2,VEI3,VEI4,VEI5 : STRING;
       PtoData:Tdatetime;
       VPeriodoInicial, VPeriodoFinal: Tdate;
       OrigemProgressor:string;
    { Public declarations }
  end;

var
  Pai: TPai;

implementation

uses UnitDispInclui, UnitLancamento, UnitCentralRelatorio, UnitEntrada;

{$R *.dfm}


function TPAI.SaldoIntervalo(H1: TTime; H2: TTime) : Boolean;
var saldo: integer;
saldoH: ttime;
begin
        saldo:=DateUtils.MinutesBetween(h1,h2);

        if saldo >= 15 then
        result:=true
        else
        result:=false;
end;

function Tpai.Intervalo (hf1: string; hi2:string; hf2:string; hi3: string;hf3:string;hi4:string;hf4:string;hi5:string) : string;
var saldo1,saldo2, saldo3,saldo4,Saldom: integer;
begin
       //
       saldom:=0;
       saldo1:=0;saldo2:=0;saldo3:=0;saldo4:=0;
       if (hf1 <> '00:00') and (hi2<>'00:00') then
           begin
                 Saldo1:=(strToInt(copy(hi2,1,2))*60 +  strToInt(copy(hi2,4,2)))-
                         (strToInt(copy(hf1,1,2))*60 +  strToInt(copy(hf1,4,2)));
                         if saldo1 < 0 then saldo1:=saldo1 + 1440;
           end;
       if (hf2 <> '00:00') and (hi3<>'00:00') then
           begin
                 saldo2:=(strToInt(copy(hi3,1,2))*60 +  strToInt(copy(hi3,4,2)))-
                         (strToInt(copy(hf2,1,2))*60 +  strToInt(copy(hf2,4,2)));
                         if saldo2 < 0 then saldo2:=saldo2 + 1440;
           end;
       if (hf3 <> '00:00') and (hi4<>'00:00') then
           begin
                 saldo3:=(strToInt(copy(hi4,1,2))*60 +  strToInt(copy(hi4,4,2)))-
                         (strToInt(copy(hf3,1,2))*60 +  strToInt(copy(hf3,4,2)));
                         if saldo3 < 0 then saldo3:=saldo3 + 1440;
           end;
       if (hf4 <> '00:00') and (hi5<>'00:00') then
           begin
                 saldo4:=(strToInt(copy(hi5,1,2))*60 +  strToInt(copy(hi5,4,2)))-
                         (strToInt(copy(hf4,1,2))*60 +  strToInt(copy(hf4,4,2)));
                         if saldo4 < 0 then saldo4:=saldo4 + 1440;
           end;
           saldom:=saldo1+saldo2+saldo3+saldo4;
//           result:= FormatFloat('0000',saldom mod 60);
           result:= FormatFloat('00',saldom div 60)+':'+FormatFloat('00',saldom mod 60);


end;

PROCEDURE TPAI.diastrab;
var     Q,q2: tadoquery;
  VALOR,VHORA, VMINUTO : INTEGER;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;

                WITH Q DO
                    BEGIN
                          CLOSE;
                          SQL.Clear;
                          SQL.Add('select PTO_CHAPA as chapa, cOUNT(*) AS QTD');
                          SQL.Add('          from tb_ptomov5 a');
                          SQL.Add('          where  PTO_PERIODO=:PERIODO');
                          SQL.Add('          and PTO_evento not in (5,6,7,14)');
                          SQL.Add('          and PTO_COLIGADA =4');
                          Sql.Add('And pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                          if VChapaAtual > 0 then SQL.Add('AND PTO_CHAPA = ' + INTTOSTR(VCHAPAATUAL)); // SE O COMBOBOX TIVER PREENCHIDO, BUSCA PELO ESPECIFICADO NELE

                          SQL.Add('          GROUP BY PTO_CHAPA');
                          SQL.Add('          order by PTO_CHAPA');
                          Parameters.ParamByName('PERIODO').Value:=QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString;
                          OPEN;
                          FORMENTRADA.Memo1.Text:=SQL.Text;

                          If NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                valor:=0;
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('QTD').AsInteger;
                                                Vhora:=0;
                                                VMinuto:= 0;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('chapa').AsString                   + ',' +
                                                            '28'                                             + ',' +
                                                            '999'                                            + ',' +
                                                            QUOTEDSTR('DIAS TRABALHADOS')                    + ',' +
                                                            QUOTEDSTR(INTTOSTR(VALOR))                       + ',' +
                                                            QUOTEDSTR(INTTOSTR(VALOR))                       + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                                //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.CLOSE;

                                              Q.NEXT;
                                          UNTIL EOF ;
                                  END;
                       END;
                       Q.Free;
                       Q2.Free;




end;

PROCEDURE TPAI.HORASEMINTERVALO;
var     Q,q2: tadoquery;
  VALOR,VHORA, VMINUTO : INTEGER;
  valorfloat: real;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;

                WITH Q DO
                    BEGIN
                          CLOSE;
                          SQL.Clear;
                          SQL.Add('select PTO_CHAPA as chapa, cOUNT(*) AS QTD, convert(decimal(5,2), (count(*) * 30/ 60.0)) as QtH  from tb_ptomov5');
                          SQL.Add('      where pto_evento in (1,13)');
                          SQL.Add('      and JOR_Tot >''06:20''');
                          SQL.Add('      and ((JOR_HF1 = JOR_HI2) or (JOR_HI2 = ''00:00''))');
                          SQL.Add('      and ((JOR_HF2 = JOR_HI3) or (JOR_HI3 = ''00:00''))');
                          SQL.Add('      and ((JOR_HF3 = JOR_HI4) or (JOR_HI4 = ''00:00''))');
                          SQL.Add('      and ((JOR_HF4 = JOR_HI5) or (JOR_HI5 = ''00:00''))');
                          SQL.Add('      and PTO_PERIODO=:PERIODO');
                          SQL.Add('and PTO_FUN in(1,2)');
                          SQL.Add('AND PTO_COLigada=4');
                          Sql.Add('And pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                          if VChapaAtual > 0 then SQL.Add('AND PTO_CHAPA = ' + INTTOSTR(VCHAPAATUAL)); // SE O COMBOBOX TIVER PREENCHIDO, BUSCA PELO ESPECIFICADO NELE
                          SQL.Add('GROUP BY PTO_CHAPA');
                          SQL.Add('order by PTO_CHAPA');
                          Parameters.ParamByName('PERIODO').Value:=QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString;
                          OPEN;
                          FORMENTRADA.Memo1.Text:=SQL.Text;

                          If NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                valor:=0;
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('QTD').AsInteger * 30;
                                                valorFloat:=FieldByName('qtH').AsFloat;

                                                //Formentrada.Memo1.Lines.Add(formatfloat('0.00',VALORfloat))  ;
                                                Vhora:=valor div 60;
                                                VMinuto:= valor mod 60;
                                                DecimalSeparator:='.';
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('chapa').AsString                   + ',' +
                                                            '27'                                             + ',' +
                                                            '999'                                            + ',' +
                                                            QUOTEDSTR('H EXTRA SUMULA 427')                  + ',' +
                                                            (FormatFloat('0.00',VALORfloat))      + ',' +
                                                            (FormatFloat('0.00',VALORfloat))      + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                                FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.CLOSE;
                                                DecimalSeparator:=',';

                                              Q.NEXT;
                                          UNTIL EOF ;
                                  END;
                       END;
                       Q.Free;
                       Q2.Free;




end;


FUNCTION TPAI.CALCULABRT(Hi1: string; Hf1: string; V1: string; Hi2: string; Hf2: string; V2: string; Hi3: string; Hf3: string; V3: string; Hi4: string; Hf4: string; V4: string; Hi5: string; Hf5: string; V5: string): INTEGER;
VAR entrada,saida, Saldo1,saldo2,saldo3,saldo4,saldo5 : INTEGER;
begin
//
       saldo1:=0;saldo2:=0;saldo3:=0;saldo4:=0;saldo5:=0;

       if CHECAVEIBRE(V1) then
          BEGIN
                Entrada:=(HourOF(StrToTime(Hi1))*60) + MinuteOf(StrToTime(Hi1));
                saida:=  (HourOF(StrToTime(Hf1))*60) + MinuteOf(StrToTime(Hf1));
                SALDO1:=Saida-entrada;
                if Saldo1 < 0 then saldo1:=saldo1+1440;
          END;

       if CHECAVEIBRE(V2) then
          BEGIN
                Entrada:=(HourOF(StrToTime(Hi2))*60) + MinuteOf(StrToTime(Hi2));
                saida:=  (HourOF(StrToTime(Hf2))*60) + MinuteOf(StrToTime(Hf2));
                SALDO2:=Saida-entrada;
                if Saldo2 < 0 then saldo2:=saldo2+1440;
          END;
       if CHECAVEIBRE(V3) then
          BEGIN
                Entrada:=(HourOF(StrToTime(Hi3))*60) + MinuteOf(StrToTime(Hi3));
                saida:=  (HourOF(StrToTime(Hf3))*60) + MinuteOf(StrToTime(Hf3));
                SALDO3:=Saida-entrada;
                if Saldo3 < 0 then saldo3:=saldo3+1440;
          END;
       if CHECAVEIBRE(V4) then
          BEGIN
                Entrada:=(HourOF(StrToTime(Hi4))*60) + MinuteOf(StrToTime(Hi4));
                saida:=  (HourOF(StrToTime(Hf4))*60) + MinuteOf(StrToTime(Hf4));
                SALDO4:=Saida-entrada;
                if Saldo4 < 0 then saldo4:=saldo4+1440;
          END;
       if CHECAVEIBRE(V5) then
          BEGIN
                Entrada:=(HourOF(StrToTime(Hi5))*60) + MinuteOf(StrToTime(Hi5));
                saida:=  (HourOF(StrToTime(Hf5))*60) + MinuteOf(StrToTime(Hf5));
                SALDO5:=Saida-entrada;
                if Saldo5 < 0 then saldo5:=saldo5+1440;
          END;


          result:=saldo1+saldo2+saldo3+saldo4+saldo5;



end;
FUNCTION TPAI.CHECAVEIBRE(VEI: string) :BOOLEAN;
var     Q,q2: tadoquery;

begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                WITH Q DO
                   BEGIN
                         CLOSE;
                         SQL.Clear;
                         SQL.Add('SELECT VEI_NUMERO FROM TB_VEICULOS WHERE VEI_COLIGADA=''4'' AND VEI_NUMERO=:VEI AND VEI_LAYOUT=''3''');
                         Parameters.ParamByName('VEI').VALUE:=VEI;
                         OPEN;
                         if NOT EOF then
                             RESULT:=TRUE
                             ELSE
                             RESULT:=FALSE;
                   END;
                   Q.Close;
                   Q.Free;

end;


PROCEDURE TPAI.ADN;
var     Q,q2: tadoquery;
        X : integer;
        ADREF : INTEGER;
        SALDO52 : INTEGER;
        VENTRADAREF, VSAIDAREF,  FADREF, VCODPROATUAL: Integer;
        VCHA: INTEGER;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            Sql.add('select pTO_ID, PTO_MATRICULA,PTO_CHAPA,PTO_PERIODO,');
                            Sql.add('CONVERT(Varchar(5),JOR_HI1,108) as Hi1,CONVERT(Varchar(5),JOR_HF1,108) as Hf1,CONVERT(Varchar(5),JOR_HI2,108) as Hi2,');
                            Sql.add('CONVERT(Varchar(5),JOR_HF2,108) as Hf2,CONVERT(Varchar(5),JOR_Hi3,108) as HI3,CONVERT(Varchar(5),JOR_HF3,108) as HF3,');
                            Sql.add('CONVERT(Varchar(5),JOR_Hi4,108) as HI4,CONVERT(Varchar(5),JOR_Hf4,108) as HF4,CONVERT(Varchar(5),JOR_Hi5,108) as HI5,');
                            Sql.add('CONVERT(Varchar(5),JOR_Hf5,108) as HF5  from tb_ptomov5');
                            Sql.add('where PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            Sql.Add('And pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            if VChapaAtual > 0 then SQL.Add('AND PTO_CHAPA = ' + INTTOSTR(VCHAPAATUAL)); // SE O COMBOBOX TIVER PREENCHIDO, BUSCA PELO ESPECIFICADO NELE
                            SQL.Add('and PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            if Vf1 > 0 then Sql.Add('And pfun.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And pfun.Tfu_secao = ' + IntToStr(Vs1));
                            SQL.Add('ORDER BY pto_Chapa, PTO_DATA');
                            OPEN;
                            FIRST;
                            FORMENTRADA.Memo1.Text:=SQL.Text;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                          if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=Q.recordCount;
                                                   end;
                                          if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=Q.recordCount;
                                                   end;
                                       repeat
                                              VCHA:=FieldByName('PTO_CHAPA').AsInteger;
                                             // FORMENTRADA.Memo1.lines.add(INTTOSTR(VCHA)+'/'+ FIELDBYNAME('PTO_CHAPA').AsString+'/'+FIELDBYNAME('PTO_ID').AsString);
                                              //IF VCHA=5202 THEN FORMENTRADA.Memo1.lines.add(FIELDBYNAME('PTO_ID').AsString+ ' - '+ IntToStr(Vcha)+' - '+ inttostr(FADREF));
                                              ADREF:=0;
                                              While VCHA = FieldByName('PTO_CHAPA').AsInteger do
                                                    BEGIN
                                                          if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                          if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                          FADREF      :=0;
                                                          FADREF      :=CalculaAdcionalDia(
                                                               FieldByName('Hi1').AsString,
                                                               FieldByName('Hf1').AsString,
                                                               FieldByName('Hi2').AsString,
                                                               FieldByName('Hf2').AsString,
                                                               FieldByName('Hi3').AsString,
                                                               FieldByName('Hf3').AsString,
                                                               FieldByName('Hi4').AsString,
                                                               FieldByName('Hf4').AsString,
                                                               FieldByName('Hi5').AsString,
                                                               FieldByName('Hf5').AsString);
                                                               ADREF       :=ADREF+FADREF;
                                                               X           :=X+1;
//                                                          IF VCHA=5202 THEN FORMENTRADA.Memo1.lines.add(FIELDBYNAME('PTO_ID').AsString+ ' - '+ IntToStr(Vcha)+' - '+ inttostr(FADREF));
                                                          VCHA:=FieldByName('PTO_CHAPA').AsInteger;
                                                          NEXT;
                                                          if Q.EOF then Break;  // ISSO EVITA LOOP INFINITO


                                                    END;

                                                 SALDO52:= (ADREF);
                                                 If saldo52 >0 then //  se houver ele grava
                                                       begin
                                                            //FORMENTRADA.Memo1.Text:=('entrou no loop');
                                                            Q2.CLOSE;
                                                            Q2.SQL.Clear;
                                                            Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                            Q2.SQL.Add('VALUES (');
                                                            Q2.SQL.Add(QUOTEDSTR(INTTOSTR(VCHA))            + ',' +  //PREL01_CHAPA
                                                            '04'                                            + ',' +  //PREL01_PROVENTO
                                                            '999'                                           + ',' +  //PREL01_EVENTO
                                                            QUOTEDSTR('ADCIONAL NOTURNO')                   + ',' +  //PREL01_DES
                                                            FORMATFLOAT('####0',ADREF)                      + ',' +  //PREL01_REF
                                                            FORMATFLOAT('##000',SALDO52)                    + ',' +  //PREL01_VALOR
                                                            QUOTEDSTR(FORMATFLOAT('000',(SALDO52 DIV 60))   + ':' +
                                                            FORMATFLOAT('00',(SALDO52 MOD 60))) +')');
                                                            ADREF  := 0;
                                                            FADREF := 0;
                                                            SALDO52:= 0;
                                                            Q2.ExecSQL;
                                                           // FORMENTRADA.Memo1.lines.add(Q2.SQL.Text);
                                                            Q2.Close;
                                                       end;
                                               //  FormEntrada.Memo1.Text:='Saiu do loop, proximo ao next';
                                                 //Q.NEXT;
                                       until q.eof;

                                  END;
                       END;
                       Q.Free;
                       Q2.Free;
end;

procedure TPai.InserirJor1Click(Sender: TObject);
begin
//

 {
   With SqlMov do
       Begin
             Close;
             Sql.clear;
             if TipoEntrada = 0 then // caso seja inser��o
                    begin
                         Sql.Add('Insert Into');
                         Sql.Add('Tb_PtoJornada (Jor_Pto, Jor_Ini, Jor_Fim, Jor_ITI, Jor_Itf, Jor_Ith, Jor_TOT, Jor_Ref, Jor_Chapa, Jor_Vei)');
                         Sql.Add('Values (');
                         Sql.Add(       IntToStr(PtoCod)                   + ',' +
                                        QuotedStr(TimeToStr(JorEntrada))   + ',' +
                                        QuotedStr(TimeToStr(JorSaida))     + ',' +
                                        QuotedStr(TimeToStr(JorITI))       + ',' +
                                        QuotedStr(TimeToStr(JorItf))       + ',' +
                                        QuotedStr(TimeToStr(JorIntervalo)) + ',' +
                                        QuotedStr(JorSaldo)                + ',' +
                                        IntToStr(JorRef)                   + ',' +
                                        SqlChapa                           + ',' +
                                        JorLocal                           + ')');
                    end
                    else
                    begin
                         // caso seja altera��o
                         Sql.Add('Update Tb_PtoJornada set');
                         Sql.Add('Jor_Ini = ' + QuotedStr(TimeToStr(JorEntrada))   + ' and ');
                         Sql.add('Jor_Fim = ' + QuotedStr(TimeToStr(JorSaida))     + ' and ');
                         Sql.Add('Jor_ITI = ' + QuotedStr(TimeToStr(JorITI))       + ' and ');
                         Sql.Add('Jor_Itf = ' + QuotedStr(TimeToStr(JorItf))       + ' and ');
                         Sql.Add('Jor_Ith = ' + QuotedStr(TimeToStr(JorIntervalo)) + ' And ');
                         Sql.Add('Jor_TOT = ' + QuotedStr(JorSaldo)                + ' And ');
                         Sql.Add('Jor_Ref = ' + IntToStr(JorRef)                   + ' And ');
                         Sql.Add('Jor_Vei = ' + JorLocal);
                         Sql.Add('Where Pto_Cod = ' + IntToStr(VPtoAtual));
                    end;
             FormLancamento.Memo1.Text:=sql.Text;
             ExecSQL;
             Close;

       End;

           }

end;

procedure TPai.InserirMov1Click(Sender: TObject);
begin
//
   With SqlMov do
       Begin
             Close;
             Sql.clear;
             if TipoEntrada = 0 then // caso seja inser��o
                 BEGIN
                      Sql.Add('Insert Into Tb_PtoMov5 (Pto_Id, Pto_Chapa, Pto_Data, Pto_Coligada, Pto_Origem, Pto_Usuario, Pto_Periodo, Pto_Evento, Pto_DataHora, Pto_Ref, Pto_Fun,');
                      Sql.Add('Jor_HI1, Jor_HF1, Jor_T1, Jor_VEI1,');
                      Sql.Add('Jor_HI2, Jor_HF2, Jor_T2, Jor_VEI2,');
                      Sql.Add('Jor_HI3, Jor_HF3, Jor_T3, Jor_VEI3,');
                      Sql.Add('Jor_HI4, Jor_HF4, Jor_T4, Jor_VEI4,');
                      Sql.Add('Jor_HI5, Jor_HF5, Jor_T5, Jor_VEI5, JOR_TOT, PTO_JORREF, PTO_MATRICULA) ');   //33 registros
                      Sql.Add('Values (' + IntToStr(PtoCod)               + ',' +
                              SqlChapa                           + ',' +
                              QuotedStr(DateToStr(PtoData) )     + ',' +
                              Coligada                           + ',' +
                              '1'                                + ',' +    // Aqui defini 1 para determinar a origem do lancamento da table Origem - Clock
                              IntToStr(PtoUsuario)               + ',' +
                              IntToStr(PtoPeriodo)               + ',' +
                              IntToStr(PtoEvento)                + ',' +
                              QuotedStr(DateTimeToStr(Now))      + ',' +
                              IntToStr(JorRef)                   + ',' +
                              IntToStr(PtoFun)                   + ',' +
                              QuotedStr(TimeToStr(ENT1))         + ',' +
                              QuotedStr(TimeToStr(SAI1))         + ',' +
                              QuotedStr(TimeToStr(TOT1))         + ',' +
                              QuotedStr((VEI1))                  + ',' +

                              QuotedStr(TimeToStr(ENT2))         + ',' +
                              QuotedStr(TimeToStr(SAI2))         + ',' +
                              QuotedStr(TimeToStr(TOT2))         + ',' +
                              QuotedStr((VEI2))                  + ',' +

                              QuotedStr(TimeToStr(ENT3))         + ',' +
                              QuotedStr(TimeToStr(SAI3))         + ',' +
                              QuotedStr(TimeToStr(TOT3))         + ',' +
                              QuotedStr((VEI3))                  + ',' +

                              QuotedStr(TimeToStr(ENT4))         + ',' +
                              QuotedStr(TimeToStr(SAI4))         + ',' +
                              QuotedStr(TimeToStr(TOT4))         + ',' +
                              QuotedStr((VEI4))                  + ',' +

                              QuotedStr(TimeToStr(ENT5))         + ',' +
                              QuotedStr(TimeToStr(SAI5))         + ',' +
                              QuotedStr(TimeToStr(TOT5))         + ',' +
                              QuotedStr((VEI5))                  + ',' +

                              QuotedStr(JorSaldo)                + ',' +
                              IntToStr
                              (Vjornada)                         + ',' +
                              QuotedStr(JorMatricula)            + ')');
                                                 //  formentrada.Memo1.Lines.Add('3');
                            //  FormLANCAMENTO.Memo1.Text:=sql.Text;

                 END
                 ELSE
                 BEGIN
                         close;
                         sql.Clear;
                         Sql.Add('Update Tb_PtoMov5 set');
                         Sql.Add('Pto_Usuario = ' + Pai.Qrusuarios.FieldByName('Usu_Codigo').AsString + ' , ');

                         Sql.Add('Jor_HI1 = ' + QuotedStr(TimeToStr(ENT1))           + ' , ');
                         Sql.add('Jor_HF1 = ' + QuotedStr(TimeToStr(SAI1))           + ' , ');
                         Sql.Add('Jor_T1 = ' + QuotedStr(TimeToStr(TOT1))            + ' , ');
                         Sql.Add('Jor_VEI1 = ' + QuotedStr((VEI1))          + ' , ');

                         Sql.Add('Jor_HI2 = ' + QuotedStr(TimeToStr(ENT2))           + ' , ');
                         Sql.add('Jor_HF2 = ' + QuotedStr(TimeToStr(SAI2))           + ' , ');
                         Sql.Add('Jor_T2 = ' + QuotedStr(TimeToStr(TOT2))            + ' , ');
                         Sql.Add('Jor_VEI2 = ' + QuotedStr((VEI2))          + ' , ');

                         Sql.Add('Jor_HI3 = ' + QuotedStr(TimeToStr(ENT3))           + ' , ');
                         Sql.add('Jor_HF3 = ' + QuotedStr(TimeToStr(SAI3))           + ' , ');
                         Sql.Add('Jor_T3 = ' + QuotedStr(TimeToStr(TOT3))            + ' , ');
                         Sql.Add('Jor_VEI3 = ' + QuotedStr((VEI3))          + ' , ');

                         Sql.Add('Jor_HI4 = ' + QuotedStr(TimeToStr(ENT4))           + ' , ');
                         Sql.add('Jor_HF4 = ' + QuotedStr(TimeToStr(SAI4))           + ' , ');
                         Sql.Add('Jor_T4 = ' + QuotedStr(TimeToStr(TOT4))            + ' , ');
                         Sql.Add('Jor_VEI4 = ' + QuotedStr((VEI4))          + ' , ');

                         Sql.Add('Jor_HI5 = ' + QuotedStr(TimeToStr(ENT5))           + ' , ');
                         Sql.add('Jor_HF5 = ' + QuotedStr(TimeToStr(SAI5))           + ' , ');
                         Sql.Add('Jor_T5 = ' + QuotedStr(TimeToStr(TOT5))            + ' , ');
                         Sql.Add('Jor_VEI5 = ' + QuotedStr((VEI5))          + ' , ');



                         Sql.Add('Jor_TOT = ' + QuotedStr(JorSaldo)                  + ' , ');
                         Sql.Add('Pto_Ref = ' + IntToStr(JorRef)                     + ' , ');
                         Sql.Add('Pto_Fun = ' + IntToStr(PtoFun)                     + ' , ');
                         Sql.Add('Pto_JorRef = ' + IntToStr(VJornada)                 + ' , ');
                         Sql.Add('Pto_DataHora = ' + QuotedStr(DateTimeToStr(Now)))          ;
                         Sql.Add(' Where Pto_Id = ' + IntToStr(VPtoAtual));
                 END;




             ExecSQL;



             Close;

       End;

end;

procedure TPai.PegaPtoMov1Click(Sender: TObject);
begin
     QrInc.Open;
     PtoCod:=QrInc.FieldByName('PtoMov').AsInteger;

end;

procedure TPai.QrColigadasAfterOpen(DataSet: TDataSet);
begin
//         Coligada:=QrColigadas.FieldByName('cod_coligada').AsString;
end;

function TPai.GeraSeq(codigo: string): integer;
var Q,q2: tadoquery; valor: integer;
begin
q:=tadoquery.create(nil);
 q.Connection:=Genoma;
 q.SQL.Text:='SELECT PTOMOV FROM TB_INC with (nolock)';
 q.Open;

 valor:=q.fieldbyname('PTOMOV').Value+1;

 q2:=tadoquery.create(nil);
 q2.Connection:=Genoma;

 q2.SQL.Text:='UPDATE TB_INC SET PTOMOV=:A ';
 q2.Parameters.ParamByName('a').Value:=valor;
 q2.ExecSQL;

 q.Free;
 q2.free;

   result:=valor;

end;

function TPai.GeraRef(codigo: string): integer;
Var
Hora, Minuto:word;
Horacompleta:Tdatetime;
begin
          HoraCompleta:=StrToTime(codigo);
          Hora:=StrToInt(Copy(TimeToStr(HoraCompleta),1,2));
          Minuto:=StrToInt(Copy(TimeToStr(HoraCompleta),4,2));
          Result:=(Hora*60)+Minuto;

end;

function Tpai.GeraSaldo(Entrada:string;Saida:string;Intervalo:string):string;
Var
Resultado,VEntrada,VSaida,VIntervalo : TTime;
Begin
           VEntrada    :=StrToTime(Entrada);
           VSaida      :=StrToTime(Saida);
           if VSaida < VEntrada then Vsaida:=Vsaida+1;
           VIntervalo  :=StrToTime(Intervalo);
           Resultado:=(VSaida - VEntrada - VIntervalo);
           Result:= FormatDateTime('hh:mm',Resultado);

End;


Function Tpai.HoraExtra(Jornada: string; Saldo: string): integer;
var
VSaldo, VJornada:TTime;
begin
             // Funcao para descoberta de Hora extra dia


end;

procedure tpai.loadfolgas;
     var Q,q2: tadoquery; valor: integer;

begin
                 Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            Sql.add('SELECT COUNT(*)  AS QTD, A.PTO_CHAPA, P.CHA_PRO AS CHAPA, P.NOM_PRO AS NOME,	B.TVE_COD AS CODEVENTO, B.TVE_DES AS EVENTO, PPR_ID, C.PPR_DESCRICAO AS PROVENTO');
                            Sql.Add(' FROM  TB_PTOMOV5 A JOIN      TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA');
                            Sql.Add('Join TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                            Sql.Add('Join TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                            Sql.Add('JOIN  TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO');
                            Sql.Add('Join Tb_depto j On J.Cod_depto = G.Tfu_Secao');
                            Sql.Add('Left  JOIN TB_PTOPROVENTOS C ON C.PPR_EVENTO = B.TVE_COD');
                            Sql.Add('Where ');
                            if VChapaAtual > 0 then  Sql.Add('A.pto_chapa = ' + INTTOSTR(VCHAPAATUAL) + ' and ');

                            SQL.Add('A.PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            if Vs1         > 0 then  Sql.Add('And G.Tfu_secao = ' + QuotedStr(intTostr(Vs1)));
                            if Vf1         > 0 then  Sql.Add('And G.Tfu_Cod =   ' + QuotedStr(IntToStr(Vf1)));
                            // apenas folga
                            SQL.Add('and B.TVE_COD = 2 AND A.PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));

                            Sql.Add('And A.pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and A.Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            SQL.ADD('GROUP   BY A.PTO_CHAPA, P.CHA_PRO, P.NOM_PRO, B.TVE_COD, B.TVE_DES, PPR_ID, PPR_DESCRICAO');
                            SQL.ADD('ORDER   BY CHAPA,EVENTO');
                            OPEN;
//                            formentrada.memo1.text:=sql.Text;
                            if NOT EOF then
                                  BEGIN

                                          if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                          if OrigemProgressor='CR4' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;
                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR4' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('pto_Chapa').AsString + ',' +
                                                            QUOTEDSTR(Q.FieldByName('PPR_ID').AsString) + ',' +
                                                            QUOTEDSTR(Q.FieldByName('CODEVENTO').AsString) + ',' +
                                                            QUOTEDSTR(Q.FieldByName('EVENTO').AsString) + ',' +
                                                            Q.FieldByName('QTD').AsString + ',' +
                                                            Q.FieldByName('QTD').AsString + ','+ QUOTEDSTR('000:00')+    ')');
//                                                FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.Close;
                                                Q.NEXT;
                                          UNTIL EOF ;
                                  END;

end;
end;

Procedure Tpai.EventosBasicos(Sender: TObject);
     var Q,q2: tadoquery; valor: integer;


        // Eventos Basicos: Folga, Falta, Atestado, Ferias, Demitido, Afastado, Abonado, Licensa R, Fora de Escala, Feriado, Desconto TRT
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            Sql.add('SELECT COUNT(*)  AS QTD, A.PTO_CHAPA, P.CHA_PRO AS CHAPA, P.NOM_PRO AS NOME,	B.TVE_COD AS CODEVENTO, B.TVE_DES AS EVENTO, PPR_ID, C.PPR_DESCRICAO AS PROVENTO');
                            Sql.Add(' FROM  TB_PTOMOV5 A JOIN      TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA');
                            Sql.Add('Join TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                            Sql.Add('Join TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                            Sql.Add('JOIN  TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO');
                            Sql.Add('Join Tb_depto j On J.Cod_depto = G.Tfu_Secao');
                            Sql.Add('Left  JOIN TB_PTOPROVENTOS C ON C.PPR_EVENTO = B.TVE_COD');
                            Sql.Add('Where ');
                            // aqui verifico se o sql determina yum unico colaborador
                            if VChapaAtual > 0 then  Sql.Add('A.pto_chapa = ' + INTTOSTR(VCHAPAATUAL) + ' and ');

                            SQL.Add('A.PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            if Vs1         > 0 then  Sql.Add('And G.Tfu_secao = ' + QuotedStr(intTostr(Vs1)));
                            if Vf1         > 0 then  Sql.Add('And G.Tfu_Cod =   ' + QuotedStr(IntToStr(Vf1)));

                            SQL.Add('and B.TVE_COD > 1 AND A.PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            Sql.Add('And A.pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and A.Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            //Sql.Add('and G.TFU_CHECK = ' + QuotedStr('1'));
                            SQL.ADD('GROUP   BY A.PTO_CHAPA, P.CHA_PRO, P.NOM_PRO, B.TVE_COD, B.TVE_DES, PPR_ID, PPR_DESCRICAO');
                            SQL.ADD('ORDER   BY CHAPA,EVENTO');
                            OPEN;
//                            formentrada.memo1.text:=sql.Text;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01

                                          if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                          if OrigemProgressor='CR4' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;
                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR4' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('pto_Chapa').AsString + ',' +
                                                            QUOTEDSTR(Q.FieldByName('PPR_ID').AsString) + ',' +
                                                            QUOTEDSTR(Q.FieldByName('CODEVENTO').AsString) + ',' +
                                                            QUOTEDSTR(Q.FieldByName('EVENTO').AsString) + ',' +
                                                            Q.FieldByName('QTD').AsString + ',' +
                                                            Q.FieldByName('QTD').AsString + ','+ QUOTEDSTR('000:00')+    ')');
//                                                FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.Close;
                                                Q.NEXT;
                                          UNTIL EOF ;
                                  END;


                       END;
                       Q.Free;
                       Q2.Free;



end;

Procedure TPai.HoraExtra_Modelo1(Sender: TObject);
////// ********************** HORA EXTRA MODELO DE COMPENSACAO 01 - DIARIA OU NAO COMPENSADA
var Q,q2: tadoquery;
valor: integer;
VHora, VMinuto : Integer;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            Sql.add(' SELECT PRO.CHA_PRO AS CHAPA,  MOV.PTO_CHAPA AS CODPRO, SUM( mov.PTO_REF - PFUN.TFU_HORREF ) AS SALDOSEM1,');
                            Sql.add('CASE WHEN sum(mov.pto_ref- PFUN.TFU_HORREF)  > 0 THEN sum(MOV.pto_ref- PFUN.TFU_HORREF) ELSE 0 END as HE');
                            Sql.add('FROM TB_PTOMOV5 MOV JOIN      TB_PROFISSIONAIS PRO ON PRO.COD_PRO = MOV.PTO_CHAPA AND MOV.PTO_COLIGADA = PRO.COD_COLIGADA');
                            Sql.add('JOIN      TB_FUNCAO FUN ON COD_FUNCAO = PRO.PRO_FUNCAOEXERCIDA JOIN      TB_PTOFUNCOES PFUN ON PFUN.TFU_COD = MOV.PTO_FUN');
                            Sql.add('JOIN      TB_PTOPERIODOS PER ON PER.TPE_COD = MOV.PTO_PERIODO');
                            SQL.ADD('WHERE PER.TPE_COD = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            if VChapaAtual > 0 then SQL.Add('AND PRO.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
	                          SQL.ADD('AND  PFUN.TFU_COMPENSACAO = 1');
                            // APENAS ESSE MODELO DE COMPESACAO
                            SQL.Add('AND PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            SQL.Add('and PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            Sql.Add('And Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            sql.Add('and (PTO_EVENTO = 1 or PTO_EVENTO = 13)');
                            SQL.Add('AND PTO_REF > TFU_HORREF');

                            if Vf1 > 0 then Sql.Add('And Pfun.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And Pfun.Tfu_secao = ' + IntToStr(Vs1));

                            SQL.Add('GROUP BY CHA_PRO, PTO_CHAPA');
                            SQL.ADD('ORDER BY CHAPA');
                            FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('HE').AsInteger;
                                                Vhora:=valor div 60;
                                                VMinuto:= valor mod 60;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                 + ',' +
                                                            '03'                                            + ',' +
                                                            '999'                                           + ',' +
                                                            QUOTEDSTR('HORAS EXTRAS MODELO 01')             + ',' +
                                                            Q.FieldByName('HE').AsString       + ',' +
                                                            Q.FieldByName('HE').AsString       + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                                //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                               // GRAVA VALOR DOBRADO REFLEXO DE HORA EXTRA
                                                Q2.CLOSE;

                                                Q2.SQL.CLEAR;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                 + ',' +
                                                            '22'                                            + ',' +
                                                            '999'                                           + ',' +
                                                            QUOTEDSTR('REFLEXO DE HORA EXTRA MOD 1')              + ',' +
                                                            Q.FieldByName('HE').AsString       + ',' +
                                                            Q.FieldByName('HE').AsString       + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                               // FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.Close;

                                              Q.NEXT;
                                          UNTIL EOF ;


                                  END;


                       END;
                       Q.Free;
                       Q2.Free;

end;
PROCEDURE TPAI.LOADDV_COLETUR;
var Q,q2: tadoquery;
valor: integer;
VHora, VMinuto : Integer;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            sql.Add('SELECT  PRO.CHA_PRO AS CHAPA, MOV.PTO_CHAPA AS CODPRO, SUM((PTO_REF) -  (pto_jorref))   SALDO');
                            sql.Add('        FROM TB_PTOMOV5 MOV') ;
                            sql.Add('          JOIN TB_PROFISSIONAIS PRO ON PRO.COD_PRO = MOV.PTO_CHAPA AND MOV.PTO_COLIGADA = PRO.COD_COLIGADA');
                            sql.Add('          JOIN TB_FUNCAO FUN ON COD_FUNCAO = PRO.PRO_FUNCAOEXERCIDA ');
                            sql.Add('          JOIN TB_PTOFUNCOES PFUN ON PFUN.TFU_COD =  MOV.PTO_FUN');
                            sql.Add('          JOIN TB_PTOFUNCOES FUNCATUAL ON FUNCATUAL.TFU_COD = FUN.FUN_TFU');
                            sql.Add('          JOIN TB_PTOPERIODOS PER ON PER.TPE_COD = MOV.PTO_PERIODO');
                            sql.Add('          JOIN TB_PTODIAPERIODO PDIA ON PDIA.TDP_PERIODO = PER.TPE_COD AND PDIA.TDP_DATA = MOV.PTO_DATA ');
                            sql.Add('          Join Tb_Depto J On J.Cod_depto = FuncAtual.Tfu_Secao');
                            sql.Add('          Left Join TB_PtoEVENTOS EVE On EVE.TVE_COD = MOV.PTO_EVENTO');

                            SQL.ADD('WHERE PER.TPE_COD = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            if VChapaAtual > 0 then SQL.Add('AND PRO.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
	                          SQL.ADD('AND  PFUN.TFU_COMPENSACAO = 2');
                            // APENAS ESSE MODELO DE COMPESACAO
                            SQL.Add('AND PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            SQL.Add('and PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            Sql.Add('And Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            sql.Add('and PTO_EVENTO In (1,13,16)');
                            //SQL.Add('AND PTO_REF > TFU_HORREF');

                            if Vf1 > 0 then Sql.Add('And Pfun.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And Pfun.Tfu_secao = ' + IntToStr(Vs1));

                            SQL.Add('group by   PRO.CHA_PRO,MOV.PTO_CHAPA ');
                            SQL.Add('HAVING  (SUM((PTO_REF) -  (pto_jorref))  <0)');
                            SQL.ADD('ORDER BY CHAPA');
                          //  FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('saldo').AsInteger;
                                                Vhora:=valor div 60;
                                                VMinuto:= valor mod 60;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                 + ',' +
                                                            '24'                                            + ',' +
                                                            '999'                                           + ',' +
                                                            QUOTEDSTR('HORAS DEVIDAS MOD3 ')                + ',' +
                                                            Q.FieldByName('saldo').AsString       + ',' +
                                                            Q.FieldByName('saldo').AsString       + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',abs(VHora))+ ':' +
                                                            FormatFloat('00',abs(VMinuto)))            + ')');
                                               // FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                //INCLUI APENAS HORAS MENORES
                                                Q2.ExecSQL;

                                              Q.NEXT;
                                          UNTIL EOF ;


                                  END;


                       END;
                       Q.Free;
                       Q2.Free;



end;
procedure Tpai.HoraExtra_Mod3;
var Q,q2: tadoquery;
valor: integer;
VHora, VMinuto : Integer;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            sql.Add('SELECT  PRO.CHA_PRO AS CHAPA, MOV.PTO_CHAPA AS CODPRO, SUM((PTO_REF) -  (pto_jorref))   SALDO');
                            sql.Add('        FROM TB_PTOMOV5 MOV') ;
                            sql.Add('          JOIN TB_PROFISSIONAIS PRO ON PRO.COD_PRO = MOV.PTO_CHAPA AND MOV.PTO_COLIGADA = PRO.COD_COLIGADA');
                            sql.Add('          JOIN TB_FUNCAO FUN ON COD_FUNCAO = PRO.PRO_FUNCAOEXERCIDA ');
                            sql.Add('          JOIN TB_PTOFUNCOES PFUN ON PFUN.TFU_COD =  MOV.PTO_FUN');
                            sql.Add('          JOIN TB_PTOFUNCOES FUNCATUAL ON FUNCATUAL.TFU_COD = FUN.FUN_TFU');
                            sql.Add('          JOIN TB_PTOPERIODOS PER ON PER.TPE_COD = MOV.PTO_PERIODO');
                            sql.Add('          JOIN TB_PTODIAPERIODO PDIA ON PDIA.TDP_PERIODO = PER.TPE_COD AND PDIA.TDP_DATA = MOV.PTO_DATA ');
                            sql.Add('          Join Tb_Depto J On J.Cod_depto = FuncAtual.Tfu_Secao');
                            sql.Add('          Left Join TB_PtoEVENTOS EVE On EVE.TVE_COD = MOV.PTO_EVENTO');

                            SQL.ADD('WHERE PER.TPE_COD = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            if VChapaAtual > 0 then SQL.Add('AND PRO.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
	                          SQL.ADD('AND  PFUN.TFU_COMPENSACAO = 4');
                            // APENAS ESSE MODELO DE COMPESACAO
                            SQL.Add('AND PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            SQL.Add('and PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            Sql.Add('And Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            sql.Add('and PTO_EVENTO In (1,13,16)');
                            //SQL.Add('AND PTO_REF > TFU_HORREF');

                            if Vf1 > 0 then Sql.Add('And Pfun.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And Pfun.Tfu_secao = ' + IntToStr(Vs1));

                            SQL.Add('group by   PRO.CHA_PRO,MOV.PTO_CHAPA ');
                            SQL.ADD('ORDER BY CHAPA');
                            FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('saldo').AsInteger;
                                                Vhora:=valor div 60;
                                                VMinuto:= valor mod 60;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                 + ',' +
                                                            '03'                                            + ',' +
                                                            '999'                                           + ',' +
                                                            QUOTEDSTR('HORAS EXTRAS MODELO 03')             + ',' +
                                                            Q.FieldByName('saldo').AsString       + ',' +
                                                            Q.FieldByName('saldo').AsString       + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                                //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                if valor >0 then Q2.ExecSQL;
                               // GRAVA VALOR DOBRADO REFLEXO DE HORA EXTRA
//                                                Q2.CLOSE;
//                                                Q2.SQL.CLEAR;
//                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
//                                                Q2.SQL.Add('VALUES (');
//                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                 + ',' +
//                                                            '22'                                            + ',' +
//                                                            '999'                                           + ',' +
//                                                            QUOTEDSTR('REFLEXO DE HORA EXTRA')              + ',' +
//                                                            Q.FieldByName('saldo').AsString       + ',' +
//                                                            Q.FieldByName('saldo').AsString       + ',' +
//                                                            quotedstr(
//                                                            FormatFloat('000',VHora)+ ':' +
//                                                            FormatFloat('00',VMinuto))            + ')');
//                                               // FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
//                                                if valor >0 then Q2.ExecSQL;
//                                                Q2.Close;

                                              Q.NEXT;
                                          UNTIL EOF ;


                                  END;


                       END;
                       Q.Free;
                       Q2.Free;


end;






PROCEDURE TPai.LIMPATB(SENDER: TObject);
var Q : tadoquery;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q.SQL.Text:=('DELETE TB_PTOREL01');
                Q.ExecSQL;
                Q.Free;
end;

procedure TPai.DataModuleCreate(Sender: TObject);
begin
Pai.Genoma.Close;
//Pai.Genoma.ConnectionString:=Memo1.Text;
Pai.Genoma.Open;

end;

Function Tpai.CalculaAdcionalDia(Hi1:String; Hf1:string; Hi2:string ;Hf2:string; Hi3:string ;Hf3:string;Hi4:string ;Hf4:string; Hi5:string ;Hf5:string): Integer;
VAR SALDO, SaldoTotal,VALORENTRADA, VALORSAIDA,I : INTEGER;
hora1, horaf: ttime;
NVarI,NvarF:String;

   begin
        SALDO:=0;
        SALDOTotal:=0;
        for i := 1 to 5 do
          begin
              if ('Hi'+IntToStr(i) <> '00:00') or  ('Hf'+IntToStr(i) <> '00:00' )  then
              begin
                    case I of
                       1 :
                           BEGIN
                                VALORENTRADA:= (StrToInt(Copy(Hi1,1,2))*60) + StrToInt(Copy(Hi1,4,2));
                                VALORSAIDA:= (StrToInt(Copy(Hf1,1,2))*60) + StrToInt(Copy(Hf1,4,2))
                           END;
                       2 :
                           BEGIN
                                VALORENTRADA:= (StrToInt(Copy(Hi2,1,2))*60) + StrToInt(Copy(Hi2,4,2));
                                VALORSAIDA:= (StrToInt(Copy(Hf2,1,2))*60) + StrToInt(Copy(Hf2,4,2))
                           END;
                       3 :
                           BEGIN
                                VALORENTRADA:= (StrToInt(Copy(Hi3,1,2))*60) + StrToInt(Copy(Hi3,4,2));
                                VALORSAIDA:= (StrToInt(Copy(Hf3,1,2))*60) + StrToInt(Copy(Hf3,4,2))
                           END;
                       4 :
                           BEGIN
                                VALORENTRADA:= (StrToInt(Copy(Hi4,1,2))*60) + StrToInt(Copy(Hi4,4,2));
                                VALORSAIDA:= (StrToInt(Copy(Hf4,1,2))*60) + StrToInt(Copy(Hf4,4,2))
                           END;
                       5 :
                           BEGIN
                                VALORENTRADA:= (StrToInt(Copy(Hi5,1,2))*60) + StrToInt(Copy(Hi5,4,2));
                                VALORSAIDA:= (StrToInt(Copy(Hf5,1,2))*60) + StrToInt(Copy(Hf5,4,2))
                           END;

                       end;
                    if VALORENTRADA > VALORSAIDA then VALORSAIDA:=VALORSAIDA+1440;

                    if VALORENTRADA >= 1320  THEN
                            IF VALORSAIDA > 1740 THEN  SALDO := 1740 - VALORENTRADA         ELSE  SALDO := VALORSAIDA - VALORENTRADA;

                    if VALORSAIDA    > 1320 then
                            if VALORENTRADA > 1320  then
                                   IF VALORSAIDA > 1740 THEN SALDO:= 1740-VALORENTRADA ELSE  SALDO := VALORSAIDA-VALORENTRADA
                                      ELSE
                                          IF  VALORSAIDA > 1740 THEN SALDO := 1740 - 1320 ELSE   SALDO := VALORSAIDA-1320;
                    if VALORENTRADA  <  300 then
                            if VALORSAIDA > 300    then SALDO:=300 - VALORENTRADA           ELSE SALDO:=VALORSAIDA-VALORENTRADA;
                     SaldoTotal := SaldoTotal + Saldo;

              end;
          end;
        RESULT:=SALDOtotal;


   end;
 PROCEDURE TPai.CALCULAHN(SENDER: TObject);
     var Q,q2: tadoquery; valor: integer;
     HORACONVERTIDA:INTEGER;

        //horas trabalhadas
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            Sql.add('SELECT COUNT(*)  AS QTD, A.PTO_CHAPA, P.CHA_PRO AS CHAPA, P.NOM_PRO AS NOME,');
                            Sql.Add('SUM(PTO_REF) AS VALOR FROM  TB_PTOMOV5 A JOIN      TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA');
                            Sql.Add('Join TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                            Sql.Add('Join TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                            Sql.Add(' JOIN  TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO');
                            Sql.Add(' left  JOIN TB_PTOPROVENTOS C ON C.PPR_EVENTO = B.TVE_COD');
                            Sql.Add('where ');
                            // aqui verifico se o sql determina yum unico colaborador
                            if VChapaAtual > 0 then Sql.Add('a.pto_chapa = ' + INTTOSTR(VCHAPAATUAL) + ' and ');
                            SQL.Add('A.PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            if Vf1 > 0 then Sql.Add('and G.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And G.Tfu_secao = ' + IntToStr(Vs1));
                            SQL.Add('and (B.TVE_COD = 1 or B.TVE_COD = 13) AND A.PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            Sql.Add('And A.pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and A.Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                           // Sql.Add('and G.TFU_CHECK = '+QuotedStr('1'));
                            SQL.ADD('GROUP   BY A.PTO_CHAPA, P.CHA_PRO, P.NOM_PRO');
                            SQL.ADD('ORDER   BY CHAPA');
                            OPEN;
//                            formentrada.memo1.text:=sql.Text;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01

                                          if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                          if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;
                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                HORACONVERTIDA := Q.FieldByName('VALOR').AsInteger;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('pto_Chapa').AsString                 + ',' +
                                                            QUOTEDSTR('1')                                     + ',' +
                                                            QUOTEDSTR('1')                                      + ',' +
                                                            QUOTEDSTR('HORAS TRABALHADAS')                     + ',' +
                                                            Q.FieldByName('VALOR').AsString                    + ',' +
                                                            Q.FieldByName('QTD').AsString                      + ',' +
                                                            QUOTEDSTR(FORMATFLOAT('000',(HORACONVERTIDA DIV 60)) + ':' + FORMATFLOAT('00',(HORACONVERTIDA MOD 60))) +')');

//                                                FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.Close;
                                                Q.NEXT;
                                          UNTIL EOF ;
                                  END;


                       END;
                       Q.Free;
                       Q2.Free;




 end;

 Procedure TPai.CalculaHoraDevida(Sender: TObject);
 var Q,q2: tadoquery;
valor, Vminuto, Vhora: integer;
begin
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            Sql.add('SELECT PRO.CHA_PRO AS CHAPA,  PTO_CHAPA AS CODPRO,');
                            SQL.ADD('SUM(CASE WHEN PFUN.TFU_HORREF  > PTO_REF THEN TFU_HORREF - PTO_REF END) AS DEVIDAREFERENCIA');
                            SQL.Add('FROM  TB_PTOMOV5 MOV');
                            SQL.ADD('JOIN  TB_PROFISSIONAIS PRO ON PRO.COD_PRO = MOV.PTO_CHAPA AND MOV.PTO_COLIGADA = PRO.COD_COLIGADA');
                            SQL.ADD('JOIN  TB_PTOFUNCOES PFUN ON PFUN.TFU_COD = MOV.PTO_FUN --and TFU_CHECK = ''1''');
                            SQL.ADD('JOIN  TB_PTOPERIODOS PER ON PER.TPE_COD = MOV.PTO_PERIODO');
                            SQL.ADD('WHERE PER.TPE_COD = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            if VChapaAtual > 0 then SQL.Add('AND PRO.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
	                          SQL.ADD('AND  PFUN.TFU_COMPENSACAO = 4'); // APENAS ESSE MODELO DE COMPESACAO
                            SQL.Add('AND PTO_PERIODO = ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            SQL.Add('and PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            Sql.Add('And Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            sql.Add('and (PTO_EVENTO = 1 or PTO_EVENTO = 13)');
                            SQL.Add('AND TFU_HORREF > PTO_REF');
                            if Vf1 > 0 then Sql.Add('And Pfun.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And Pfun.Tfu_secao = ' + IntToStr(Vs1));

                            SQL.Add('GROUP BY CHA_PRO, PTO_CHAPA');
                            SQL.ADD('ORDER BY pto_Chapa');
                            FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT

                                               if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('DEVIDAREFERENCIA').AsInteger;
                                                Vhora:=valor div 60;
                                                VMinuto:= valor mod 60;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                  + ',' +
                                                            '24'                                             + ',' +
                                                            '999'                                            + ',' +
                                                            QUOTEDSTR('HORAS DEVIDAS')                       + ',' +
                                                            Q.FieldByName('DEVIDAREFERENCIA').AsString       + ',' +
                                                            Q.FieldByName('DEVIDAREFERENCIA').AsString       + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                                //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.CLOSE;

                                          next;
                                          UNTIL EOF ;
                                  END;


                       END;
                       Q.Free;
                       Q2.Free;




end;
Procedure Tpai.SomaArticularidade(Sender: TObject);
 var Q,q2: tadoquery;
Valor100 : integer;
VHora, VMinuto , VCHA, SALDO,X: Integer;
begin
                // **************************** CALCULA ARTICULARIDADE ****************************

                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            SQL.Add('select PTO_MATRICULA,PTO_CHAPA,PTO_PERIODO,');
                            SQL.Add('CONVERT(Varchar(5),JOR_HI1,108) as Hi1,CONVERT(Varchar(5),JOR_HF1,108) as Hf1,');
                            SQL.Add('CONVERT(Varchar(5),JOR_HI2,108) as Hi2,CONVERT(Varchar(5),JOR_HF2,108) as Hf2,');
                            SQL.Add('CONVERT(Varchar(5),JOR_Hi3,108) as HI3,CONVERT(Varchar(5),JOR_HF3,108) as HF3,');
                            SQL.Add('CONVERT(Varchar(5),JOR_Hi4,108) as HI4,CONVERT(Varchar(5),JOR_Hf4,108) as HF4,');
                            SQL.Add('CONVERT(Varchar(5),JOR_Hi5,108) as HI5,CONVERT(Varchar(5),JOR_Hf5,108) as HF5 ,');
                            SQL.Add('A.JOR_VEI1 as v1, A.JOR_VEI2 as v2, A.JOR_VEI3 as v3,A.JOR_VEI4 as v4, A.JOR_VEI5 as v5');
                            SQL.Add('from tb_ptomov5 A');
                            SQL.Add('JOIN    TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA');
                            SQL.Add('Join    TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                            SQL.Add('Join    TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                            SQL.Add('JOIN    TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO');
                            SQL.Add('left    JOIN TB_PTOPROVENTOS C ON C.PPR_EVENTO = B.TVE_COD');
                            SQL.Add('where  A.PTO_COLIGADA=' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            sql.Add('and pto_fun = 1 ');
                            SQL.Add('and (B.TVE_COD = 1 or B.TVE_COD = 13) AND A.PTO_PERIODO =  ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            Sql.Add('And Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            if VChapaAtual > 0 then SQL.Add('AND P.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
                            if Vf1 > 0 then Sql.Add('And G.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And G.Tfu_secao = ' + IntToStr(Vs1));
                            SQL.Add('ORDER BY PTO_CHAPA, PTO_DATA');

                            //FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            first;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                VALOR100:=0;
                                                saldo:=0;
                                                x:=0;
                                                VCHA:=FieldByName('PTO_CHAPA').AsInteger;
                                                While VCHA = FieldByName('PTO_CHAPA').AsInteger do
                                                    BEGIN
                                                            saldo:=0;
                                                            saldo:=CALCULABRT(
                                                                         FieldByName('hi1').AsString,
                                                                         FieldByName('hf1').AsString,
                                                                         FieldByName('v1').AsString,

                                                                         FieldByName('hi2').AsString,
                                                                         FieldByName('hf2').AsString,
                                                                         FieldByName('v2').AsString,

                                                                         FieldByName('hi3').AsString,
                                                                         FieldByName('hf3').AsString,
                                                                         FieldByName('v3').AsString,

                                                                         FieldByName('hi4').AsString,
                                                                         FieldByName('hf4').AsString,
                                                                         FieldByName('v4').AsString,

                                                                         FieldByName('hi5').AsString,
                                                                         FieldByName('hf5').AsString,
                                                                         FieldByName('v5').AsString );
                                                                         valor100:= VALOR100+SALDO;
                                                                         X           :=X+1;
//                                                          FORMENTRADA.Memo1.lines.add(FIELDBYNAME('PTO_chapa').AsString+ ' - '+ IntToStr(Vcha)+' - '+ inttostr(VALOR100));
                                                          VCHA:=FieldByName('PTO_CHAPA').AsInteger;
                                                          NEXT;
                                                          if Q.EOF then Break;  // ISSO EVITA LOOP INFINITO

                                                    END;
                                               If valor100 >0 then //  se houver ele grava
                                                       begin
                                                                FORMENTRADA.Memo1.lines.add(FIELDBYNAME('PTO_chapa').AsString+ ' - '+ IntToStr(Vcha)+' - '+ inttostr(VALOR100));
                                                                //valor15:=(valor100);
                                                                FORMENTRADA.Memo1.lines.add('x = '+ inttostr(x));
                                                                Q2.CLOSE;
                                                                Q2.SQL.Clear;
                                                                Vhora:=valor100 div 60;
                                                                VMinuto:= valor100 mod 60;
                                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                                Q2.SQL.Add('VALUES (');
                                                                Q2.SQL.Add(IntToStr(Vcha)               + ',' +
                                                                            '21'                                             + ',' +
                                                                            '999'                                            + ',' +
                                                                            QUOTEDSTR('HORAS BRT')                           + ',' +
                                                                            IntToStr(valor100)                                + ',' +
                                                                            IntToStr(valor100)                                + ',' +
                                                                            quotedstr(FormatFloat('000',VHora)               + ':' +
                                                                            FormatFloat('00',VMinuto))                       + ')');
                                                                //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                                Q2.ExecSQL;
                                                                Q2.CLOSE;
                                                       end;
                                               VALOR100:=0;
                                               SALDO:=0;
                                            //  Q.NEXT;
                                          UNTIL EOF ;
                                  END;
                       END;
                       Q.Free;
                       Q2.Free;

end;

Procedure Tpai.CalculaDSR(Sender: TObject);
var Q,q2: tadoquery;
valor: integer;
VHora, VMinuto : Integer;
begin
                // **************************** CALCULA DSR POR SEMANA E SOMA****************************

                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;

                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            SQL.Add('SELECT   A.PTO_CHAPA AS CODPRO,   (SUM(PER1.PTO_REF)/SUM(PER1.PTO_REF)) AS DSR1,(SUM(PER2.PTO_REF)/SUM(PER2.PTO_REF)) AS DSR2,  (SUM(PER3.PTO_REF)/SUM(PER3.PTO_REF)) AS DSR3,');
                            SQL.Add('(SUM(PER4.PTO_REF)/SUM(PER4.PTO_REF)) AS DSR4,  (SUM(PER5.PTO_REF)/SUM(PER5.PTO_REF)) AS DSR5');
                            SQL.Add('FROM TB_PTOMOV5 A');
	                          SQL.Add('JOIN TB_PTOPERIODOS B ON B.TPE_COD = A.PTO_PERIODO');
                            SQL.Add('JOIN TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA');
                            SQL.Add('Join TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                            SQL.Add('Join TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                            SQL.Add('JOIN TB_PTOEVENTOS EVE ON EVE.TVE_COD = A.PTO_EVENTO');
                            sql.Add('Join Tb_Depto J On J.Cod_depto = G.Tfu_Secao');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 PER1 ON PER1.PTO_PERIODO = A.PTO_PERIODO AND PER1.PTO_DATA >= B.TPE_INICIO AND PER1.PTO_DATA < B.TPE_2SEM AND PER1.PTO_CHAPA = A.PTO_CHAPA AND (PER1.PTO_EVENTO = 3 or PER1.PTO_EVENTO = 15)');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 PER2 ON PER2.PTO_PERIODO = A.PTO_PERIODO AND PER2.PTO_DATA >= B.TPE_2SEM   AND PER2.PTO_DATA < B.TPE_3SEM AND PER2.PTO_CHAPA = A.PTO_CHAPA AND (PER2.PTO_EVENTO = 3 or PER2.PTO_EVENTO = 15)');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 PER3 ON PER3.PTO_PERIODO = A.PTO_PERIODO AND PER3.PTO_DATA >= B.TPE_3SEM   AND PER3.PTO_DATA < B.TPE_4SEM AND PER3.PTO_CHAPA = A.PTO_CHAPA AND (PER3.PTO_EVENTO = 3 or PER3.PTO_EVENTO = 15)');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 PER4 ON PER4.PTO_PERIODO = A.PTO_PERIODO AND PER4.PTO_DATA >= B.TPE_4SEM   AND PER4.PTO_DATA < B.TPE_5SEM AND PER4.PTO_CHAPA = A.PTO_CHAPA AND (PER4.PTO_EVENTO = 3 or PER4.PTO_EVENTO = 15)');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 PER5 ON PER5.PTO_PERIODO = A.PTO_PERIODO AND PER5.PTO_DATA >= B.TPE_5SEM   AND PER5.PTO_DATA <= B.TPE_FIM AND PER5.PTO_CHAPA = A.PTO_CHAPA AND (PER5.PTO_EVENTO = 3 or PER5.PTO_EVENTO = 15)');
                            SQL.Add('where  A.PTO_COLIGADA=' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            SQL.Add('AND A.PTO_PERIODO =  '  + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            Sql.Add('And a.Pto_data >= '     + QuotedStr(DateToStr(VperiodoInicial)) + ' and a.Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            if Vf1 > 0 then Sql.Add('And G.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And G.Tfu_secao = ' + IntToStr(Vs1));


                            if VChapaAtual > 0 then SQL.Add('AND P.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
                            SQL.Add('AND (A.PTO_EVENTO = 3 or A.Pto_evento =15)');
							            //  SQL.Add('And G.TFU_CHECK  = 1');
                            SQL.Add('GROUP BY A.PTO_CHAPA');
                            SQL.Add('ORDER BY A.PTO_CHAPA');
                       //                            FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('DSR1').AsInteger+
                                                       Q.FieldByName('DSR2').AsInteger+
                                                       Q.FieldByName('DSR3').AsInteger+
                                                       Q.FieldByName('DSR4').AsInteger+
                                                       Q.FieldByName('DSR5').AsInteger;

                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                  + ',' +
                                                            '11'                                             + ',' +
                                                            '999'                                            + ',' +
                                                            QUOTEDSTR('DSR ')                                + ',' +
                                                            IntToStr(Valor)                                  + ',' +
                                                            IntToStr(Valor)                                  + ',' +
                                                            quotedstr('000:00')            + ')');
//                                                FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.CLOSE;
                                              Q.NEXT;
                                          UNTIL EOF;
                                  END;


                       END;
                       Q.Free;
                       Q2.Free;




end;

Procedure Tpai.HoraExtra_Modelo2(Sender: TObject);
var Q,q2: tadoquery;
valor: integer;
VHora, VMinuto : Integer;
begin
                // **************************** Calcula Hora Extra Modelo 2 (COMPENSADA) para perfis de fun��o com id 2 no modo de compensacao****************************
                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;

                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            SQL.Add(' SELECT');
                            SQL.Add('       PRO.CHA_PRO AS CHAPA,');
                            SQL.Add('	   MOV.PTO_CHAPA AS CODPRO,');
                            SQL.Add('	   SUM( SEM1.PTO_REF - PFUN.TFU_HORREF )  SALDOSEM1,');
                            SQL.Add('	   SUM(SEM2.PTO_REF - PFUN.TFU_HORREF  ) AS SALDOSEM2,');
                            SQL.Add('	   SUM( SEM3.PTO_REF - PFUN.TFU_HORREF ) AS SALDOSEM3,');
                            SQL.Add('	   SUM( SEM4.PTO_REF - PFUN.TFU_HORREF ) AS SALDOSEM4,');
                            SQL.Add('	   SUM( SEM5.PTO_REF - PFUN.TFU_HORREF ) AS SALDOSEM5,');

                            SQL.Add('	   ((CASE WHEN sum(sem1.pto_ref - PFUN.TFU_HORREF) > 0 THEN sum(sem1.pto_ref - PFUN.TFU_HORREF) ELSE 0 END) +');
                            SQL.Add('    	(CASE WHEN sum(sem2.pto_ref- PFUN.TFU_HORREF)  > 0 THEN sum(sem2.pto_ref- PFUN.TFU_HORREF) ELSE 0 END) + ');
                            SQL.Add('	    (CASE WHEN sum(sem3.pto_ref- PFUN.TFU_HORREF)  > 0 THEN sum(sem3.pto_ref- PFUN.TFU_HORREF) ELSE 0 END) +');
                            SQL.Add('  	  (CASE WHEN sum(sem4.pto_ref- PFUN.TFU_HORREF)  > 0 THEN sum(sem4.pto_ref- PFUN.TFU_HORREF) ELSE 0 END) +');
                            SQL.Add('     (CASE WHEN sum(sem5.pto_ref- PFUN.TFU_HORREF)  > 0 THEN sum(sem5.pto_ref- PFUN.TFU_HORREF) ELSE 0 END)) SALDOTOTALREF');
                            SQL.Add('FROM TB_PTOMOV5 MOV');
                            SQL.Add('JOIN      TB_PROFISSIONAIS PRO ON PRO.COD_PRO = MOV.PTO_CHAPA AND MOV.PTO_COLIGADA = PRO.COD_COLIGADA');
                            SQL.Add('JOIN      TB_FUNCAO FUN ON COD_FUNCAO = PRO.PRO_FUNCAOEXERCIDA');
                            SQL.Add('JOIN      TB_PTOFUNCOES PFUN ON PFUN.TFU_COD = MOV.PTO_FUN --FUN.FUN_TFU');
                            SQL.Add('JOIN      TB_PTOPERIODOS PER ON PER.TPE_COD = MOV.PTO_PERIODO');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 SEM1 ON SEM1.PTO_ID = MOV.PTO_ID anD SEM1.PTO_DATA >= per.TPE_INICIO and SEM1.PTO_DATA < per.TPE_2SEM');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 SEM2 ON SEM2.PTO_ID = MOV.PTO_ID anD SEM2.PTO_DATA >= per.TPE_2SEM and SEM2.PTO_DATA < per.TPE_3SEM');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 SEM3 ON SEM3.PTO_ID = MOV.PTO_ID anD SEM3.PTO_DATA >= per.TPE_3SEM and SEM3.PTO_DATA < per.TPE_4SEM');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 SEM4 ON SEM4.PTO_ID = MOV.PTO_ID anD SEM4.PTO_DATA >= per.TPE_4SEM and SEM4.PTO_DATA < per.TPE_5SEM');
                            SQL.Add('LEFT JOIN TB_PTOMOV5 SEM5 ON SEM5.PTO_ID = MOV.PTO_ID anD SEM5.PTO_DATA >= per.TPE_5SEM and SEM5.PTO_DATA <= per.TPE_FIM');
                            SQL.Add('WHERE PER.TPE_COD = ' +  QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            if VChapaAtual > 0 then SQL.Add('AND PRO.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
                            SQL.Add('and MOV.PTO_COLIGADA = ' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            Sql.Add('And MOV.Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and MOV.Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));

                            if Vf1 > 0 then Sql.Add('And Pfun.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And Pfun.Tfu_secao = ' + IntToStr(Vs1));

                            SQL.Add('	 AND PFUN.TFU_COMPENSACAO = 2 ');
                            SQL.Add('AND (MOV.PTO_EVENTO = 1 OR MOV.PTO_EVENTO = 13 OR MOV.PTO_EVENTO = 16)');
                            SQL.Add('group by pro.cha_pro, MOV.pto_chapa');
                            SQL.Add('ORDER BY CHAPA');
                             FORMENTRADA.MEMO1.TEXT:=Q.SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('SALDOTOTALREF').AsInteger;
                                                if valor > 5 then
                                                    begin
                                                        Vhora:=valor div 60;
                                                        VMinuto:= valor mod 60;
                                                        Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                        Q2.SQL.Add('VALUES (');
                                                        Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                  + ',' +
                                                                    '03'                                             + ',' +
                                                                  '999'                                            + ',' +
                                                                    QUOTEDSTR('HORAS EXTRAS MOD 2/COMPENSADA')       + ',' +
                                                                    Q.FieldByName('SALDOTOTALREF').AsString               + ',' +
                                                                    Q.FieldByName('SALDOTOTALREF').AsString               + ',' +
                                                                    quotedstr(
                                                                    FormatFloat('000',VHora)+ ':' +
                                                                    FormatFloat('00',VMinuto))            + ')');
                                                                    //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                                    Q2.ExecSQL;
                                                                   // GRAVA VALOR DOBRADO REFLEXO DE HORA EXTRA

                                                                    Q2.CLOSE;
                                                                    Q2.SQL.Clear;
                                                                     Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                                    Q2.SQL.Add('VALUES (');
                                                                    Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                  + ',' +
                                                                                '22'                                             + ',' +
                                                                                '999'                                            + ',' +
                                                                                QUOTEDSTR('REFLEXO DE HORA EXTRA MOD 2')         + ',' +
                                                                                Q.FieldByName('SALDOTOTALREF').AsString          + ',' +
                                                                                Q.FieldByName('SALDOTOTALREF').AsString          + ',' +
                                                                                quotedstr(
                                                                                FormatFloat('000',VHora)                         + ':' +
                                                                                FormatFloat('00',VMinuto))                       + ')');
                                                              Q2.ExecSQL;
                                                              Q2.CLOSE;
                                                          end;

                                          Q.NEXT;
                                          UNTIL EOF ;
                                  END;


                       END;


end;

Procedure Tpai.SomaSeletividade;
var Q,q2: tadoquery;
valor: integer;
VHora, VMinuto : Integer;
begin
                // **************************** CALCULA seletividade ****************************

                Q:=tadoquery.create(nil);
                Q.Connection:=Genoma;
                q.CommandTimeout:=500;
                Q2:=tadoquery.create(nil);
                Q2.Connection:=Genoma;
                WITH Q DO
                       BEGIN
                            CLOSE;
                            SQL.Clear;
                            SQL.Add('SELECT     COUNT(*)  AS QTD,  p.cod_pro as CODPRO,   P.CHA_PRO AS CHAPA,  P.NOM_PRO AS NOME, SUM(PTO_REF)/10 AS VALORREF 	FROM  TB_PTOMOV5 A');
                            SQL.Add('JOIN    TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA');
                            SQL.Add('Join    TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                            SQL.Add('Join    TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                            SQL.Add('JOIN    TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO');
                            SQL.Add('left    JOIN TB_PTOPROVENTOS C ON C.PPR_EVENTO = B.TVE_COD');
							              SQL.Add('Left    Join TB_Veiculos Vei On Vei.Vei_nun = A.JOR_VEI');
                            SQL.Add('where  A.PTO_COLIGADA=' + QrColigadas.FieldByName('COD_COLIGADA').AsString);
                            SQL.Add('and (B.TVE_COD = 1 or B.TVE_COD = 13) AND A.PTO_PERIODO =  ' + QUOTEDSTR(QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString));
                            Sql.Add('And Pto_data >= ' + QuotedStr(DateToStr(VperiodoInicial)) + ' and Pto_Data <= ' + QuotedStr(DateToStr(VPeriodoFinal)));
                            if VChapaAtual > 0 then SQL.Add('AND P.COD_PRO = ' + INTTOSTR(VCHAPAATUAL));
                            if Vf1 > 0 then Sql.Add('And G.Tfu_cod = ' + IntToStr(Vf1));
                            if Vs1 > 0 then Sql.Add('And G.Tfu_secao = ' + IntToStr(Vs1));

                            SQL.Add('and Vei.VEI_LAYOUT = 2');
							             // SQL.Add('and G.TFU_CHECK = 1');
                            SQL.Add('GROUP   BY p.cod_pro, P.CHA_PRO, P.NOM_PRO');
                            SQL.Add('ORDER   BY CHAPA');

//                                                        FORMENTRADA.Memo1.Text:=SQL.Text;
                            OPEN;
                            if NOT EOF then
                                  BEGIN
                                         //INICIA GRAVA�AO DOS DADOS ENCONTRADOS NA TABELA TB_PTOREL01
                                         if OrigemProgressor='CR1' then
                                                   begin
                                                   FormCentralRelatorio.Gauge1.Progress:=0;
                                                   FormCentralRelatorio.Gauge1.MaxValue:=recordCount;
                                                   end;
                                         if OrigemProgressor='CR2' then
                                                   begin
                                                   FormCentralRelatorio.Gauge4.Progress:=0;
                                                   FormCentralRelatorio.Gauge4.MaxValue:=recordCount;
                                                   end;

                                          REPEAT
                                                if OrigemProgressor='CR1' then FormCentralRelatorio.Gauge1.progress:=FormCentralRelatorio.Gauge1.progress+1;
                                                if OrigemProgressor='CR2' then FormCentralRelatorio.Gauge4.progress:=FormCentralRelatorio.Gauge4.progress+1;
                                                Q2.CLOSE;
                                                Q2.SQL.Clear;
                                                VALOR:=Q.FieldByName('VALORREF').AsInteger;
                                                Vhora:=valor div 60;
                                                VMinuto:= valor mod 60;
                                                Q2.SQL.ADD('INSERT INTO TB_PTOREL01 (PREL01_CHAPA, PREL01_PROVENTO, PREL01_EVENTO, PREL01_DES, PREL01_REF, PREL01_VALOR, PREL01_HORA) ');
                                                Q2.SQL.Add('VALUES (');
                                                Q2.SQL.Add(Q.FieldByName('CODPRO').AsString                  + ',' +
                                                            '10'                                             + ',' +
                                                            '999'                                            + ',' +
                                                            QUOTEDSTR('SELETIVIDADE')                        + ',' +
                                                            Q.FieldByName('VALORREF').AsString               + ',' +
                                                            Q.FieldByName('VALORREF').AsString               + ',' +
                                                            quotedstr(
                                                            FormatFloat('000',VHora)+ ':' +
                                                            FormatFloat('00',VMinuto))            + ')');
                                                //FORMENTRADA.MEMO1.TEXT:=Q2.SQL.Text;
                                                Q2.ExecSQL;
                                                Q2.CLOSE;

                                              Q.NEXT;
                                          UNTIL EOF ;
                                  END;
                       END;
                       Q.Free;
                       Q2.Free;



end;

Function Tpai.SaldoParcial(Entrada: Ttime; Saida: TTime): String;
var ValorEntrada, ValorSaida : integer;
SaldoRefp: integer;
begin
  //
       ValorEntrada:= (HourOf(Entrada) * 60) + MinuteOf(Entrada);
       ValorSaida:=   (HourOf(Saida) * 60) + MinuteOf(Saida);
       if ValorEntrada > ValorSaida then ValorSaida:=ValorSaida +  1440;
       SaldoRefp:=ValorSaida-ValorEntrada;
       Result:= FormatFloat('00',SaldoRefp  div 60) +':'+ FormatFloat('00',SaldoRefp mod 60);

end;

end.
