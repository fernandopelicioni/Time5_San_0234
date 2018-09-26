unit UnitTipoDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons,
  pngimage;

type
  TFormCadastroTipoDia = class(TForm)
    Panel1: TPanel;
    DtTipDia: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    Salvar: TBitBtn;
    Incluir: TBitBtn;
    Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    Image1: TImage;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure IncluirClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoDia: TFormCadastroTipoDia;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastroTipoDia.CancelarClick(Sender: TObject);
begin
        DtTipDia.DataSet.Cancel;
        Close;
end;

procedure TFormCadastroTipoDia.DBGrid1DblClick(Sender: TObject);
begin
        Panel1.Enabled:=true;
        //DtTipDia.DataSet.Cancel;
        DtTipDia.DataSet.Edit;
        DBEdit1.SetFocus;

end;

procedure TFormCadastroTipoDia.FormActivate(Sender: TObject);
begin
DtTipDia.DataSet.Open;
end;

procedure TFormCadastroTipoDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtTipDia.DataSet.Close;
action:=cafree;
end;

procedure TFormCadastroTipoDia.IncluirClick(Sender: TObject);
begin
        DtTipDia.DataSet.Cancel;
        DtTipDia.DataSet.Insert;
        Panel1.Enabled:=true;
        DBEdit1.SetFocus;
end;

procedure TFormCadastroTipoDia.SalvarClick(Sender: TObject);
begin
       if (DtTipDia.DataSet.State = DsInsert) or (DtTipDia.DataSet.State = DsEdit)  then
             DtTipDia.DataSet.Post
             else
             MessageBox(0, 'Movimento não Salvo, A tabela deve estar em modo de Inserção ou Edição !', 'Atenção', MB_ICONWARNING or MB_OK);
Panel1.Enabled:=false;
end;

end.
