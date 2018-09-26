unit UnitProDisp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Buttons, ExtCtrls, ADODB, DBCtrls,
  ToolWin, ComCtrls, jpeg, pngimage;

type
  TFormProDisp = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    DtProDisp: TDataSource;
    DBGrid1: TDBGrid;
    DtPeriodoAtivo: TDataSource;
    QrProDisp: TADOQuery;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    DBText6: TDBText;
    Label4: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DtPro: TDataSource;
    QrPro: TADOQuery;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText8: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText9: TDBText;
    SpeedButton6: TSpeedButton;
    Memo1: TMemo;
    DtImgPessoa: TDataSource;
    BitBtn1: TBitBtn;
    Image1: TImage;
    QrProDispData: TStringField;
    QrProDispEvento: TWideStringField;
    QrProDispHi1: TStringField;
    QrProDispHf1: TStringField;
    QrProDispHi2: TStringField;
    QrProDispHf2: TStringField;
    QrProDispHi3: TStringField;
    QrProDispHf3: TStringField;
    QrProDispsaldo: TStringField;
    QrProDispPerfil: TSmallintField;
    QrProDispJornadaRef: TSmallintField;
    QrProDispCodEvento: TWordField;
    QrProDispPto_ID: TIntegerField;
    QrProDispExtra: TStringField;
    QrProDispDevida: TStringField;
    BitBtn2: TBitBtn;
    QrProDispHi4: TStringField;
    QrProDispHf4: TStringField;
    QrProDispHi5: TStringField;
    QrProDispHf5: TStringField;
    BitBtn3: TBitBtn;
    QrProDispv1: TWideStringField;
    QrProDispv2: TWideStringField;
    QrProDispv3: TWideStringField;
    QrProDispv4: TWideStringField;
    QrProDispv5: TWideStringField;
    procedure ToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProDisp: TFormProDisp;

implementation

uses UnitPai, UnitDispInclui, UnitDispEnvelope, UnitEnvelope;

{$R *.dfm}

procedure TFormProDisp.BitBtn1Click(Sender: TObject);
var
  Stream: TADOBlobStream;
  InTipo: Byte;
begin
          Stream:= TADOBlobStream.Create(pai.QrImgPessoaIMAGEM, bmRead);
                    image1.Picture.Graphic.LoadFromStream(Stream);

                      image1.Picture.Graphic:= nil;



{    If Not DtImgPessoa.DataSet.FieldByName('imagem').isNULL Then
     begin
          Stream:= TADOBlobStream.Create(pai.QrImgPessoaIMAGEM, bmRead);
              Try
              Stream.Read(InTipo, SizeOf(InTipo));
              If   Assigned(image1.Picture.Graphic) Then
                  image1.Picture.Graphic.Free;
                Case InTipo Of
                       0 : showmessage('certo');
                      //0: image1.Picture.Graphic:= Timage.Create;
                End;
                    image1.Picture.Graphic.LoadFromStream(Stream);
              Finally
                  Stream.Free;
              End;
         End Else
              Begin
                  image1.Picture.Graphic:= nil;
                  image1.Refresh;
              End;      }


end;

procedure TFormProDisp.BitBtn2Click(Sender: TObject);
begin
     ShowMessage(intToStr(pai.CalculaAdcionalDia(
     DtProDisp.DataSet.FieldByName('hi1').AsString,
     DtProDisp.DataSet.FieldByName('hf1').AsString,
     DtProDisp.DataSet.FieldByName('hi2').AsString,
     DtProDisp.DataSet.FieldByName('hf2').AsString,
     DtProDisp.DataSet.FieldByName('hi3').AsString,
     DtProDisp.DataSet.FieldByName('hf3').AsString,
     DtProDisp.DataSet.FieldByName('hi4').AsString,
     DtProDisp.DataSet.FieldByName('hf4').AsString,
     DtProDisp.DataSet.FieldByName('hi5').AsString,
     DtProDisp.DataSet.FieldByName('hf5').AsString
     )
     )
     )
end;

procedure TFormProDisp.BitBtn3Click(Sender: TObject);
begin
     ShowMessage(intToStr(pai.CALCULABRT(
     DtProDisp.DataSet.FieldByName('hi1').AsString,
     DtProDisp.DataSet.FieldByName('hf1').AsString,
     DtProDisp.DataSet.FieldByName('v1').AsString,

     DtProDisp.DataSet.FieldByName('hi2').AsString,
     DtProDisp.DataSet.FieldByName('hf2').AsString,
    // '08:00','08:50',
     DtProDisp.DataSet.FieldByName('v2').AsString,

     DtProDisp.DataSet.FieldByName('hi3').AsString,
     DtProDisp.DataSet.FieldByName('hf3').AsString,
     DtProDisp.DataSet.FieldByName('v3').AsString,

     DtProDisp.DataSet.FieldByName('hi4').AsString,
     DtProDisp.DataSet.FieldByName('hf4').AsString,
     DtProDisp.DataSet.FieldByName('v4').AsString,

     DtProDisp.DataSet.FieldByName('hi5').AsString,
     DtProDisp.DataSet.FieldByName('hf5').AsString,
     DtProDisp.DataSet.FieldByName('v5').AsString
     )
     )
     )

end;

procedure TFormProDisp.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
        if Column.Index = 1 then
              begin
                    DBGrid1.Canvas.FillRect(Rect);
                    if not DtProDisp.DataSet.Eof then
                          begin
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '1' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                           end;
                                     if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '2' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clGreen;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                            end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '3' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clRed;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '4' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clFuchsia;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '5' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clBlack;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '8' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clBlack;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').AsInteger >=7 then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clGray;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, Dbgrid1.columns[datacol].field, State);
                                           end;

                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '11' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= $004080FF;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '12' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= $008000FF ;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '13' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clPurple;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '14' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clGray;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
                                           end;
                                      if DtProDisp.DataSet.FieldByName('CodEvento').Asstring = '16' then
                                           begin
                                                    Dbgrid1.Canvas.Font.Color:= clLime;
                                                    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
                                           end;
                           end;
              end;
end;

procedure TFormProDisp.Edit1Enter(Sender: TObject);
begin
        Edit1.Text:='';
        DtProDisp.DataSet.Close;
end;

procedure TFormProDisp.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = Vk_f2) or (key = Vk_Add) then
       begin
              SpeedButton2.Click;
       end
       else
       begin
            DtProDisp.DataSet.Close;
             DtPro.DataSet.Close;
       end;

end;

procedure TFormProDisp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
           begin
                  Key:=#0;
                  SpeedButton3.Click;
           end;
end;

procedure TFormProDisp.FormActivate(Sender: TObject);
begin
           Edit1.Text:='';
           Edit1.SetFocus;
end;

procedure TFormProDisp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         QrProDisp.Close;
         Action:=Cafree;
end;

procedure TFormProDisp.FormShow(Sender: TObject);
begin
         Pai.QrPeriodoAtivo.Close;
         Pai.QrPeriodoAtivo.Parameters.ParamByName('coligada').Value:=pai.coligada;
         Pai.QrPeriodoAtivo.Open;
         Edit1.Text:='';
end;

procedure TFormProDisp.SpeedButton1Click(Sender: TObject);
var Q: tadoquery; valor: integer;
begin
        if (MessageDlg('Confirma Exclus�o do Registro Abaixo: '+#13+ DtProDisp.DataSet.FieldByName('Data').AsString + ' - Evento: '+ DtProDisp.DataSet.FieldByName('Evento').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
            begin
                if DtProDisp.DataSet.Active = True then
                  begin
                        q:=tadoquery.create(nil);
                        q.Connection:=Pai.Genoma;
                        q.SQL.Text:=('delete tb_ptomov5 where pto_id = ' + QuotedStr(DtProDisp.DataSet.FieldByName('Pto_Id').AsString) + ' and pto_Coligada = '  + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                        q.ExecSQL;
                        Q.Free;
                  end;
            end;
         DtProDisp.DataSet.Close;
         DtProDisp.DataSet.Open;
end;

procedure TFormProDisp.SpeedButton3Click(Sender: TObject);
begin
 screen.Cursor:=crHourGlass;
                     With QrPro do
                            begin
                                    Close;
                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                    Parameters.ParamByName('chapa').Value:=Edit1.Text;
                                    Open;
                                    if  Eof  then
                                           begin
                                                  MessageBox(0, 'Registro n�o encontrado!'+#13+#10+''+#13+#10+'Certifique se de que digitou corretamente ou se esse registro n�o pertence a outra Coligada!', 'N�o Encontrado', MB_ICONERROR or MB_OK);
                                                  Edit1.Text:='';
                                                  panel2.Enabled:=false;
                                                  Abort;
                                           end;
                            end;
                     With QrProDisp do
                            begin
                                    Close;
                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                    Parameters.ParamByName('matricula').Value:=DtPro.DataSet.FieldByName('cod_pro').AsString;
                                    Parameters.ParamByName('periodo').Value:=Pai.QrPeriodoAtivo.FieldByName('PtUsu_periodo').AsString;
                                    open;
                                    panel2.Enabled:=true;
                                    edit1.Text:='';
                                    memo1.Text:=sql.Text;
                            end;

 screen.Cursor:=crDefault;

end;

procedure TFormProDisp.SpeedButton5Click(Sender: TObject);
begin
           DtProDisp.DataSet.Close;
           DtProDisp.DataSet.Open;

end;

procedure TFormProDisp.ToolButton3Click(Sender: TObject);
begin
         if DtProDisp.DataSet.Active then
             BEGIN
                   Application.CreateForm(TFormDispInclui,FormDispInclui);
                   FormDispInclui.showmodal;
             END;
end;

procedure TFormProDisp.ToolButton4Click(Sender: TObject);
begin
         Application.CreateForm(TFormEnvelope,FormEnvelope);
         FormEnvelope.showmodal;
end;

end.
