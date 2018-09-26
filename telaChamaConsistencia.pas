unit telaChamaConsistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, CJVEditDate, ExtCtrls, DB, DBTables,
  Gauges, DBCtrls, Grids, DBGrids;

type
  TFormchamaConsistencia = class(TForm)
    Panel1: TPanel;
    DataInicial: TCJVEditDate;
    DataFinal: TCJVEditDate;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Query2: TQuery;
    Query2Matricula: TStringField;
    Query2DIA_MES_ANO: TDateField;
    Query2TIPO_DIA: TStringField;
    Query1: TQuery;
    Query1MATRICULA: TStringField;
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
    s: TLabel;
    Gauge1: TGauge;
    Query2Seq: TIntegerField;
    Query2ENTRADA: TStringField;
    Query2INICIO_INTERVALO: TStringField;
    Query2FIM_INTERVALO: TStringField;
    Query2SAIDA: TStringField;
    Query2TOTAL: TStringField;
    Query2Total_intervalo: TStringField;
    Query2Dia_Mes_Ano1: TStringField;
    DataSource1: TDataSource;
    Table1: TTable;
    Query3: TQuery;
    Query3Matricula: TStringField;
    Query3Seq: TIntegerField;
    Query3DIA_MES_ANO: TDateField;
    Query3ENTRADA: TStringField;
    Query3INICIO_INTERVALO: TStringField;
    Query3FIM_INTERVALO: TStringField;
    Query3SAIDA: TStringField;
    Query3TOTAL: TStringField;
    Query3TIPO_DIA: TStringField;
    Query3Total_intervalo: TStringField;
    Query3Dia_Mes_Ano1: TStringField;
    Query3MATRICULA_1: TStringField;
    Query3FUNCAO: TStringField;
    Query3OPERAVEICULO: TBooleanField;
    Query3Nome: TStringField;
    Query3SITUACAO: TStringField;
    Query3INATIVO_INICIO: TDateField;
    Query3INATIVO_FIM: TDateField;
    Query3CODIGO: TStringField;
    Query3DESCRICAO: TStringField;
    Query3HORA_DIARIA: TStringField;
    Query3COMPESA: TBooleanField;
    Query3OPERA_VEICULO: TBooleanField;
    Query3REDUCAO_INTERVALO: TStringField;
    Query3LIMITE_HORAS: TStringField;
    Table1Matricula: TStringField;
    Table1Dia: TStringField;
    Table1Nome: TStringField;
    Table1Descricao: TStringField;
    Table1INTERVALO: TStringField;
    DataSource2: TDataSource;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataInicialKeyPress(Sender: TObject; var Key: Char);
    procedure DataFinalKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
     tiporelatorio: string;
    { Public declarations }
  end;

var
  FormchamaConsistencia: TFormchamaConsistencia;

implementation

uses TelaConsistenciaInterno;

{$R *.dfm}

procedure TFormchamaConsistencia.SpeedButton1Click(Sender: TObject);
var
dataregistro: TDate;
intervalo,dia,matriculaatual,nome,funcao:string;

begin
screen.cursor:=CrHourGlass;
table1.close;
table1.EmptyTable;
table1.open;
gauge1.Progress:=0;
dataregistro:=strtoDate(DataInicial.Text);
if tiporelatorio = 'consistencia' then
  begin
  while dataregistro <= StrtoDate(datafinal.text) do
    begin
     with query1 do
        begin
        open;
        first;
        if not eof then
          begin
          repeat
          matriculaatual:=    Query1MATRICULA.text;
          nome          :=    Query1Nome.text;
          funcao        :=    query1descricao.text;
          dia           :=    dateToStr(dataregistro);
          gauge1.Progress:=gauge1.progress+1;
          With query2 do
               begin
                close;
     //            Sql.Clear;
      //           sql.Add('select * from MM_diario ');
     //            Sql.Add('where Dia_Mes_Ano = ' + S.CAPTION + DateToStr(DataRegistro) + S.CAPTION + ' and Matricula = ' + S.CAPTION + MatriculaAtual + S.CAPTION );
     //            Sql.Add('Order By Matricula; ');

                 filter:='Dia_Mes_Ano = ' + s.caption + DateToStr(DataRegistro) + s.caption +
                ' and matricula = ' + s.caption + matriculaatual + s.caption;
                 filtered:=true;
                 open;
                 if query2.eof then
                       begin
                       table1.insert;
                       label3.caption:=   Query1Nome.text;
                       Table1Matricula.text  :=matriculaatual;
                       Table1Nome.text       :=nome;
                       Table1Dia.text        :=dia;
                       Table1Descricao.text  :=Funcao;
                       table1.Post;
                       end;
               End;
           Next;
           until eof;
          dataregistro:=dataregistro+1;
           end;
   end;
 end;
end;

////  intervalo
if tiporelatorio = 'intervalo' then
  begin
  while dataregistro <= StrtoDate(datafinal.text) do
    begin
    with query3 do
     begin
     filter:='Dia_Mes_Ano = ' + s.caption + DateToStr(DataRegistro) + s.caption ;
     filtered:=true;
     open;
     first;
     if not eof then
          begin
          repeat
          if (Query3Tipo_Dia.text = 'N') or (Query3Tipo_Dia.text = 'R') then
                  begin
                  matriculaatual:=    Query3MATRICULA.text;
                  nome          :=    Query3Nome.text;
                  dia           :=    dateToStr(dataregistro);
                  Intervalo     :=    TimeToStr(StrtoTime(Query3Fim_INTERVALO.text) - StrToTime(Query3Inicio_INTERVALO.text));
                         table1.open;
                         table1.insert;
                         Table1Matricula.text  :=matriculaatual;
                         Table1Nome.text       :=nome;
                         Table1Dia.text        :=dia;
                         table1Intervalo.text  :=Copy(intervalo,1,5);
                         table1.Post;
                         table1.close;
                         intervalo:=' ';
                  gauge1.Progress:=gauge1.progress+3;
                  end;
          Next;
          until eof;
          end;
   dataregistro:=dataregistro+1;
   end;
end;
end;
table1.Close;
gauge1.Progress:=700;

Application.CreateForm(TformconsistenciaInterno, formconsistenciaInterno);
if tiporelatorio = 'intervalo' then
        begin
        FormConsistenciainterno.qrlabel8.caption:='Intervalo:';
        FormConsistenciainterno.QRDBText3.DataField:='intervalo';
        end;
if tiporelatorio = 'consistencia' then
        begin
        FormConsistenciainterno.qrlabel8.caption:='Função';
        FormConsistenciainterno.QRDBText3.DataField:='descricao';
        end;
FormConsistenciaInterno.query1.Open;
Screen.Cursor:=CrDefault;
FormConsistenciaInterno.quickrep1.preview;
end;

procedure TFormchamaConsistencia.DataInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
      Begin
      Key:=#0;
      datafinal.text:=datainicial.text;
      DataFInal.setfocus;
      end;
end;

procedure TFormchamaConsistencia.DataFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
      Begin
      Key:=#0;
      if StrTodate(DataFInal.text) < StrToDate(dataInicial.text) then
          begin
          ShowMessage('Data Final não pode ser maior que final');
          DataInicial.setfocus;
          end;
      end;
end;

procedure TFormchamaConsistencia.FormShow(Sender: TObject);
begin
datainicial.text:=datetostr(now);
datainicial.setfocus;
end;

procedure TFormchamaConsistencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.close;
query2.close;
query3.close;
action:=cafree;
end;
procedure TFormchamaConsistencia.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
