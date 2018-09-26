unit UnitCadastraProventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask, pngimage,
  ExtCtrls;

type
  TFormCadastraProventos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Salvar: TBitBtn;
    Incluir: TBitBtn;
    Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    DtProventos: TDataSource;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DtEventos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    procedure SalvarClick(Sender: TObject);
    procedure IncluirClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraProventos: TFormCadastraProventos;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastraProventos.CancelarClick(Sender: TObject);
begin
             DtProventos.DataSet.cancel;
end;

procedure TFormCadastraProventos.FormShow(Sender: TObject);
begin
             DtProventos.DataSet.open;

end;

procedure TFormCadastraProventos.IncluirClick(Sender: TObject);
begin
             DtProventos.DataSet.insert;
             DBEdit2.SetFocus;
end;

procedure TFormCadastraProventos.SalvarClick(Sender: TObject);
begin
             DtProventos.DataSet.Post;
end;

end.
