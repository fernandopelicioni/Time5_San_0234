unit UnitDispEnvelope;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormDispEnvelope = class(TForm)
    DtEnvelope: TDataSource;
    QrEnvelope: TADOQuery;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    Vchapa:integer;
    { Public declarations }
  end;

var
  FormDispEnvelope: TFormDispEnvelope;

implementation

uses UnitPai, UnitProDisp;

{$R *.dfm}

procedure TFormDispEnvelope.FormActivate(Sender: TObject);
begin
          VChapa := FormProDisp.QrProDisp.FieldByName('Interno').AsInteger;
          QrEnvelope.Parameters.ParamByName('Chapa').Value:=Vchapa;
          DtEnvelope.DataSet.Open;
end;

procedure TFormDispEnvelope.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
          DtEnvelope.DataSet.Close;
          Action:=cafree;
end;

end.
