unit UnitIndicadorGrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls;

type
  TFormIndicadorGrafico = class(TForm)
    DtPlanilha: TDataSource;
    QrIndPlanilha1: TADOQuery;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIndicadorGrafico: TFormIndicadorGrafico;

implementation

uses UnitRelatorio, UnitPai;

{$R *.dfm}

procedure TFormIndicadorGrafico.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var evento: Word;
  Coluna : string;
begin
      Coluna:= Column.Field.FieldName; // Aqui o campo a colorir
      if coluna = '26' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('26').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                              end;
            end;

      if coluna = '27' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('27').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;

      if coluna = '28' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('28').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;

      if coluna = '29' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('29').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;

      if coluna = '30' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('30').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '31' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('31').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '01' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('01').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '02' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('02').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '03' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('03').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;

      if coluna = '04' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('04').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '05' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('05').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '06' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('06').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '07' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('07').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '08' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('08').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '09' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('09').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '10' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('10').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '11' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('11').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '12' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('12').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '13' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('13').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '14' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('14').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '15' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('15').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '16' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('16').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '17' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('17').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '18' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('18').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '19' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('19').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '20' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('20').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '21' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('21').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;


      if coluna = '22' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('22').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '23' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('23').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '24' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('24').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;



      if coluna = '25' then
            begin
                              Evento:= QrIndPlanilha1.FieldByName('25').AsInteger;
                              case Evento of
                                   1 :  begin   DBGrid1.Canvas.Brush.Color:= $00FF8080;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   2 :  begin   DBGrid1.Canvas.Brush.Color:= clGreen;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   3 :  begin   DBGrid1.Canvas.Brush.Color:= clRed;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   4 :  begin   DBGrid1.Canvas.Brush.Color:= clFuchsia;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   5 :  begin   DBGrid1.Canvas.Brush.Color:= clBlack;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   8 :  begin   DBGrid1.Canvas.Brush.Color:= clAqua;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   7 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   11 :  begin   DBGrid1.Canvas.Brush.Color:= $004080FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   12 :  begin   DBGrid1.Canvas.Brush.Color:= $008000FF;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   13 :  begin   DBGrid1.Canvas.Brush.Color:= clPurple;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   14 :  begin   DBGrid1.Canvas.Brush.Color:= clGray;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;
                                   16 :  begin   DBGrid1.Canvas.Brush.Color:= clLime;     DBGrid1.Canvas.FillRect(Rect);      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);    end;

                              end;

            end;







end;

procedure TFormIndicadorGrafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
             Action:=Cafree;
end;

procedure TFormIndicadorGrafico.FormCreate(Sender: TObject);
begin
             screen.Cursor:=crHourGlass;
             with QrIndPlanilha1 do
                   begin
                          close;
                          Parameters.ParamByName('periodo26').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo27').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo28').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo29').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo30').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo01').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo02').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo03').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo04').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo05').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo06').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo07').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo08').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo09').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo10').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo11').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo12').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo13').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo14').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo15').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo16').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo17').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo18').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo19').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo20').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo21').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo22').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo23').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo24').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodo25').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
//                          Parameters.ParamByName('periodo26').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('periodot').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          Parameters.ParamByName('per').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                          open;
                   end;



             screen.Cursor:=crDefault;

end;

end.