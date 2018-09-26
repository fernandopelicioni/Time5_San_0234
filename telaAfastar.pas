unit telaAfastar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
  CJVEditDate, Buttons, Menus, DBCtrls;

type
  TFormAfastar = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1MATRICULA: TStringField;
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
    Query1Limite_horas: TStringField;
    GroupBox2: TGroupBox;
    Table1: TTable;
    Table1Matricula: TStringField;
    Table1Seq: TAutoIncField;
    Table1DIA_MES_ANO: TDateField;
    Table1ENTRADA: TStringField;
    Table1INICIO_INTERVALO: TStringField;
    Table1FIM_INTERVALO: TStringField;
    Table1SAIDA: TStringField;
    Table1TOTAL: TStringField;
    Table1TIPO_DIA: TStringField;
    Table1Total_intervalo: TStringField;
    Table1Dia_Mes_Ano1: TStringField;
    DataInicial: TCJVEditDate;
    Label1: TLabel;
    Label2: TLabel;
    DataFinal: TCJVEditDate;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    AfastarFuncionrio1: TMenuItem;
    Table2: TTable;
    DataSource2: TDataSource;
    Table2MATRICULA: TStringField;
    Table2FUNCAO: TStringField;
    Table2OPERAVEICULO: TBooleanField;
    Table2Nome: TStringField;
    Table2SITUACAO: TStringField;
    Table2INATIVO_INICIO: TDateField;
    Table2INATIVO_FIM: TDateField;
    ordena: TSpeedButton;
    Query1INATIVO_INICIO: TDateField;
    Query1INATIVO_FIM: TDateField;
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
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    procedure DataInicialKeyPress(Sender: TObject; var Key: Char);
    procedure DataFinalKeyPress(Sender: TObject; var Key: Char);
    procedure AfastarFuncionrio1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ordenaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
     tipo:string[1];
     situacao:string;
    { Public declarations }
  end;

var
  FormAfastar: TFormAfastar;

implementation

{$R *.dfm}

procedure TFormAfastar.DataInicialKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
     begin
     if Strtodate(datainicial.text) < StrToDate(Query2PERIODO_INICIAL.text) then
          begin
          ShowMessage('Data Fora do periodo de movimentação, verifique !');
          DataInicial.setfocus;
          end
          else
          DataFinal.Setfocus;
     end;
end;

procedure TFormAfastar.DataFinalKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
     begin
     if Strtodate(datafinal.text) > StrToDate(Query2PERIODO_final.text) then
          begin
          ShowMessage('Data Fora do periodo de movimentação, verifique !');
          Datafinal.setfocus;
          end
          else
          bitBtn1.Setfocus;
     end;

end;

procedure TFormAfastar.AfastarFuncionrio1Click(Sender: TObject);
begin
tipo:='I';
situacao:='Inativo';
DataInicial.setfocus;
end;

procedure TFormAfastar.BitBtn1Click(Sender: TObject);
var
dataregistro:tdate;
begin
dataregistro:=StrToDate(Datainicial.text);
table2.edit;
Table2INATIVO_INICIO.text:=DataInicial.text;
Table2INATIVO_fim.text:=DataFinal.text;
Table2SITUACAO.text:=tipo;
table2.Post;
while dataregistro <= StrToDate(DataFinal.Text) do
   begin
    with table1 do
        begin
        open;
        append;
        Table1Matricula.text   :=Query1MATRICULA.text;
        Table1Dia_mes_ano.text :=DateToStr(DataRegistro);
        Table1Tipo_Dia.text    :=Tipo;
        post;
        DataRegistro:=DataRegistro+1;
        end;

    end;
ShowMessage('Sua movimentação foi realizada com sucesso !!');
table2.Close;
table2.open;
Query1.Close;
Query1.Filtered:=false;
query1.open;
end;

procedure TFormAfastar.ordenaClick(Sender: TObject);
begin
if ordena.caption = 'Ordem Matricula' then
     begin
     ordena.caption:='Ordem Nome';
     query1.SQL.Clear;
     query1.sql.add('select * from Funcionario F, MK_funcao E where f.funcao = e.codigo order by f.matricula;');
     query1.Open;
     end
     else
     begin
     ordena.caption:='Ordem Matricula';
     query1.SQL.Clear;
     query1.sql.add('select * from Funcionario F, MK_funcao E where f.funcao = e.codigo order by f.nome;');
     query1.Open;
     end;
end;

procedure TFormAfastar.FormActivate(Sender: TObject);
begin
datainicial.text :=Query2PERIODO_INICIAL.text;
dataFinal.text   :=Query2PERIODO_Final.text;

end;

procedure TFormAfastar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormAfastar.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormAfastar.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Query1.Filter:='matricula = ' + QuotedStr(Edit1.text);
Query1.Filtered:=true;
query1.open;
query1.refresh;
table2.Close;
table2.open;
table2.refresh;
if edit1.Text = '' then query1.Filtered:=false;
end;

procedure TFormAfastar.Edit1Exit(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFormAfastar.Edit2Exit(Sender: TObject);
begin
edit2.text:=''

end;

procedure TFormAfastar.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Query1.Filter:='NOME = ' + QuotedStr(Edit2.text);
Query1.Filtered:=true;
query1.open;
query1.refresh;
table2.Close;
table2.open;
table2.refresh;
if edit2.Text = '' then query1.Filtered:=false;

end;

end.
