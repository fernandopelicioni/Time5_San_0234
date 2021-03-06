unit UnitGerarAssociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, ExtCtrls, ADODB, Buttons, DBCtrls;

type
  TFormGerarAssociacao = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DtTipo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QrMov: TADOQuery;
    QrTemp: TADOQuery;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGerarAssociacao: TFormGerarAssociacao;

implementation

uses UnitPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormGerarAssociacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
          Action:=cafree;
end;

procedure TFormGerarAssociacao.FormCreate(Sender: TObject);
begin
          DateTimePicker1.Date:=now+1;
          DtTipo.DataSet.Open;
end;

procedure TFormGerarAssociacao.SpeedButton1Click(Sender: TObject);
var
X: word;
begin
       Screen.Cursor:=crHourGlass;
       with QrTemp do
            begin
                  close;
                  sql.Clear;
                  Sql.Add('select * from tb_EscAssociacao Where Ass_Data=:data and ass_coligada=:coligada');
                  Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                  Parameters.ParamByName('coligada').Value:=pai.Coligada;
                  open;
                  if Not Eof then
                        begin
                              if (MessageDlg('Aten��o,'+#13+#10+''+#13+#10+'Ja existem associa��es para esta data, antes de continuar, irei subescrever todos os registros, Prosseguir?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
                                      begin
                                            close;
                                            sql.Clear;
                                            Sql.Add('delete tb_EscAssociacao Where Ass_Data=:data and ass_coligada=:coligada');
                                            Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                                            Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                            ExecSql;
                                            ShowMessage('Dados Apagados, Clique para continuar!');
                                            close;
                                      end
                                      else
                                      begin
                                            Close;
                                            MessageBox(0, 'Ok,'+#13+#10+'Gera��o cancelada, escolha outra data!', 'Cancelado', MB_ICONWARNING or MB_OK);
                                            Abort;
                                      end;
                        end
                        else
                        begin
                              With QrMov do
                                   begin
                                        X:=0;
                                        Close;
                                        sql.Clear;
                                        Sql.Add('select * from tb_EscHorarios Where hor_NE <> ' + quotedStr('1'));
                                        Sql.Add('and Hor_tipo=:tipo and hor_coligada=:coligada');
                                        Parameters.ParamByName('tipo').Value:=DBLookupComboBox1.KeyValue;
                                        Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                        open;
                                        if Not eof then
                                              begin
                                                   repeat
                                                         QrTemp.Close;
                                                         QrTemp.SQL.Clear;
                                                         QrTemp.SQL.Add('Insert Into Tb_EscAssociacao (Ass_data, Ass_hora, Ass_LInha, Ass_Oso, Ass_Iti, Ass_Tipo, Ass_Tabela, Ass_Coligada, Ass_Vei, Ass_IniJor)');
                                                         QrTemp.SQL.Add('Values (' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(TimeToStr(FieldByName('Hor_Hora').AsDateTime)));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_Linha').Asstring));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_Oso').AsString));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_Iti').AsString));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_Tipo').AsString));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_Tabela').AsString));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(pai.Coligada));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_Veiculo').AsString));
                                                         QrTemp.SQL.Add(', ' + QuotedStr(FieldByName('Hor_IniJor').AsString) +')');
                                                         memo1.Text:=qrtemp.sql.Text;
                                                         QrTemp.ExecSQL;
                                                         X:=X+1;
                                                   next;
                                                   until eof ;
                                                   ShowMessage(IntToStr(X)+ ' Foram gerados com sucesso!');
                                                   close;
                                                   // Gera na tela relatorio
                                                   with Relatorio.QrGpsHorVei do
                                                        begin
                                                              Close;
                                                              Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                                              Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                                                              Open;
                                                              if not eof then
                                                                    begin
                                                                          MessageBox(0, 'Observe que existem hor�rios sem ve�culos associados, a seguir, emitirei um relat�rio para consulta!', 'Consistencia', MB_ICONWARNING or MB_OK);
                                                                          Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                                          Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                                                          Relatorio.Projeto.ExecuteReport('RvGpsHorVei');
                                                                    end;



                                                        end;




                                              end;

                                   end;
                        end;
            end;




       Screen.Cursor:=crDefault;
end;

procedure TFormGerarAssociacao.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
