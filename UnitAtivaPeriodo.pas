unit UnitAtivaPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, ImgList, StdCtrls,
  DBCtrls, ADODB, Buttons;

type
  TFormAtivaPeriodos = class(TForm)
    Panel1: TPanel;
    DtPeriodos: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    ImageList1: TImageList;
    DBText7: TDBText;
    Label7: TLabel;
    QrUsuarioPeriodo: TADOQuery;
    QrPeriodos: TADOQuery;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    COPIAQRPERIODO: TADOQuery;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtivaPeriodos: TFormAtivaPeriodos;

implementation

uses UnitPai, UnitPeriodoCriar;

{$R *.dfm}

procedure TFormAtivaPeriodos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
//tipo :=DTQrCandidatos.DataSet.FieldByName('can_Status').AsString;

if Column.index =  0 then
   begin
   DbGrid1.Canvas.FillRect(Rect);
   if DtPeriodos.DataSet.FieldByName('Tpe_cod').AsInteger = DtPeriodos.DataSet.FieldByName('PTUsu_Periodo').AsInteger then
         ImageList1.Draw(DbGrid1.Canvas,Rect.Left+15,Rect.Top+1,1)
      else
         ImageList1.Draw(DbGrid1.Canvas,Rect.Left+15,Rect.Top+1,0)
      end;


end;

procedure TFormAtivaPeriodos.FormActivate(Sender: TObject);
begin
        QrPeriodos.Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
        QrPeriodos.Parameters.ParamByName('USUARIO').Value:=Pai.Qrusuarios.FieldByName('USU_CODIGO').AsString;
        DtPeriodos.DataSet.Open;
end;

procedure TFormAtivaPeriodos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtPeriodos.DataSet.Close;
QrUsuarioPeriodo.Close;
Action:=Cafree;
end;

procedure TFormAtivaPeriodos.FormShow(Sender: TObject);
begin
        QrPeriodos.Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
        QrPeriodos.Parameters.ParamByName('USUARIO').Value:=Pai.Qrusuarios.FieldByName('USU_CODIGO').AsString;
        DtPeriodos.DataSet.Open;

end;

procedure TFormAtivaPeriodos.ToolButton1Click(Sender: TObject);
begin
Application.CreateForm(TFormPeriodoCriar, FormPeriodoCriar);
FormPeriodoCriar.Showmodal;
close;
end;

procedure TFormAtivaPeriodos.ToolButton2Click(Sender: TObject);
begin
        With DtPeriodos.DataSet do
              begin
if (MessageDlg('Confirma exclusão do registro selecionado?'+#13+#10+'Lembrando que essa ação só será possivel se não houver lançamentos associados!', mtWarning, [mbYes, mbNo], 0) in [mrYes]) then
                     //if (MessageDlg('Confirma exclusão do registro selecionado? '+#13+#10+'Lembrando que essa ação só será possivel se não houver lançamentos associados', mtWarning, [mbYes, mbNo], 0) in mrYes) then
                        begin
                               Try
                                    DtPeriodos.DataSet.Delete;
                               Finally
                                    MessageBox(0, 'Há lançamentos associados a este período!', 'Ação não executada', MB_ICONSTOP or MB_OK);
                                    cancel;
                               End;
                        end;
              end;

end;

procedure TFormAtivaPeriodos.ToolButton3Click(Sender: TObject);
begin
        if (MessageDlg('Confirma alteração do período ativo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              begin
                     With QrUsuarioPeriodo do
                          begin
                               Close;
                               Parameters.ParamByName('usuario').Value:=Pai.Qrusuarios.FieldByName('usu_codigo').AsString;
                               Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                               Parameters.ParamByName('periodo').Value:=DtPeriodos.DataSet.FieldByName('Tpe_Cod').AsString;
                               ExecSQL;

                          end;
              end;
Close;
close;
end;

end.
