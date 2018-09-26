unit TelaConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, CJVEditDate, DB, DBTables,
  ExtCtrls, Buttons, ComCtrls, XPMan, ActnMan, ActnColorMaps;

type
  TFormConsultaExternos = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    datai: TCJVEditDate;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    radio: TRadioGroup;
    EditMatricula: TMaskEdit;
    s: TLabel;
    TwilightColorMap1: TTwilightColorMap;
    XPManifest1: TXPManifest;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure radioClick(Sender: TObject);
    procedure dataiKeyPress(Sender: TObject; var Key: Char);
    procedure EditMatriculaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaExternos: TFormConsultaExternos;

implementation

uses TelaModule;

{$R *.dfm}

procedure TFormConsultaExternos.FormShow(Sender: TObject);
begin
datai.text:=DateToStr(Now);
end;

procedure TFormConsultaExternos.BitBtn1Click(Sender: TObject);
BEGIN
with query1 do
      begin
      close;
      if EditMatricula.text <> ' ' then
            begin
            filter:='Matricula = ' + s.caption + editmatricula.text + s.caption +
                    ' And Dia_Mes_Ano = ' + s.caption + datai.text + s.caption;
            Filtered:=true;
            Open;
            end;
      If EditMatricula.text = ' ' then
            begin
            filter:='Dia_Mes_Ano = ' + s.caption + datai.text + s.caption;
            Filtered:=true;
            Open;
            end;
      eND;

end;

procedure TFormConsultaExternos.radioClick(Sender: TObject);
VAR
tipodia:string[1];
begin
if radio.ItemIndex = 0 then
    TipoDia:='X';
if radio.ItemIndex = 1 then
    TipoDia:='F';
if radio.ItemIndex = 2 then
    TipoDia:='L';
if radio.ItemIndex = 3 then
    TipoDia:='A';
if radio.ItemIndex = 4 then
    TipoDia:='S';
if radio.ItemIndex = 6 then
    TipoDia:='R';
if radio.ItemIndex = 7 then
    TipoDia:='N';
if radio.ItemIndex = 8 then
    TipoDia:='O';
if TipoDia = 'X' then
    Begin
    Query1.Filter:='Dia_Mes_Ano = ' + s.caption + datai.text + s.caption;
    Query1.Filtered:=true;
    Query1.Open;
    End
    Else
    Begin
    Query1.Filter:='Dia_Mes_Ano = ' + s.caption + datai.text + s.caption +
               ' and TIpo_dia = ' + s.caption + Tipodia + s.caption;
    Query1.Filtered:=true;
    Query1.Open;
    End;

end;

procedure TFormConsultaExternos.dataiKeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
     begin
     EditMatricula.SetFocus;
     End;
end;

procedure TFormConsultaExternos.EditMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
If key = #13 then
     begin
     BitBtn1.SetFocus;
     End;

end;

end.
