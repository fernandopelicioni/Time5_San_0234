unit TelaBuscaFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBTables, Grids, DBGrids, ExtCtrls;

type
  TFormBuscaFuncionario = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Query1Matricula: TStringField;
    Query1Nome: TStringField;
    Query1Funcao: TStringField;
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuscaFuncionario: TFormBuscaFuncionario;

implementation

uses telalancamento;

{$R *.dfm}

procedure TFormBuscaFuncionario.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Query1.Filter:='matricula = ' + QuotedStr(Edit1.text);
Query1.Filtered:=true;
query1.open;
query1.refresh;
if edit1.Text = '' then query1.Filtered:=false;

end;

procedure TFormBuscaFuncionario.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Query1.Filter:='Nome = ' + QuotedStr(Edit2.text);
Query1.Filtered:=true;
query1.open;
query1.refresh;
if edit2.Text = '' then query1.Filtered:=false;

end;

procedure TFormBuscaFuncionario.BitBtn1Click(Sender: TObject);
begin
fORMLANCAMENTO.eDITfUNCIONARIO.tEXT:=Query1Matricula.TEXT;
cLOSE;
FormLancamento.EditFuncionario.SetFocus;
end;

procedure TFormBuscaFuncionario.BitBtn2Click(Sender: TObject);
begin
cLOSE;
end;

end.
