unit TelaConsistenciaInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QuickRpt, ExtCtrls, QRCtrls;

type
  TFormConsistenciaInterno = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape6: TQRShape;
    Table1: TTable;
    Query1: TQuery;
    Query1Matricula: TStringField;
    Query1Nome: TStringField;
    Query1Dia: TStringField;
    Query1Descricao: TStringField;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    Query1Intervalo: TStringField;
    QRLabel10: TQRLabel;
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsistenciaInterno: TFormConsistenciaInterno;

implementation

uses TelaLogaUsuario;

{$R *.dfm}

procedure TFormConsistenciaInterno.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
var cor:string;
  begin
if qrband1.color = clWhite then
    qrband1.color := $00E9E9E9
    else
    qrband1.color := clWhite;

end;

procedure TFormConsistenciaInterno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.close;
action:=cafree;
end;

procedure TFormConsistenciaInterno.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
Qrlabel3.caption:='Versão : ' + FormUsuario.versao;
end;

end.
