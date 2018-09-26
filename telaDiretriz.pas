unit telaDiretriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, DB, StdCtrls, Mask, DBCtrls, DBTables, ExtCtrls, Buttons,
  ActnMan, ActnColorMaps;

type
  TFormDiretriz = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Table1: TTable;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Table1Sequencial: TAutoIncField;
    Table1JORNADA_MAXIMA: TStringField;
    Table1INICIO_ADCIONAL: TStringField;
    Table1FIM_ADCIONAL: TStringField;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    XPManifest1: TXPManifest;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    Table1INTERVALO_TIPO: TStringField;
    Table1COM_PRIMEIRA: TDateField;
    Table1COM_SEGUNDA: TDateField;
    Table1COM_TERCEIRA: TDateField;
    Table1COM_QUARTA: TDateField;
    Table1COM_QUINTA: TDateField;
    Table1PERIODO_INICIAL: TDateField;
    Table1PERIODO_FINAL: TDateField;
    Table1FERIADO: TStringField;
    Table1FALTA: TStringField;
    Table1SUSPENSAO: TStringField;
    Table1HORAEXTRA: TStringField;
    Table1REFLEXOEXTRA: TStringField;
    Table1ADICIONAL: TStringField;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    TwilightColorMap1: TTwilightColorMap;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDiretriz: TFormDiretriz;

implementation

{$R *.dfm}

procedure TFormDiretriz.BitBtn1Click(Sender: TObject);
begin
BitBtn3.Enabled:=true;
DBEdit1.ReadOnly:=false;
table1.Edit;
bitbtn2.Enabled:=true;
DbEdit1.setfocus;
end;

procedure TFormDiretriz.BitBtn2Click(Sender: TObject);
begin
bitbtn2.Enabled:=false;
table1.Post;
close;
end;

procedure TFormDiretriz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
end;

procedure TFormDiretriz.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
     key:=#0;
     Perform(WM_NextDlgCtl,0,0);
     end;
end;

procedure TFormDiretriz.BitBtn3Click(Sender: TObject);
begin
ShowMessage('Espero que voce tenha feito um backup manual, voce esta apagando tudo referente ao mes em questão');
DbEdit14.enabled:=true;
DbEdit15.enabled:=true;
DbEdit14.setfocus;

end;

end.
