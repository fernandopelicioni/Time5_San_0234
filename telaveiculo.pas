unit telaveiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnMan, ActnColorMaps, ExtCtrls, DBCtrls,
  Grids, DBGrids, DB, DBTables, CustomizeDlg, Mask;

type
  Tformveiculo = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    TwilightColorMap1: TTwilightColorMap;
    tabelaveiculo: TTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    CustomizeDlg1: TCustomizeDlg;
    TwilightColorMap2: TTwilightColorMap;
    btsalva: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn2: TBitBtn;
    tabelaveiculoNUMERO: TSmallintField;
    tabelaveiculoPlaca: TStringField;
    tabelaveiculoOperaCobrador: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    procedure btsalvaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formveiculo: Tformveiculo;

implementation

{$R *.dfm}

procedure Tformveiculo.btsalvaClick(Sender: TObject);
begin
tabelaveiculo.post;
btsalva.Enabled:=false;
bitbtn2.SetFocus;
end;

procedure Tformveiculo.BitBtn2Click(Sender: TObject);
begin
TABELAVEICULO.APPEND;
DBEDIT1.SETFOCUS;
end;

procedure Tformveiculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure Tformveiculo.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.enabled:=true;
   btsalva.setfocus;
   end;


end;

procedure Tformveiculo.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.enabled:=true;
   btsalva.setfocus;
   end;

end;

procedure Tformveiculo.FormShow(Sender: TObject);
begin
BITBTN2.SetFocus;
end;

end.
