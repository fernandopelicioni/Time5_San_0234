unit UnitNotaVersao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFormNotasVersao = class(TForm)
    RichEdit1: TRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotasVersao: TFormNotasVersao;

implementation

{$R *.dfm}

procedure TFormNotasVersao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

end.
