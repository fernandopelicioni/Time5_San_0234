unit UnitGeraFeriado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, ADODB;

type
  TFormGeraFeriado = class(TForm)
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    DtIni: TDateTimePicker;
    Label1: TLabel;
    DtPeriodo: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraFeriado: TFormGeraFeriado;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormGeraFeriado.FormActivate(Sender: TObject);
begin
           DtIni.Date:=now;
end;

procedure TFormGeraFeriado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
           action:=cafree;
end;

procedure TFormGeraFeriado.SpeedButton2Click(Sender: TObject);
var     Q: tadoquery;
VInicioPeriodo,VFimPeriodo, VDiaFeriado : Tdate;
begin
             Q:=tadoquery.create(nil);
             Q.Connection:=Pai.Genoma;
             VInicioPeriodo:=StrToDate(Copy(DtPeriodo.DataSet.FieldByName('Tpe_inicio').AsString,1,10));
             VFimPeriodo   :=StrToDate(Copy(DtPeriodo.DataSet.FieldByName('Tpe_Fim').AsString,1,10));
             VDiaFeriado   :=DtIni.Date;
             if (VDiaFeriado >= VInicioPeriodo) and (VDiaFeriado <= VFimPeriodo) then
                   begin
MessageBox(0, 'Esta tarefa deve ser realizada apenas depois que o movimento deste dia estiver fechado,'+#13+#10+''+#13+#10+'Lembre-se disto antes de confirmar a proxima tela!', 'Aten��o', MB_ICONWARNING or MB_OK);
                          if (MessageDlg('Todos os lan�amentos Normais deste dia, ser�o convertidos para FERIADO!'+#13+#10+''+#13+#10+'Voc� confirma este procedimento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                               begin
                                    With Q do
                                          begin
                                                Close;
                                                Sql.Clear;
                                                Sql.Add('Update tb_ptoMov5 set Pto_Evento = 13 where Pto_Evento = 1 and Pto_data = ' + QuotedStr(DateToStr(VDiaFeriado)));
                                                Sql.Add('And Pto_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                                                ExecSQL;
                                                MessageBox(0, 'A convers�o foi realizada com sucesso, verifique!', 'Sucesso', MB_ICONINFORMATION or MB_OK);
                                                MessageBox(0, 'N�o se esque�a!'+#13+#10+''+#13+#10+'Caso voce realize um novo lan�amento ou altera��o no lan�amento deste dia, ser� necessario realizar este procedimento novamente!', 'Relembre', MB_ICONASTERISK or MB_OK);
                                          end;
                               end;

                   end
                   Else
                   MessageBox(0, 'Data est� fora do per�odo ativo, Verifique', 'Data incorreta!', MB_ICONWARNING or MB_OK);





end;

end.
