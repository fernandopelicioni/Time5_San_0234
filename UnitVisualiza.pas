unit UnitVisualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, DBTables, Grids, DBGrids;

type
  TFormVisualiza = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
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
    GroupBox2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Query2: TQuery;
    DataSource2: TDataSource;
    BitBtn1: TBitBtn;
    Query2MATRICULA: TStringField;
    Query2FUNCAO: TStringField;
    Query2OPERAVEICULO: TBooleanField;
    Query2Nome: TStringField;
    Query2SITUACAO: TStringField;
    Query2Inativo_inicio: TDateField;
    Query2Inativo_fim: TDateField;
    BitBtn2: TBitBtn;
    Table1: TTable;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVisualiza: TFormVisualiza;

implementation

{$R *.dfm}

procedure TFormVisualiza.FormActivate(Sender: TObject);
begin
query1.Open;
query2.Open;

end;

procedure TFormVisualiza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
query1.Close;
query2.Close;
table1.Close;
Action:=Cafree;

end;

procedure TFormVisualiza.BitBtn1Click(Sender: TObject);
begin
with query1 do begin
     close;
     sql.clear;
     sql.add('select * from MM_diario');
     Sql.Add('Where matricula = ' + quotedStr(Query2MATRICULA.text) + ' order by Dia_Mes_Ano asc;');
     Open;

     End;
table1.open;

end;

procedure TFormVisualiza.BitBtn2Click(Sender: TObject);
begin
table1.Delete;
Query1.close;
Query1.Open;
end;

end.

