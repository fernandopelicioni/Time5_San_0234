unit UnitFuncaoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, XPMan, ActnMan, ActnColorMaps, StdCtrls,
  DB, Grids, DBGrids, DBCtrls, Mask, CustomizeDlg, ExtCtrls;

type
  TFormFuncaoCadastro = class(TForm)
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFuncaoCadastro: TFormFuncaoCadastro;

implementation

uses UnitMae;

{$R *.dfm}

procedure TFormFuncaoCadastro.BitBtn1Click(Sender: TObject);
begin
DTCadastro.Dataset.Append;
GroupBox1.Enabled:=true;
DbEdit1.SetFocus;

end;

procedure TFormFuncaoCadastro.BitBtn2Click(Sender: TObject);
begin
      DTCadastro.Dataset.Cancel;

end;

procedure TFormFuncaoCadastro.BitBtn3Click(Sender: TObject);
begin
      if (DtCadastro.DataSet.State = DsInsert) or (DtCadastro.DataSet.State = DsEdit)then
           begin
                DTCadastro.Dataset.Post;
                GroupBox1.Enabled:=False;
           end;
end;

procedure TFormFuncaoCadastro.BitBtn4Click(Sender: TObject);
begin
      if messageDlg('Deseja realmente apagar o registro selecionado ?                        ' ,mtConfirmation,[mbno, mbyes],0) = mryes then
           begin
                DTCadastro.Dataset.delete;
           end;
end;

procedure TFormFuncaoCadastro.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TFormFuncaoCadastro.FormActivate(Sender: TObject);
begin
DTCadastro.Dataset.open;

end;

procedure TFormFuncaoCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DTCadastro.Dataset.Close;

end;

end.
