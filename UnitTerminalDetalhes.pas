unit UnitTerminalDetalhes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Keyboard, StdCtrls,ADODB, DB, Mask, pngimage, Grids,
  DBGrids;

type
  TFormTerminalDetalhes = class(TForm)
    Timer1: TTimer;
    LabelHora: TLabel;
    LabelData: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditColab: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image5: TImage;
    Image6: TImage;
    Label6: TLabel;
    Panel1: TPanel;
    Image7: TImage;
    Image8: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    QrLancamentos: TADOQuery;
    Dtlancamentos: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VChapaAtual:Integer;
  end;

var
  FormTerminalDetalhes: TFormTerminalDetalhes;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormTerminalDetalhes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
         begin
              Key:=#0;
              // Some teclado
              //Mostra Cartao

         end;
end;

procedure TFormTerminalDetalhes.FormCreate(Sender: TObject);
begin
{             With FormRelogio do
                  Begin
                      top :=0;
                      Left :=0;
                      Width := Screen.Width;
                      Height := Screen.Height;

                  End;
                DtColigada.DataSet.Open;
                LabelColigada.Caption:=DtColigada.DataSet.FieldByName('Des_Coligada').AsString;
//              PainelRelogio.left:=Trunc((FormterminalDetalhes.width - PainelRelogio.Width) / 2);
//              PainelRelogio.top:=Trunc((FormTerminalDetalhes.Height - PainelRelogio.Height) / 2);    }

end;

procedure TFormTerminalDetalhes.FormShow(Sender: TObject);
begin
             With FormTerminalDetalhes do
                  Begin
                      top :=0;
                      Left :=0;
                      Width := Screen.Width;
                      Height := Screen.Height;

                  End;

                Timer1Timer(nil);
                With QrLancamentos do
                   begin
                        Close;
                        Parameters.ParamByName('codigo').Value:=VChapaAtual;
                        Parameters.ParamByName('Coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
//                        Parameters.ParamByName('data').Value:=
                        open;
                    end;


end;

procedure TFormTerminalDetalhes.Timer1Timer(Sender: TObject);
var Q,q2: tadoquery;

begin
//       QrTemp.Close;
//       QrTemp.Open;
//       LabelHora.Caption:=QrTemp.FieldByName('hora').Text;
//       LabelData.Caption:=QrTemp.FieldByName('DiaSemana').Text +', ' + QrTemp.FieldByName('Dia').Text+' de ' + QrTemp.FieldByName('Mes').Text+' de '+ QrTemp.FieldByName('ano').Text;
//labelHora.Caption:=
end;





end.
