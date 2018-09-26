unit TELAFUNCAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ActnMan, ActnColorMaps, DBTables,
  Buttons, Grids, DBGrids, ExtCtrls, Mask;

type
  TFormFuncao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    tabelafuncionario: TTable;
    TwilightColorMap1: TTwilightColorMap;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    tabelafuncionarioCODIGO: TStringField;
    tabelafuncionarioDESCRICAO: TStringField;
    tabelafuncionarioHORA_DIARIA: TStringField;
    tabelafuncionarioCOMPESA: TBooleanField;
    DBRadioGroup1: TDBRadioGroup;
    tabelafuncionarioOPERA_VEICULO: TBooleanField;
    DBRadioGroup2: TDBRadioGroup;
    tabelafuncionarioREDUCAO_INTERVALO: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    tabelafuncionarioLIMITE_HORAS: TStringField;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFuncao: TFormFuncao;

implementation

{$R *.dfm}

procedure TFormFuncao.BitBtn2Click(Sender: TObject);
begin
btsalva.Enabled:=true;
tabelafuncionario.Cancel;
tabelafuncionario.Append;
dbedit1.setfocus;

end;

procedure TFormFuncao.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure TFormFuncao.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   dbedit3.setfocus;
   end;
end;

procedure TFormFuncao.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.Enabled:=true;
   btsalva.setfocus;
   end;
end;

procedure TFormFuncao.btsalvaClick(Sender: TObject);
begin
tabelafuncionario.Post;
BTSALVA.ENABLED:=true;
BITBTN2.SETFOCUS;
end;

procedure TFormFuncao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TABELAFUNCIONARIO.CLOSE;
end;

procedure TFormFuncao.FormShow(Sender: TObject);
begin
tabelafuncionario.Open;
end;

procedure TFormFuncao.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   dbedit4.setfocus;
   end;
end;

procedure TFormFuncao.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DbEdit5.setfocus;
   end;

end;

procedure TFormFuncao.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   BtSalva.Enabled:=true;
   DbRadioGroup1.setfocus;
   end;

end;

end.
