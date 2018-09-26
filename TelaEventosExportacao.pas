unit TelaEventosExportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QuickRpt, ExtCtrls, QRCtrls;

type
  TFormEventosExportacao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    Query1Matricula: TStringField;
    Query1HORAEXTRA: TStringField;
    Query1ADICIONAL: TStringField;
    Query1FERIADO: TStringField;
    Query1FALTA: TStringField;
    Query1REFLEXO: TStringField;
    Query1SUSPENSAO: TStringField;
    Query1NOME: TStringField;
    Query1FUNCAO: TStringField;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEventosExportacao: TFormEventosExportacao;

implementation

uses TelaLogaUsuario;

{$R *.dfm}

procedure TFormEventosExportacao.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
  begin
if qrband1.color = clWhite then
    qrband1.color := $00E9E9E9
    else
    qrband1.color := clWhite;

end;

procedure TFormEventosExportacao.FormShow(Sender: TObject);
begin
query1.open;
end;

procedure TFormEventosExportacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.close;
end;

procedure TFormEventosExportacao.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
Qrlabel13.caption:='Versão : ' + formUsuario.versao;
end;

end.
