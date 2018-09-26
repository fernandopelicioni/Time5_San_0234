unit UnitAssociaLinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCGrids, StdCtrls, DBCtrls, Buttons, ADODB;

type
  TFormAssociaLinhas = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DtLinhas: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBCheckBox1: TDBCheckBox;
    BitBtn1: TBitBtn;
    QrLinhas: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAssociaLinhas: TFormAssociaLinhas;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormAssociaLinhas.BitBtn1Click(Sender: TObject);
begin
      close;
end;

procedure TFormAssociaLinhas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DtLinhas.DataSet.Close;
       Action:=Cafree;

end;

procedure TFormAssociaLinhas.FormShow(Sender: TObject);
begin
       Caption:='Linhas por Coligada = ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;
       if Pai.QrColigadas.FieldByName('Cod_Coligada').AsString = '1' then
           begin
           DBCheckBox1.ValueChecked := '1';
           DBCheckBox1.ValueUnchecked := '2';
           end;
       if Pai.QrColigadas.FieldByName('Cod_Coligada').AsString =  '2' then
           begin
           DBCheckBox1.ValueChecked := '2';
           DBCheckBox1.ValueUnchecked := '1';
           end;
       DtLinhas.DataSet.Open;
end;

end.
