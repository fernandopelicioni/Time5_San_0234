unit UnitCadastroEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons,
  pngimage;

type
  TFormCadastraEventos = class(TForm)
    Panel1: TPanel;
    DtCadastro: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    Salvar: TBitBtn;
    Incluir: TBitBtn;
    Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBCheckBox2: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
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
  FormCadastraEventos: TFormCadastraEventos;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastraEventos.CancelarClick(Sender: TObject);
begin
        DtCadastro.DataSet.Cancel;
        Close;
end;

procedure TFormCadastraEventos.DBGrid1DblClick(Sender: TObject);
begin
        Panel1.Enabled:=true;
        //DtTipDia.DataSet.Cancel;
        DtCadastro.DataSet.Edit;
        DBEdit2.SetFocus;

end;

procedure TFormCadastraEventos.FormActivate(Sender: TObject);
begin
        DtCadastro.DataSet.Open;
end;

procedure TFormCadastraEventos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DtCadastro.DataSet.Close;
action:=cafree;
end;

procedure TFormCadastraEventos.IncluirClick(Sender: TObject);
begin
        DtCadastro.DataSet.Cancel;
        DtCadastro.DataSet.Insert;
        Panel1.Enabled:=true;
        DBEdit2.SetFocus;
end;

procedure TFormCadastraEventos.SalvarClick(Sender: TObject);
begin
       if (DtCadastro.DataSet.State = DsInsert) or (DtCadastro.DataSet.State = DsEdit)  then
            begin
                 DtCadastro.DataSet.FieldByName('Tve_coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                 DtCadastro.DataSet.Post;
            end
            else
            MessageBox(0, 'Movimento não Salvo, A tabela deve estar em modo de Inserção ou Edição !', 'Atenção', MB_ICONWARNING or MB_OK);
Panel1.Enabled:=false;
end;

end.
