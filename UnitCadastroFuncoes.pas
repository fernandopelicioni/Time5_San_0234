unit UnitCadastroFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, XPMan, ActnMan, ActnColorMaps, StdCtrls,
  DB, Grids, DBGrids, DBCtrls, Mask, CustomizeDlg, ExtCtrls;

type
  TFormCadastroFuncao = class(TForm)
    GroupBox1: TGroupBox;
    XPManifest1: TXPManifest;
    DtCadastro: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DtPerfilFuncao: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncao: TFormCadastroFuncao;

implementation

uses UnitpAI;

{$R *.dfm}

procedure TFormCadastroFuncao.BitBtn1Click(Sender: TObject);
begin
DTCadastro.Dataset.Append;
GroupBox1.Enabled:=true;
DbEdit1.SetFocus;

end;

procedure TFormCadastroFuncao.BitBtn2Click(Sender: TObject);
begin
      DTCadastro.Dataset.Cancel;

end;

procedure TFormCadastroFuncao.BitBtn3Click(Sender: TObject);
begin
      if (DtCadastro.DataSet.State = DsInsert) or (DtCadastro.DataSet.State = DsEdit)then
           begin
                DTCadastro.Dataset.Post;
                GroupBox1.Enabled:=False;
           end;
end;

procedure TFormCadastroFuncao.BitBtn4Click(Sender: TObject);
begin
      if messageDlg('Deseja realmente apagar o registro selecionado ?                        ' ,mtConfirmation,[mbno, mbyes],0) = mryes then
           begin
                DTCadastro.Dataset.delete;
           end;
end;

procedure TFormCadastroFuncao.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TFormCadastroFuncao.DBGrid1DblClick(Sender: TObject);
begin
       DtCadastro.DataSet.Edit;
       GroupBox1.Enabled:=true;
end;

procedure TFormCadastroFuncao.FormActivate(Sender: TObject);
begin
DTCadastro.Dataset.open;
DtPerfilFuncao.DataSet.Open;
end;

procedure TFormCadastroFuncao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DTCadastro.Dataset.Close;

end;

end.