unit UnitAcompanhamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCGrids, StdCtrls, DBCtrls;

type
  TFormAcompanhamento = class(TForm)
    Panel2: TPanel;
    QrHora: TADOQuery;
    Timer1: TTimer;
    DataSource1: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAcompanhamento: TFormAcompanhamento;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormAcompanhamento.FormCreate(Sender: TObject);
begin
         FormAcompanhamento.Top:=0;
         FormAcompanhamento.Left:=(Screen.Width - FormAcompanhamento.Width) - 2;
         FormAcompanhamento.Height:=Screen.Height;

end;

procedure TFormAcompanhamento.FormShow(Sender: TObject);
begin
        Timer1Timer(nil);
end;

procedure TFormAcompanhamento.Timer1Timer(Sender: TObject);
begin
         with QrHora do
              begin
                   Close;
                   Parameters.ParamByName('coligada').Value:=pai.Coligada;
                   Parameters.ParamByName('dia').Value:=DateToStr(now);
                   Open;
              end;
end;

end.
