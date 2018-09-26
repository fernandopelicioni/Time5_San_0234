unit TELAFUNCIONARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ActnMan, ActnColorMaps, DBTables,
  Buttons, Grids, DBGrids, ExtCtrls, Mask, XPMan;

type
  TFORMFUNCIONARIO = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
    DBLookupComboBox1: TDBLookupComboBox;
    QrFuncao: TQuery;
    DataSource2: TDataSource;
    QrFuncaoCODIGO: TStringField;
    QrFuncaoDESCRICAO: TStringField;
    QrFuncaoHORA_DIARIA: TStringField;
    QrFuncaoCOMPESA: TBooleanField;
    XPManifest1: TXPManifest;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    tabelafuncionarioMATRICULA: TStringField;
    tabelafuncionarioFUNCAO: TStringField;
    tabelafuncionarioOPERAVEICULO: TBooleanField;
    tabelafuncionarioNome: TStringField;
    tabelafuncionarioSITUACAO: TStringField;
    tabelafuncionarioINATIVO_INICIO: TDateField;
    tabelafuncionarioINATIVO_FIM: TDateField;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMFUNCIONARIO: TFORMFUNCIONARIO;

implementation

{$R *.dfm}

procedure TFORMFUNCIONARIO.BitBtn2Click(Sender: TObject);
begin
btsalva.Enabled:=true;
tabelafuncionario.Cancel;
tabelafuncionario.Append;
dbedit1.setfocus;

end;

procedure TFORMFUNCIONARIO.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure TFORMFUNCIONARIO.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBLookupComboBox1.setfocus;
   end;
end;

procedure TFORMFUNCIONARIO.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.Enabled:=true;
   btsalva.setfocus;
   end;
end;

procedure TFORMFUNCIONARIO.btsalvaClick(Sender: TObject);
begin
tabelafuncionario.Post;
//BTSALVA.ENABLED:=FALSE;
BITBTN2.SETFOCUS;
end;

procedure TFORMFUNCIONARIO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TABELAFUNCIONARIO.CLOSE;
end;

procedure TFORMFUNCIONARIO.FormShow(Sender: TObject);
begin
tabelafuncionario.Open;
end;

procedure TFORMFUNCIONARIO.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
     begin
     if DBLookupComboBox1.text = ' ' then
        begin
        ShowMessage('Escolha Uma função !!');
        DBLookupComboBox1.setfocus;
        end
        else
        btsalva.setfocus;
        end;
end;

procedure TFORMFUNCIONARIO.BitBtn1Click(Sender: TObject);
begin
tabelafuncionario.Edit;
if tabelafuncionarioSITUACAO.Text <> 'D' then
     begin
     tabelafuncionarioSITUACAO.Text:='D';
     tabelafuncionarioINATIVO_INICIO.text:='';
     tabelafuncionarioINATIVO_FIM.text:='';
     end;
TabelaFuncionario.post;
end;

end.
