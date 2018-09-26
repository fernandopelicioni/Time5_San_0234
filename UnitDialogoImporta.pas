unit UnitDialogoImporta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, pngimage, ExtCtrls;

type
  TFormDialogoImporta = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    Memo1: TMemo;
    BtSalva: TBitBtn;
    Btignora: TBitBtn;
    BtAjusta: TBitBtn;
    procedure BtSalvaClick(Sender: TObject);
    procedure BtAjustaClick(Sender: TObject);
    procedure BtignoraClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDialogoImporta: TFormDialogoImporta;

implementation

uses UnitImportaEscala;

{$R *.dfm}

procedure TFormDialogoImporta.BtAjustaClick(Sender: TObject);
begin
          FormImportaEscala.vsalva:=2;
          close;

end;

procedure TFormDialogoImporta.BtignoraClick(Sender: TObject);
begin
          FormImportaEscala.vsalva:=3 ;
          close;

end;

procedure TFormDialogoImporta.BtSalvaClick(Sender: TObject);
begin
          FormImportaEscala.vsalva:=1;
          close;
end;

procedure TFormDialogoImporta.FormShow(Sender: TObject);
begin
          BtSalva.SetFocus;
end;

procedure TFormDialogoImporta.Image2Click(Sender: TObject);
begin
          FormImportaEscala.vsalva:=3;
          close;

end;

end.
