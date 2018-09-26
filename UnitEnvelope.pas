unit UnitEnvelope;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Grids, DBGrids, DB, ADODB, StdCtrls, DBCtrls;

type
  TFormEnvelope = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QrEnvelope: TADOQuery;
    DtEnvelope: TDataSource;
    DBGrid1: TDBGrid;
    Image2: TImage;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel3: TPanel;
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnvelope: TFormEnvelope;

implementation

uses UnitPai, UnitProDisp;

{$R *.dfm}

procedure TFormEnvelope.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFormEnvelope.FormShow(Sender: TObject);
begin
                         PAI.LIMPATB(NIL);  // ZERA A TABELA

                         Pai.VPeriodoInicial:=StrToDate(Pai.QrPeriodoAtivo.FieldByName('Tpe_inicio').AsString);
                         Pai.VPeriodoFinal:=StrToDate(Pai.QrPeriodoAtivo.FieldByName('Tpe_Fim').AsString);

                         PAI.VChapaAtual:=StrToInt(FormProdisp.DtPro.DataSet.FieldByName('cod_pro').AsString);

                         PAI.EventosBasicos(NIL);

                         PAI.CalculaDSR(NIL);

                         pai.HoraExtra_Modelo1(nil);

                         PAI.HoraExtra_Modelo2(NIL);

                         pai.ADN;
                         PAI.CALCULAHN(NIL);
                         PAI.CalculaHoraDevida(NIL);

                         PAI.SomaArticularidade(NIL);
                         PAI.SomaSeletividade;


                         Panel3.Visible:=false;


                         QrEnvelope.Open;


end;

procedure TFormEnvelope.Image2Click(Sender: TObject);
begin
Close;
end;




end.