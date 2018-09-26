unit UnitLctoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DBCtrls, DB, ADODB, Gauges;

type
  TFormLctoLote = class(TForm)
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    DtIni: TDateTimePicker;
    QrEventos: TADOQuery;
    DtEventos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    QrPerfil: TADOQuery;
    DtPerfil: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label2: TLabel;
    DtPeriodo: TDataSource;
    QrTemp1: TADOQuery;
    Gauge1: TGauge;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLctoLote: TFormLctoLote;

implementation

uses UnitPai, UnitProDisp;

{$R *.dfm}

procedure TFormLctoLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
              Action:=Cafree;
end;

procedure TFormLctoLote.FormCreate(Sender: TObject);
begin
             DtEventos.DataSet.Open;
             DtPerfil.DataSet.Open;
             DtIni.Date:=now;
end;

procedure TFormLctoLote.SpeedButton2Click(Sender: TObject);
var     Q: tadoquery;
VInicioPeriodo,VFimPeriodo, VDia : Tdate;
VCodPerfil, VcodEvento : word;
begin
             Q:=tadoquery.create(nil);
             Q.Connection:=Pai.Genoma;
             VInicioPeriodo:=StrToDate(Copy(DtPeriodo.DataSet.FieldByName('Tpe_inicio').AsString,1,10));
             VFimPeriodo   :=StrToDate(Copy(DtPeriodo.DataSet.FieldByName('Tpe_Fim').AsString,1,10));
             VDia          :=DtIni.Date;
             if DBLookupComboBox1.KeyValue <> Null then
                   begin
                   VCodPerfil:=DBLookupComboBox1.KeyValue;
                   end
                   else
                   begin
                         ShowMessage('� necess�rio escolher um Perfil');
                         Abort;
                   end;
             if DBLookupComboBox2.KeyValue <> Null then
                   begin
                   VcodEvento:=DBLookupComboBox2.KeyValue;
                   end
                   else
                   begin
                         ShowMessage('� necess�rio escolher um EVENTO');
                         Abort;
                   end;
             if (VDia >= VInicioPeriodo) and (VDia <= VFimPeriodo) then
                   begin
                          MessageBox(0, '******** A V I S O *********'+#13+#10+' Pe�a que todos os usu�rios do sistema n�o executem nenhuma tarefa at� que eu tenha terminado'+#13+#10+''+#13+#10+'***************************', 'Importante', MB_ICONWARNING or MB_OK);
                          MessageBox(0, '**** Movimento em Lote - Ser� gravado apenas para os colaboradores que n�o possuem nenhum registro na data informada ,'+#13+#10+''+#13+#10+'Caso j� existam lan�amentos para esta data, eles N�O SER�O ALTERADOS!', 'Aten��o', MB_ICONWARNING or MB_OK);
                          if (MessageDlg('Inser��o de Eventos por Lote!'+#13+#10+''+#13+#10+'Voc� confirma este procedimento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                               begin
                                   With QrTemp1 do
                                         begin
                                              Close;
                                              Parameters.ParamByName('Perfil').Value:=VCodPerfil;
                                              Parameters.ParamByName('Coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
          //                                    Parameters.ParamByName('periodo').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                                              Open;
                                              Gauge1.MaxValue:=RecordCount;
                                              if Not eof then
                                                   begin
                                                          repeat
                                                                Q.close;
                                                                q.SQL.Clear;
                                                                q.SQL.Add('select * from tb_ptomov where Pto_data = ' + QuotedStr(DateToStr(DtIni.Date)));
                                                                q.SQL.Add('And Pto_Chapa = ' + QrTemp1.FieldByName('cod_pro').AsString);
                                                                q.sql.Add('and Pto_Periodo = ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString);
                                                                q.Open;
                                                                //memo1.Lines.Add(q.sql.Text);
                                                                Gauge1.Progress:=Gauge1.Progress+1;
                                                                if q.eof then
                                                                        begin
                                                                               // Se n�o hover lan�amento, ent�o ele grava
                                                                               Pai.ENT1     :=0; Pai.SAI1:=0; Pai.TOT1:=0; Pai.VEI1:='0';
                                                                               Pai.ENT2     :=0; Pai.SAI2:=0; Pai.TOT2:=0; Pai.VEI2:='0';
                                                                               Pai.ENT3     :=0; Pai.SAI3:=0; Pai.TOT3:=0; Pai.VEI3:='0';
                                                                               Pai.ENT4     :=0; Pai.SAI4:=0; Pai.TOT4:=0; Pai.VEI4:='0';
                                                                               Pai.ENT5     :=0; Pai.SAI5:=0; Pai.TOT5:=0; Pai.VEI5:='0';

                                                                               Pai.PtoCod         :=Pai.GeraSeq('PtoMov');
                                                                               Pai.SqlChapa       :=QrTemp1.FieldByName('cod_pro').AsString;
                                                                               Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                                                                               Pai.PtoPeriodo     :=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                                                                               Pai.PtoEvento      :=VcodEvento;
                                                                               Pai.PtoFun         :=QrTemp1.FieldByName('codPerfil').AsInteger;
                                                                               Pai.JorLocal       :='NULL';
                                                                               Pai.JorMatricula   :=QrTemp1.FieldByName('Chapa').AsString;
                                                                               Pai.JorSaldo       :=QrTemp1.FieldByName('Jornada').AsString;
                                                                               Pai.JorRef         :=1; //Pai.GeraRef(Pai.JorSaldo); // Funcao caucula ref do total de hoars da linah jornada, diferente do saldo de horas do movimento
                                                                               Pai.PtoData:=VDia;
                                                                               Pai.InserirMov1Click(nil);
                                                                        end;

                                                          next;
                                                          until Eof;
                                                   end;

                                         end;
                                                MessageBox(0, 'Processo foi realizado com sucesso, verifique!', 'Sucesso', MB_ICONINFORMATION or MB_OK);
                                                MessageBox(0, 'Esta a��o s� poder� ser revertida na tela de disponibilidade de M�o de obra!'+#13+#10+''+#13+#10+'Caso necessite, realize este procedimento nos demais perfis/fun��es!', 'Relembre', MB_ICONASTERISK or MB_OK);

                               end;
                   end
                   Else
                   MessageBox(0, 'Data est� fora do per�odo ativo, Verifique', 'Data incorreta!', MB_ICONWARNING or MB_OK);


end;

end.
