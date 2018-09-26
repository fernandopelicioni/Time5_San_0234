unit TelaRelatorioExternoDuplicidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFormRelatorioExternoDuplicidade = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Query1: TQuery;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape2: TQRShape;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    Table1: TTable;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText15: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
  private
    { Private declarations }
  public
     ChapaI:integer;
     ChapaF:integer;

    { Public declarations }
  end;

var
  FormRelatorioExternoDuplicidade: TFormRelatorioExternoDuplicidade;
  pegahora:string;
  compensacao:string[1];
  horas:tTime;
  horareal:real;
  SOMAHORA:INTEGER;
  HORAPARASOMA,HORASOMAT:TTIME;
  totExtraH,TotExtraM:word;
  varextra:TTime;
  TOTHORAS1,TOTHORAS2,TOTHORAS3,TOTHORAS4,TOTHORAS5,SEM1,SEM2,SEM3,SEM4,SEM5:TTIME;
implementation

uses TelaLanca2, TelaDados;

{$R *.dfm}

end.



