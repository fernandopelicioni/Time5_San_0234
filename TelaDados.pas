unit TelaDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DB, DBTables, ComCtrls, Buttons,
  XPMan, ActnMan, ActnColorMaps;

type
  TFormDados = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    EditMatriculaI: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditMatriculaF: TMaskEdit;
    RadioGroup1: TRadioGroup;
    StandardColorMap1: TStandardColorMap;
    XPManifest1: TXPManifest;
    BitBtn2: TBitBtn;
    s: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    MaskEdit2: TMaskEdit;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    btsalva: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure btsalvaClick(Sender: TObject);
    procedure EditMatriculaIKeyPress(Sender: TObject; var Key: Char);
    procedure EditMatriculaFKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDados: TFormDados;

implementation

uses TelaRelatorioInterno, TelaModule, TelaRelatorioExterno;

{$R *.dfm}

procedure TFormDados.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormDados.btsalvaClick(Sender: TObject);
begin
//FormRelatorioInterno.Query1.close;
//FormRelatorioInterno.Query1.Filter:='matricula <= '+s.caption+EDitmatriculaI.text + s.caption +
//                                    ' And matricula <= ' + s.Caption + EditmatriculaF.Text + s.caption;
//FormRelatorioInterno.Query1.Filtered:=true;
FormRelatorioInterno.Query1.Close;

FormRelatorioInterno.ChapaI:=StrToInt(EditMatriculaI.Text);
FormRelatorioInterno.ChapaF:=StrToInt(EditMatriculaF.Text);
FormRelatorioInterno.Query1.filter:='Matricula >= '+ s.caption + EditMatriculaI.text + s.caption +
                                    ' and Matricula <= ' + s.caption + EditMatriculaF.text + s.caption;
FormRelatorioInterno.Query1.filtered:=true;
//FormRelatorioInterno.Query1.SQL:='
FormRelatorioInterno.Query1.Open;
if FormRelatorioInterno.Query1Matricula.text <> ' ' then
    begin
    FormRelatorioInterno.QuickRep1.Preview;
    end
    else
    begin
    ShowMessage('Não existe essa matricula');
    EditMatriculaI.setfocus;
    end;

end;

procedure TFormDados.EditMatriculaIKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    Key :=#0;
    if EditMatriculaI.Text = ' ' then
        EditMatriculaf.text:='0000';
    EditmatriculaF.SetFocus;
    End;

end;

procedure TFormDados.EditMatriculaFKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    Key :=#0;
    if EditMatriculaI.Text = ' ' then
        EditMatriculaf.text:='9999';
    BtSalva.SetFocus;
    End;

end;

procedure TFormDados.FormActivate(Sender: TObject);
begin
//EditMatriculaI.setfocus;
end;

procedure TFormDados.BitBtn1Click(Sender: TObject);
begin
//FormRelatorioInterno.Query1.Filtered:=true;
//FormRelatorioExterno.Query1.Close;

//FormRelatorioExterno.ChapaI:=StrToInt(EditMatriculaI.Text);
//FormRelatorioInterno.ChapaF:=StrToInt(EditMatriculaF.Text);
FormRelatorioExterno.Query1.filter:='Matricula >= '+ s.caption + maskEdit1.text + s.caption +
                                    ' and Matricula <= ' + s.caption + MaskEdit2.text + s.caption;
FormRelatorioExterno.Query1.filtered:=true;
//FormRelatorioExterno.query1.Open;
//FormRelatorioInterno.Query1.SQL:='
//FormRelatorioInterno.Query1.Open;
//if FormRelatorioInterno.Query1Matricula.text <> ' ' then
//    begin
//    FormRelatorioInterno.QuickRep1.Preview;
//    end
//    else
//    begin
//    ShowMessage('Não existe essa matricula');
//    EditMatriculaI.setfocus;
//    end;


FormRelatorioExterno.query1.Open;
formrelatorioexterno.quickrep1.preview;
end;

procedure TFormDados.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
    begin
    key:=#0;
    MaskEdit2.setfocus;
    ENd;
end;

procedure TFormDados.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
    begin
    key:=#0;
    BitBtn1.setfocus;
    ENd;

end;

end.
