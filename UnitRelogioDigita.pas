unit UnitRelogioDigita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitRelogio, ExtCtrls, DB, ADODB, StdCtrls, jpeg, pngimage;

type
  TFormRelogioDigita = class(TFormRelogio)
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelogioDigita: TFormRelogioDigita;

implementation

{$R *.dfm}

end.
