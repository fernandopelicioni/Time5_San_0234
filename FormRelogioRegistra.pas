unit FormRelogioRegistra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitRelogio, DB, ADODB, ExtCtrls, StdCtrls, pngimage;

type
  TFormRelogioRegista = class(TFormRelogio)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelogioRegista: TFormRelogioRegista;

implementation

{$R *.dfm}

end.