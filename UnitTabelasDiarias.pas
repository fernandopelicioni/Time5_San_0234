unit UnitTabelasDiarias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, ADODB,
  ComCtrls, ImgList;

type
  TFormTabelasDiarias = class(TForm)
    GroupBox1: TGroupBox;
    DtLinha: TDataSource;
    DtTabela: TDataSource;
    QrTabela: TADOQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QrAssociaIda: TADOQuery;
    DtAssociaIda: TDataSource;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    QrMov: TADOQuery;
    Memo1: TMemo;
    DBText1: TDBText;
    Panel2: TPanel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    EditVei: TEdit;
    SpeedButton4: TSpeedButton;
    ImageList1: TImageList;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QrSaidaGaragem: TADOQuery;
    DtSaidaGaragem: TDataSource;
    DtVeiculos: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditVeiEnter(Sender: TObject);
    procedure EditVeiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabelasDiarias: TFormTabelasDiarias;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormTabelasDiarias.DateTimePicker1Exit(Sender: TObject);
begin
          With QrTabela do
              Begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                    Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                    Open;
              End;
          With QrSaidaGaragem do
              Begin
                    Close;
                    Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                    Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                    Open;
              End;
end;

procedure TFormTabelasDiarias.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if Column.Index = 0 then
         Begin
               DBGrid1.Canvas.FillRect(Rect);
               if DtAssociaIda.DataSet.FieldByName('Sentido').AsString = 'VOLTA' then
                    begin
                           ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 14, Rect.Top + 1, 0);
//                           DBGrid1.Columns[1].Font.Color:=CLBlue;
                    end
                    else
                    begin
                           ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 5, Rect.Top + 1, 1);
//                           DBGrid1.Columns[1].Font.Color:=clWhite;
                    end;

         End;

end;

procedure TFormTabelasDiarias.DBLookupComboBox1Click(Sender: TObject);
begin
         QrAssociaIda.Close;

         with QrTabela do
              begin
                    Close;
//                  open;
              end;

end;

procedure TFormTabelasDiarias.DBLookupComboBox1Enter(Sender: TObject);
begin
       DBLookupComboBox2.KeyValue:=null;
end;

procedure TFormTabelasDiarias.DBLookupComboBox2Enter(Sender: TObject);
begin
       DBLookupComboBox1.KeyValue:=null;
end;

procedure TFormTabelasDiarias.EditVeiEnter(Sender: TObject);
begin
        SpeedButton3.Enabled:=false;
end;

procedure TFormTabelasDiarias.EditVeiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        SpeedButton3.Enabled:=false;

end;

procedure TFormTabelasDiarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=cafree;
end;

procedure TFormTabelasDiarias.FormShow(Sender: TObject);
begin
         DtTabela.DataSet.Open;
         DateTimePicker1.DateTime:=now+1;
//         with Pai.QrLinhas do
//              begin
//                    Close;
//                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
//                    open;
//              end;
end;

procedure TFormTabelasDiarias.SpeedButton1Click(Sender: TObject);
begin
           Screen.Cursor:=crHourGlass;
           if (DBLookupComboBox2.KeyValue = Null) and (DBLookupComboBox1.KeyValue = Null) then
                    Begin
                         ShowMessage('Selecione alguma tabela/tarefa!');
                         Screen.Cursor:=CrDefault;
                         Abort;
                    End;

           with QrAssociaIda do
                begin
                      Close;
                      Parameters.ParamByName('Data').Value:=DateToStr(DateTimePicker1.Date);
                      if DBLookupComboBox2.KeyValue <> Null then
                                Parameters.ParamByName('tabela').Value:=DBLookupComboBox2.KeyValue
                                else
                                Parameters.ParamByName('tabela').Value:=QrSaidaGaragem.FieldByName('Ass_Tabela').AsString;

                      Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                      open;
                      Memo1.Text:=sql.Text;
                end;


           Screen.Cursor:=CrDefault;

end;

procedure TFormTabelasDiarias.SpeedButton2Click(Sender: TObject);
begin
       EditVei.Enabled:=true;
       EditVei.SetFocus;
end;

procedure TFormTabelasDiarias.SpeedButton3Click(Sender: TObject);
begin
      if (MessageDlg('Confirma Atualização do veículo para as Tabelas/Tarefas?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
          begin
                Screen.Cursor:=CrHourGlass;
                with QrMov do
                     begin
                          Close;
                          Sql.Clear;
                          Sql.Add('Update Tb_EscAssociacao set Ass_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('vei_nun').AsString));
                          if DBLookupComboBox2.KeyValue <> Null then
                                  Sql.Add('Where Ass_Tabela = ' + QuotedStr(DBLookupComboBox2.KeyValue))
                                  else
                                  Sql.Add('Where Ass_Tabela = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                          Sql.Add('And Ass_Data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                          memo1.Text:=sql.Text;
                          ExecSql;
                          Close;
                     end;
                QrAssociaIda.Close;
                SpeedButton3.Enabled:=false;
                EditVei.Enabled:=false;
                DtAssociaIda.DataSet.Close;
                DtAssociaIda.DataSet.Open;
                Screen.Cursor:=CrDefault;
                MessageBox(0, 'Tabelas/Tarefas atualizadas com sucesso!', 'Sucesso!', MB_ICONINFORMATION or MB_OK);
          end;

end;

procedure TFormTabelasDiarias.SpeedButton4Click(Sender: TObject);
begin
           with pai.QrVeiculos do
                 begin
                      close;
                      Parameters.ParamByName('coligada').Value:=pai.Coligada;
                      Parameters.ParamByName('veiculo').Value:=EditVei.Text;
                      open;
                      if eof then
                           begin
                                 MessageBox(0, 'O veículo informado não existe, não está habilidato ou não pertence a esta coligada!', 'Veículo Não encontrado', MB_ICONERROR or MB_OK);
                                 SpeedButton3.Enabled:=false;
                           end
                           else
                                 SpeedButton3.Enabled:=True;
                 end;

end;

end.
