unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWGrids,
  IWDBGrids, IWSilverlight, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton;

type
  TFormTeste = class(TIWAppForm)
    IWButton1: TIWButton;
    IWSilverlight1: TIWSilverlight;
    IWDBGrid1: TIWDBGrid;
  public
  end;

implementation

{$R *.dfm}


end.
