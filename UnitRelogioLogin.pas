unit UnitRelogioLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitRelogio, ExtCtrls, Keyboard, StdCtrls, jpeg, DB, ADODB;

type
  TFormRelogioLogin = class(TFormRelogio)
    Label2: TLabel;
    PainelRelogio: TPanel;
    Edit1: TEdit;
    TouchKeyboard1: TTouchKeyboard;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelogioLogin: TFormRelogioLogin;

implementation

uses UnitRelogioRegistra;



{$R *.dfm}

procedure TFormRelogioLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
         With QrPro do
             begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                    Parameters.ParamByName('chapa').Value:=Edit1.Text;
                    Open;
                    if Not eof then
                         begin
                              Application.CreateForm(TFormRelogioRegistra,FormRelogioRegistra);
                              FormRelogioRegistra.ShowModal;
                         end;


             end;
end;

procedure TFormRelogioLogin.FormShow(Sender: TObject);
begin
  inherited;
             With FormRelogioLogin do
                  Begin
                      top :=0;
                      Left :=0;
                      Width := Screen.Width;
                      Height := Screen.Height;

                  End;
              Edit1.Text:='';
              PainelRelogio.left:=Trunc((FormRelogio.width - PainelRelogio.Width) / 2);
              PainelRelogio.top:=Trunc((FormRelogio.Height - PainelRelogio.Height) / 2);

end;

procedure TFormRelogioLogin.Image1Click(Sender: TObject);
begin
  inherited;
//ooio
end;

end.
