unit TelaChamaDuplicidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Buttons, StdCtrls, Mask, CJVEditDate, ExtCtrls,
  Gauges, XPMan;

type
  TFormDuplicidade = class(TForm)
    Panel1: TPanel;
    EditMatricula: TCJVEditDate;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Query1: TQuery;
    Busca: TQuery;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1CHAPA1: TStringField;
    Table1NOME1: TStringField;
    Table1FUNCAO1: TStringField;
    Table1ENTRADA1: TStringField;
    Table1SAIDA1: TStringField;
    Table1VEICULO: TStringField;
    Table1CHAPA2: TStringField;
    Table1NOME2: TStringField;
    Table1FUNCAO2: TStringField;
    Table1ENTRADA2: TStringField;
    Table1SAIDA2: TStringField;
    Table1DUPLICIDADE: TStringField;
    s: TLabel;
    BuscaMatricula: TStringField;
    BuscaSequencial: TIntegerField;
    BuscaDIA_MES_ANO: TDateField;
    BuscaVEICULO_1: TStringField;
    BuscaENTRADA_1: TStringField;
    BuscaENTRADA_2: TStringField;
    BuscaENTRADA_3: TStringField;
    BuscaENTRADA_4: TStringField;
    BuscaSAIDA_1: TStringField;
    BuscaSAIDA_2: TStringField;
    BuscaSAIDA_3: TStringField;
    BuscaSAIDA_4: TStringField;
    BuscaVEICULO_2: TStringField;
    BuscaVEICULO_3: TStringField;
    BuscaVEICULO_4: TStringField;
    BuscaTOTAL_1: TStringField;
    BuscaTOTAL_2: TStringField;
    BuscaTOTAL_3: TStringField;
    BuscaTOTAL_4: TStringField;
    BuscaTOTAL_GERAL: TStringField;
    BuscaTIPO_DIA: TStringField;
    BuscaINTERVALO: TStringField;
    BuscaMATRICULA_1: TStringField;
    BuscaFUNCAO: TStringField;
    BuscaOPERAVEICULO: TBooleanField;
    BuscaNome: TStringField;
    BuscaSITUACAO: TStringField;
    BuscaINATIVO_INICIO: TDateField;
    BuscaINATIVO_FIM: TDateField;
    BuscaCODIGO: TStringField;
    BuscaDESCRICAO: TStringField;
    BuscaHORA_DIARIA: TStringField;
    BuscaCOMPESA: TBooleanField;
    BuscaOPERA_VEICULO: TBooleanField;
    BuscaREDUCAO_INTERVALO: TStringField;
    BuscaLIMITE_HORAS: TStringField;
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
    Gauge1: TGauge;
    XPManifest1: TXPManifest;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDuplicidade: TFormDuplicidade;

implementation

uses TelaRelatorioExternoDuplicidade;

{$R *.dfm}

procedure TFormDuplicidade.SpeedButton1Click(Sender: TObject);
var
funcao1,funcao2,comparachapa,comparaveiculo : string;
comparaentrada, comparasaida: tTime;
vazio : string;
begin
table1.EmptyTable;
vazio:= ' ';
gauge1.progress:=gauge1.progress+1;
with query1 do
     begin
     close;
     filter:='Dia_mes_ano = ' + s.caption + editmatricula.Text + s.caption;
     filtered:=true;
     open;
     first;
     if not eof then
          begin
          repeat
          gauge1.progress:=gauge1.progress+1;
          ComparaChapa     := Query1Matricula.text;
          comparaentrada   := strtoTime(Query1ENTRADA_1.text);
          comparaSaida     := strtoTime(Query1Saida_1.text);
          ComparaVeiculo   := Query1VEICULO_1.text;
          funcao1          := Query1Descricao.text;

             with busca do
               begin
               close;
               filter:='Dia_mes_ano = ' + s.caption + editmatricula.Text + s.caption;
               filtered:=true;
               open;
               first;
               if not eof then
                    begin
                    repeat
                    funcao2:=buscaDescricao.text;
                    if (comparaveiculo = BuscaVEICULO_1.text) then
                         begin
                         if (ComparaEntrada > StrToTime(BuscaENTRADA_1.text)) and (comparaSaida < StrToTime(BuscaSAIDA_1.text)) then
                             begin
                             gauge1.progress:=gauge1.Progress +1;
                             if Query1Matricula.text <> BuscaMatricula.text then
                                  begin
                                  table1.Open;
                                  table1.insert;
                                  Table1CHAPA1.Text     :=comparachapa;
                                  Table1NOME1.text      :=Query1Nome.text;
                                  Table1FUNCAO1.text    :=Query1Descricao.text;
                                  Table1ENTRADA1.text   :=Query1Entrada_1.text;
                                  Table1SAIDA1.text     :=Query1Saida_1.text;
                                  Table1VEICULO.text    :=ComparaVeiculo;
                                  Table1CHAPA2.text     :=BuscaMatricula.text;
                                  Table1NOME2.text      :=BuscaNome.text  ;
                                  Table1FUNCAO2.text    :=BuscaDescricao.text;
                                  Table1ENTRADA2.text   :=BuscaENTRADA_1.text;
                                  Table1SAIDA2.text     :=BuscaSaida_1.text;
                                  if (Table1veiculo.text <> '') and (funcao1=funcao2) then
                                       table1.post
                                       else
                                       table1.cancel;
                                  table1.close;
                                  end;
                             end;
/// aqui confere se sai antes de alguem entrar
                         if (ComparaSaida > StrToTime(BuscaENTRADA_1.text)) and (comparaSaida < StrToTime(BuscaSAIDA_1.text)) then
                             begin
                             if comparachapa <> BuscaMatricula.text then
                                  begin
                                  table1.Open;
                                  table1.insert;
                                  Table1CHAPA1.Text     :=comparachapa;
                                  Table1NOME1.text      :=Query1Nome.text;
                                  Table1FUNCAO1.text    :=Query1Descricao.text;
                                  Table1ENTRADA1.text   :=Query1Entrada_1.text;
                                  Table1SAIDA1.text     :=Query1Saida_1.text;
                                  Table1VEICULO.text    :=Query1Veiculo_1.text;
                                  Table1CHAPA2.text     :=BuscaMatricula.text;
                                  Table1NOME2.text      :=BuscaNome.text  ;
                                  Table1FUNCAO2.text    :=BuscaDescricao.text;
                                  Table1ENTRADA2.text   :=BuscaENTRADA_1.text;
                                  Table1SAIDA2.text     :=BuscaSaida_1.text;
                                  if (Table1veiculo.text <> '' ) and (funcao1=funcao2) then
                                       table1.post
                                       else
                                       table1.cancel;
                                  table1.close;
                                  end;
                             end;

                         end;
                    gauge1.progress:=gauge1.Progress +1;
                    next;
                    until eof;
                   end;

               end;
          next;
          until eof
          end;
     end;
close;
Application.CreateForm(TformRelatorioExternoDuplicidade, formRelatorioExternoDuplicidade);
formRelatorioExternoDuplicidade.query1.open;
formRelatorioExternoDuplicidade.quickrep1.preview;

end;

end.
