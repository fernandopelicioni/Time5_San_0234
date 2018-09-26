unit TelaProventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Mask, CJVEditDate, DB, DBTables,
  Gauges, XPMan, Grids, DBGrids, DBCtrls;

type
  TFormProventos = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataInicial: TCJVEditDate;
    Label1: TLabel;
    DataFinal: TCJVEditDate;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    s: TLabel;
    Query2: TQuery;
    Query2Sequencial: TIntegerField;
    Query2COM_PRIMEIRA: TDateField;
    Query2COM_SEGUNDA: TDateField;
    Query2COM_TERCEIRA: TDateField;
    Query2COM_QUARTA: TDateField;
    Query2COM_QUINTA: TDateField;
    Query2JORNADA_MAXIMA: TStringField;
    Query2INICIO_ADCIONAL: TStringField;
    Query2FIM_ADCIONAL: TStringField;
    Query2INTERVALO_TIPO: TStringField;
    Query2PERIODO_INICIAL: TDateField;
    Query2PERIODO_FINAL: TDateField;
    Query2FERIADO: TStringField;
    Query2FALTA: TStringField;
    Query2SUSPENSAO: TStringField;
    Query2HORAEXTRA: TStringField;
    Query2REFLEXOEXTRA: TStringField;
    Query2ADICIONAL: TStringField;
    Gauge1: TGauge;
    XPManifest1: TXPManifest;
    Query1Matricula: TStringField;
    Query1Seq: TIntegerField;
    Query1DIA_MES_ANO: TDateField;
    Query1ENTRADA: TStringField;
    Query1INICIO_INTERVALO: TStringField;
    Query1FIM_INTERVALO: TStringField;
    Query1SAIDA: TStringField;
    Query1TOTAL: TStringField;
    Query1TIPO_DIA: TStringField;
    Query1Total_intervalo: TStringField;
    Query1Dia_Mes_Ano1: TStringField;
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
    Query1LIMITE_HORAS: TStringField;
    Query3: TQuery;
    Query3MATRICULA: TStringField;
    Query3FUNCAO: TStringField;
    BitBtn1: TBitBtn;
    Query4: TQuery;
    Query4Sequencial: TIntegerField;
    Query4COM_PRIMEIRA: TDateField;
    Query4COM_SEGUNDA: TDateField;
    Query4COM_TERCEIRA: TDateField;
    Query4COM_QUARTA: TDateField;
    Query4COM_QUINTA: TDateField;
    Query4JORNADA_MAXIMA: TStringField;
    Query4INICIO_ADCIONAL: TStringField;
    Query4FIM_ADCIONAL: TStringField;
    Query4INTERVALO_TIPO: TStringField;
    Query4PERIODO_INICIAL: TDateField;
    Query4PERIODO_FINAL: TDateField;
    Query4FERIADO: TStringField;
    Query4FALTA: TStringField;
    Query4SUSPENSAO: TStringField;
    Query4HORAEXTRA: TStringField;
    Query4REFLEXOEXTRA: TStringField;
    Query4ADICIONAL: TStringField;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label3: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1Matricula: TStringField;
    Table1HORAEXTRA: TStringField;
    Table1ADICIONAL: TStringField;
    Table1FERIADO: TStringField;
    Table1FALTA: TStringField;
    Table1REFLEXO: TStringField;
    Table1SUSPENSAO: TStringField;
    Table1NOME: TStringField;
    Table1FUNCAO: TStringField;
    DataSource2: TDataSource;
    DBText1: TDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataInicialKeyPress(Sender: TObject; var Key: Char);
    Function AdicionalNoturno(HorarioEntrada:string; HorarioSaida:String) : string;
    Function HorasExtras (HoraTrabalhadaDia: string; HoraPogramadaDia:string): string;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProventos: TFormProventos;

implementation

uses TelaModule, TelaEventosExportacao;

{$R *.dfm}

procedure TFormProventos.SpeedButton1Click(Sender: TObject);
var
recebefuncao, recebeparametro:string;
horagravatotal,minutogravatotal,horagrava,minutograva:real;
minut,HDiaria:ttime;
minutos, horas: word;
totaladicional:double;
conversorhora,conversorminuto,diaTrabalhado:word;
Ventrada,Vsaida,VInicio,Vfim,vextra1,vextra2:string;
dia,VarHoraDiaria:real;
horatrabalhada,tot1:integer;
TipoHora,NomeArqs,linha1,linha2,linha3,linha4:string;
HoraExtra1,HoraExtra2, HoraExtra3,HoraExtra4,HoraExtra5,HoraExtraMEs,HoraAdicional :ttime;
Feriado,falta,suspensao: word;
registroatual,LINHAhORA,linhaextra,linhaadicional,h:string;
ArqTxt: TextFile;
begin

table1.EmptyTable;
DECIMALSEPARATOR:='.';
Gauge1.Progress := 1;
If RadioGroup1.ItemIndex = 0 then
    begin
    ShowMessage('Insira disquete no drive e clique em OK !');
    NomeArqs:='A:\'+Edit1.text;
    end;
If RadioGroup1.ItemIndex = 1 then
    begin
    ShowMessage('Arquivo será gravado no Disco Local !!!');
    NomeArqs:='c:\'+Edit1.text;
    end;
AssignFile(ArqTxt, NOMEARQS);
Rewrite(ArqTxt);

with query3 do
     begin
     open;
     first;
     if not eof then
     begin
     repeat

         registroatual:=Query3MATRICULA.text;
         Totaladicional:=0;
//         Gauge1.Progress := 9;

         with query1 do
              begin
              DiaTrabalhado:=30;
              close;
              filter:='Dia_Mes_Ano >= ' + s.caption +  datainicial.Text + s.caption +
                      ' And Dia_Mes_Ano <= ' + s.caption + datafinal.text + s.caption +
                      ' and Matricula = ' + S.CAPTION + RegistroAtual + s.caption;

              filtered:=true;
              open;
              first;
//              RegistroAtual:=Query1Matricula.text;
              if not eof then
                  begin
                  Repeat
  // confere feriados no mes
 //vefifica funcionario ativo
                  If Query1Tipo_Dia.Text = 'I' then
                       DiaTrabalhado:=DiaTrabalhado - 1 ;
                  TipoHora:=Query1Hora_Diaria.TExt;
                  if diaTrabalhado > 30 then DiaTrabalhado := 30;

// verifica adcional noturno
                  // chama funcao

                  if (Query1Tipo_dia.text = 'N') or (Query1Tipo_dia.text = 'R') then
                        begin
                        Ventrada :=query1entrada.text;
                        Vsaida   :=query1Saida.text;
                        Vextra1 :='00:00';
                        Vextra2 :='00:00';
                        Vfim    :='00:00';
                        VInicio :='00:00';
                        RecebeFuncao:=AdicionalNoturno(ventrada,vsaida);
//                       horas   :=(horas+strtoint(copy(recebefuncao,1,2)))-5;
//                       Minutos :=minutos+strtoint(copy(recebefuncao,4,2));
                        TotalAdicional:=totaladicional+(strtofloat(recebefuncao));
                         end;

//vefifica compensação
                  Hdiaria:=StrtoTime(Query1HORA_DIARIA.text);
                  if Query1COMPESA.text = 'True' then
                         begin

                         if (Query1TIPO_DIA.text = 'N') or (Query1TIPO_DIA.text = 'R')  then
                              begin
                              // primeira semana
                              If (StrToDate(Query1Dia_Mes_Ano.text) >= StrToDate(Query2COM_PRIMEIRA.text))
                                      and
                                 (StrToDate(Query1Dia_Mes_Ano.text) < StrToDate(Query2COM_Segunda.text)) then
                                    begin
                                    HoraExtra1:=HoraExtra1+(strToTime(Query1TOTAL.Text))- (HDiaria); //StrToTime(Query1HORA_DIARIA.text));
                                    End;
                                // segunda semana
                               If (StrToDate(Query1Dia_Mes_Ano.text) >= StrToDate(Query2COM_Segunda.text))
                                      and
                                 (StrToDate(Query1Dia_Mes_Ano.text) < StrToDate(Query2COM_Terceira.text)) then
                                    begin
                                    HoraExtra2 :=HoraExtra2+(strToTime(Query1TOTAL.Text)-StrToTime(Query1HORA_DIARIA.text));
                                    End;
                                // Terceira semana
                               If (StrToDate(Query1Dia_Mes_Ano.text) >= StrToDate(Query2COM_Terceira.text))
                                      and
                                 (StrToDate(Query1Dia_Mes_Ano.text) < StrToDate(Query2COM_Quarta.text)) then
                                    begin
                                    HoraExtra3 := HoraExtra3 + (strToTime(Query1TOTAL.Text)-StrToTime(Query1HORA_DIARIA.text));
                                    End;
                                // Quarta semana
                               If (StrToDate(Query1Dia_Mes_Ano.text) >= StrToDate(Query2COM_Quarta.text))
                                      and
                                 (StrToDate(Query1Dia_Mes_Ano.text) < StrToDate(Query2COM_Quinta.text)) then
                                    begin
                                    HoraExtra4:=HoraExtra4+(strToTime(Query1TOTAL.Text)-StrToTime(Query1HORA_DIARIA.text));
                                    End;
                                  // Quinta semana
                               If (StrToDate(Query1Dia_Mes_Ano.text) >= StrToDate(Query2COM_Quinta.text))
                                      and
                                 (StrToDate(Query1Dia_Mes_Ano.text) <= StrToDate(Query2PERIODO_FINAL.text)) then
                                    begin
                                    HoraExtra5:=HoraExtra5+(strToTime(Query1TOTAL.Text)-StrToTime(Query1HORA_DIARIA.text));
                                    End;
                              end
                              Else
                              HoraExtraMes:= HoraExtraMes+(strToTime(Query1TOTAL.Text)-StrToTime(Query1HORA_DIARIA.text));

                         end;
                  if Query1TIPO_DIA.text = 'R' then
                       Feriado:=feriado+1;
                  if Query1TIPO_DIA.text = 'T' then
                      Falta:=falta+1;
                  if Query1TIPO_DIA.text = 'S' then
                      suspensao:=suspensao+1;
                  next;
                  Until eof;
                  End;

// GRAVA HORAS TRABALHADAS
                     table1.Open;
                     table1.insert;
                     Table1Matricula.text:=registroatual;
                     Table1Nome.text     :=Query1Nome.text;
               if DiaTrabalhado < 30 then
                     begin
                      VarHoraDiaria:=07.33;

                    {
                     if StrToTime(TipoHora) = StrtoTime('07:20') then
                          VarHoraDiaria:=07.33;
                     if StrToTime(TipoHora) = StrtoTime('06:20') then
                          VarHoraDiaria:=06.33;
                     if StrToTime(TipoHora) = StrtoTime('08:50') then
                          VarHoraDiaria:=08.83;
                     if StrToTime(TipoHora) = StrtoTime('12:00') then
                          VarHoraDiaria:=12.00;}
                     tot1:=30-DiaTrabalhado;
                     dia:=StrToFloat('220.00') - ((VarHoraDiaria*tot1));
                     LinhaHora:=FormatFloat('0000',StrToInt(RegistroAtual)) + '                    0 ' +
                                            '  1'     +   '           0.00         ' + FormatFloat('000.00',dia)+'N';
                     Writeln(ArqTxt, LinhahORA);
                     end
                     else
                     begin
                     LinhahORA:=FormatFloat('0000',StrToInt(registroatual)) + '                    0 ' +
                                            '  1'     +   '           0.00         '  + '220.00' + 'N';
                     Writeln(ArqTxt, LinhahORA);
                     end;
//Grava extra
              TimeSeparator:='.';
              horagrava   :=horagrava+StrtoInt(copy(Timetostr(horaExtra1),1,2));
              horagrava   :=horagrava+StrtoInt(copy(Timetostr(horaExtra2),1,2));
              horagrava   :=horagrava+StrtoInt(copy(Timetostr(horaExtra3),1,2));
              horagrava   :=horagrava+StrtoInt(copy(Timetostr(horaExtra4),1,2));
              horagrava   :=horagrava+StrtoInt(copy(Timetostr(horaExtra5),1,2));
              Minutograva :=MinutoGrava + StrtoInt(copy(Timetostr(horaExtra1),4,2));
              Minutograva :=Minutograva + StrtoInt(copy(Timetostr(horaExtra2),4,2));
              Minutograva :=Minutograva + StrtoInt(copy(Timetostr(horaExtra3),4,2));
              Minutograva :=Minutograva + StrtoInt(copy(Timetostr(horaExtra4),4,2));
              Minutograva :=Minutograva + StrtoInt(copy(Timetostr(horaExtra5),4,2));
              HoraGravaTotal:=horagrava + (minutograva/60);
              Minut:=(HoraExtra1+HoraExtra2+HoraExtra3+HoraExtra4+HoraExtra5);
              MinutogravaTotal:=StrToInt(Copy(TimeToStr(Minut),4,2));

              LinhaExtra:= FormatFloat('0000',StrToInt(registroatual)) + '                    0 ' +
                      Query2HoraExtra.text + '           0.00          '  + FormatFloat('00',HoraGravaTotal) + '.' + FormatFloat('00',MinutoGravaTotal)+'N';

      //        Copy(TimeToStr(HoraExtra1+HoraExtra2+HoraExtra3+HoraExtra4+HoraExtra5),1,5) + 'N';
                  if  (horaGravaTotal > 0) or (MinutoGravaTotal > 0) then
                            Writeln(ArqTxt, LinhaExtra) ;
              TimeSeparator:=':';
// grava extra na tabela
              Table1HORAEXTRA.text:=FormatFloat('00',HoraGravaTotal)+',' + FormatFloat('00',MinutoGravaTotal);

{//Grava reflexo de hora extra
              TimeSeparator:='.';
              LinhaExtra:= FormatFloat('0000',StrToInt(registroatual)) + '                    0 ' +
                      Query2Reflexoextra.text + '           0.00          '  +
              Copy(TimeToStr(HoraExtra1+HoraExtra2+HoraExtra3+HoraExtra4+HoraExtra5),1,5) + 'N';
                  if (HoraExtra1+HoraExtra2+HoraExtra3+HoraExtra4+HoraExtra5) > 0 then
                           Writeln(ArqTxt, LinhaExtra) ;
              TimeSeparator:=':';  }

// GRAVAR ADICIONAL NOTURNO
               If totaladicional > 0 then
               begin
                   LinhaAdicional:=FormatFloat('0000',StrToInt(RegistroAtual)) +  '                    0 ' +
                         Query2Adicional.Text + '           0.00         ' + FormatFloat('000.00',TotalAdicional) + 'N';
                   Writeln(ArqTxt, LinhaAdicional) ;
                   Table1ADICIONAL.text:=FormatFloat('000.00',TotalAdicional);
               end;
// Grava Feriado
              if feriado > 0 then
                       begin
                      Linha1:=FormatFloat('0000',StrToInt(registroatual)) + '                    0 ' +
                      Query2FERIADO.text + '           0.00           '  + FormatFloat('##0.00',feriado) + 'N';
                      Writeln(ArqTxt, Linha1);
                      Table1FERIADO.text:=InttoStr(feriado);
                      end;
// grava Falta
               if falta > 0 then
                       begin
                       Linha2:=FormatFloat('0000',StrToInt(registroatual)) + '                    0 ' +
                       Query2Falta.text + '           0.00           '  + FormatFloat('##0.00',Falta*2)+'N';
                       Writeln(ArqTxt, Linha2);
                       Table1falta.text:=inttoStr(falta*2);
                       end;

               // grava Suspensao
               if Suspensao > 0 then
                        begin
                        Linha3:=FormatFloat('0000',StrToInt(registroatual)) + '                    0 ' +
                        Query2Suspensao.text + '           0.00           '  + FormatFloat('##0.00',suspensao)+'N';
                        Writeln(ArqTxt, Linha3);
                        Table1SUSPENSAO.text:=IntTostr(suspensao);
                        end;
               falta     :=0;
               feriado   :=0;
               suspensao :=0;
               horas     :=0;
               Minutos   :=0;
               horagrava :=0;
               minutograva:=0;
               HoraExtra1:=0;
               HoraExtra2:=0;
               HoraExtra3:=0;
               HoraExtra4:=0;
               HoraExtra5:=0;
               TipoHora:='0';
               VarHoraDiaria:=0;
               totaladicional:=0;
               End;

     NExt;
     Until eof;
     End;
     End;
     gauge1.Progress:=295;
     table1.Post;
     table1.close;
     CLoseFile(ArqTxt);
     gauge1.Progress:=300;
if messagedlg('Arquivo Gerado com Sucesso, Deseja Imprimir relatorio de conferencia ?,'+#13+
              'Sim ou não? Rapido, não tenho o dia todo',mtConfirmation,[mbno, mbyes],0)
              =mryes then begin
                 Application.CreateForm(TFormEventosExportacao, FormEventosExportacao);
                 FormEventosExportacao.query1.open;
                 FormEventosExportacao.QuickRep1.Preview;
                 end
                 else
                 close;
end;

procedure TFormProventos.DataInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    DataFinal.SetFocus;
    End;
end;

Function TFOrmProventos.AdicionalNoturno(HorarioEntrada:string; HorarioSaida:String): String;
      var
      HEnt,HSAI,horatotal:double;
      MEnt,MSAI          :double;
begin
MEnt:=StrToInt(copy(HorarioEntrada,4,2))  ;
MSai:=StrToInt(copy(Horariosaida,4,2));
hEnt:=(StrToInt(copy(HorarioEntrada,1,2))*60)+ment  ;
HSai:=(StrToInt(copy(HorarioSaida  ,1,2))*60)+msai;
horatotal:=0;
if (Hsai >= 1320) then
      begin
      if hent < 1320 then
          Horatotal:=horatotal+(Hsai - 1320)
          else
          Horatotal:=horatotal+(hsai - hent);
      end;
if Hsai < 420  then
       begin
       if hsai < 300 then
          begin
          Horatotal:=HoraTotal+(Hsai-0);
          end;

       if hsai >= 300 then
           begin
           horatotal:=horatotal    + (300 - 0)
           end;
       if Hent      < 1440 then
           begin
           if  hent < 1320  then
               HoraTotal:=HoraTotal + (1440 - 1320)
               else
               HoraTotal:= HoraTotal + (1440 - Hent);
           end;
      End;
if Hent < 300 then
    HoraTotal:= 300 - HEnt;
// se trabalhou integral recebe tudo
//if (hsai > 300) and (hent < 1320) then
//     horatotal:=420;
result:=FormatFloat('000.00',(horatotal/60));




end;
procedure TFormProventos.FormActivate(Sender: TObject);
begin
datainicial.text :=Query4PERIODO_INICIAL.text;
dataFinal.text   :=Query4PERIODO_Final.text;
end;

procedure TFormProventos.SpeedButton2Click(Sender: TObject);
begin
close;
end;
Function TFormProventos.HorasExtras (HoraTrabalhadaDia: string; HoraPogramadaDia:string): string;
var
extra: real;
hora,minuto: word;
Vhoratrabalhada,Vprogramada: Ttime;
begin
 ///...
Extra:=Strtotime(HoraTrabalhadadia)-Strtotime(HoraPogramadaDia);
result:=FormatFloat('##0.00',extra);


end;


end.

