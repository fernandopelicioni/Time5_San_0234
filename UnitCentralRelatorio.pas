unit UnitCentralRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls, DB, DBCGrids, DBCtrls, Grids,
  DBGrids, ADODB, Gauges, Mask;

type
  TFormCentralRelatorio = class(TForm)
    Panel2: TPanel;
    DtIni: TDateTimePicker;
    DtFim: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton1: TSpeedButton;
    TabSheet2: TTabSheet;
    SpeedButton2: TSpeedButton;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    TabSheet4: TTabSheet;
    SpeedButton4: TSpeedButton;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    DtFuncoes: TDataSource;
    TabSheet5: TTabSheet;
    SpeedButton5: TSpeedButton;
    GroupBox2: TGroupBox;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText2: TDBText;
    DBCheckBox2: TDBCheckBox;
    DtEventos: TDataSource;
    TabSheet6: TTabSheet;
    SpeedButton6: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    QrPro: TADOQuery;
    DtPro: TDataSource;
    Gauge1: TGauge;
    RadioConsistencia: TRadioGroup;
    Memo2: TMemo;
    RadioEspelho: TRadioGroup;
    TabSheet7: TTabSheet;
    SpeedButton7: TSpeedButton;
    QrInterJornada: TADOQuery;
    Label7: TLabel;
    TabSheet8: TTabSheet;
    SpeedButton8: TSpeedButton;
    TabSheet9: TTabSheet;
    SpeedButton9: TSpeedButton;
    TabSheet10: TTabSheet;
    SpeedButton10: TSpeedButton;
    Gauge2: TGauge;
    Gauge3: TGauge;
    TabSheet11: TTabSheet;
    GroupBox3: TGroupBox;
    DBCtrlGrid3: TDBCtrlGrid;
    DBText3: TDBText;
    DBCheckBox3: TDBCheckBox;
    SpeedButton11: TSpeedButton;
    RadioDetalhe: TRadioGroup;
    TabSheet12: TTabSheet;
    SpeedButton12: TSpeedButton;
    Gauge4: TGauge;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    TabSheet15: TTabSheet;
    GroupBox4: TGroupBox;
    DBCtrlGrid4: TDBCtrlGrid;
    DBText4: TDBText;
    DBCheckBox4: TDBCheckBox;
    SpeedButton15: TSpeedButton;
    TabSheet16: TTabSheet;
    SpeedButton16: TSpeedButton;
    GroupBox5: TGroupBox;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    MaskEdit2: TMaskEdit;
    Label8: TLabel;
    RadioGroup2: TRadioGroup;
    DtDepto: TDataSource;
    PageControl2: TPageControl;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    GroupBox1: TGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    DbDepto: TDBLookupComboBox;
    Label9: TLabel;
    SpeedButton17: TSpeedButton;
    TabSheet19: TTabSheet;
    DbFuncao: TDBLookupComboBox;
    Label6: TLabel;
    SpeedButton18: TSpeedButton;
    TabSheet20: TTabSheet;
    SpeedButton19: TSpeedButton;
    Button1: TButton;
    TabSheet21: TTabSheet;
    SpeedButton20: TSpeedButton;
    GeraArquivo: TCheckBox;
    Button3: TButton;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    MaskEdit3: TMaskEdit;
    Label11: TLabel;
    MaskEdit4: TMaskEdit;
    Label12: TLabel;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBCtrlGrid2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    Procedure MontaHoraExtra;
    procedure SpeedButton17Click(Sender: TObject);
    procedure TabSheet18Enter(Sender: TObject);
    procedure TabSheet19Show(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure TabSheet17Show(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    f1,f2,s1,s2 : integer;

    { Public declarations }
  end;

var
  FormCentralRelatorio: TFormCentralRelatorio;

implementation

uses UnitRelatorio, UnitPai, UnitIniciaSistema, UnitCriaArquivo;

{$R *.dfm}

procedure TFormCentralRelatorio.BitBtn1Click(Sender: TObject);
begin
SCREEN.Cursor:=CRHOURGLASS;
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;

                         PAI.HoraExtra_Modelo2(NIL);
SCREEN.Cursor:=CRDEFAULT;

end;

procedure TFormCentralRelatorio.BitBtn2Click(Sender: TObject);
begin
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;

                         Memo2.Lines.ADD('Calculando Horas Extras Modelo 1');
                          pai.HoraExtra_Modelo1(nil);


end;

procedure TFormCentralRelatorio.Button2Click(Sender: TObject);
begin
                                    With Relatorio.QrInterJornada do
                                         begin
                                            Close;
                                            Open;

                                            if NOT EOF then
                                                 BEGIN
                                                      Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                      Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                      //showmessage('1');
                                                      Relatorio.Projeto.ExecuteReport('RV_INTJORNADA');
                                                     // showmessage('2');
                                                 END
                                                 else
                                                 begin
                                                         MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                                 end;
                                         end;

end;

procedure TFormCentralRelatorio.Button3Click(Sender: TObject);
begin
//                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
//                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
//                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RV_CriticaIntervalo');

end;

procedure TFormCentralRelatorio.DBCtrlGrid2Exit(Sender: TObject);
begin
            DtEventos.DataSet.first;
            DtEventos.DataSet.Last;

end;

procedure TFormCentralRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFormCentralRelatorio.FormCreate(Sender: TObject);
begin

            QrPro.Close;
            QrPro.Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
            QrPro.Open;
            DtFuncoes.DataSet.Open;
            DtEventos.DataSet.Open;
            DtDepto.DataSet.Open;
            Dtini.Date:= StrToDate(Pai.QrPeriodoAtivo.FieldByName('Tpe_inicio').AsString);
            DtFim.Date:= StrToDate(Pai.QrPeriodoAtivo.FieldByName('Tpe_Fim').AsString);
end;

procedure TFormCentralRelatorio.SpeedButton10Click(Sender: TObject);
VAR Q2,Q:TADOQUERY;
VCHAPAATUAL:INTEGER;
X:WORD;
begin
MessageBox(0, 'Caro Usu�rio,'+#13+#10+''+#13+#10+'Aconselho a n�o executar esta tarefa simultaneamente em outra esta��o, os dados apresentados podem n�o ser corretos!', 'Restri��o', MB_ICONQUESTION or MB_OK);
Screen.Cursor:=CrHourGlass;

                        // limpando
                        Q2:=tadoquery.create(nil);
                        Q2.COnnection:=Pai.Genoma;
                        Q2.Close;
                        Q2.Sql.clear;
                        Q2.SQL.ADD('delete tb_ptorel03');
                        Q2.ExecSQL;
                        Q2.Close;

           WITH Q DO
                BEGIN
                Q:=tadoquery.create(nil);
                Connection:=Pai.Genoma;
                Close;
                SQL.Clear;
                SQL.Add('select CONVERT(VARCHAR(10),PTO_DATA,103) AS DATA,PRO.CHA_PRO AS CHAPA,NOM_PRO AS NOME,PTO_EVENTO AS CODEVENTO, TVE_DES AS EVENTO, TVE_DISP AS DISPO');
                SQL.Add('FROM TB_PTODIAPERIODO A');
                sql.Add('LEFT JOIN TB_PTOMOV5 MOV ON MOV.PTO_DATA = A.TDP_DATA AND MOV.PTO_PERIODO = A.TDP_PERIODO');
                SQL.Add('LEFT JOIN TB_PROFISSIONAIS PRO ON PRO.COD_PRO = MOV.PTO_CHAPA');
                SQL.Add('LEFT JOIN TB_PTOEVENTOS EVE ON EVE.TVE_COD = MOV.PTO_EVENTO');
                Sql.Add('LEFT Join TB_PTOFUNCOES G On G.TFU_COD = MOV.PTO_FUN');
                Sql.Add('Left join Tb_Depto J On J.Cod_Depto = G.Tfu_Secao');
                SQL.Add('WHERE TDP_PERIODO = ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString);
                if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));


                if DBLookupComboBox1.KeyValue <> Null  then sql.Add('and Cod_pro = '+ quotedstr(DBLookupComboBox1.KeyValue));
                if DBLookupComboBox2.KeyValue <> Null  then sql.Add('and Cod_pro = '+ quotedstr(DBLookupComboBox2.KeyValue));

               // Sql.Add('and G.TFU_CHECK = ' + QuotedStr('1'));
                SQL.Add('ORDER BY pto_Chapa, PTO_DATA');
                OPEN;
                Gauge3.MaxValue:=sql.Count;
                if NOT EOF then
                      BEGIN
                             REPEAT
                                    X:=0;
                                    VCHAPAATUAL:=FieldByName('CHAPA').AsInteger;

                                    while VCHAPAATUAL = FieldByName('CHAPA').AsInteger DO
                                          BEGIN
                                                if (FieldByName('CODEVENTO').AsInteger <> 2) AND (FIELDBYNAME('DISPO').AsInteger = 0) THEN X:=X+1 ELSE X:=0;
                                                Gauge3.Progress:=Gauge3.Progress+1;
                                                IF X > 6 THEN
                                                       BEGIN
                                                             X:=0;
//                                                                    ShowMessage(IntToStr(X));
                                                                    Q2:=tadoquery.create(nil);
                                                                    Q2.COnnection:=Pai.Genoma;
                                                                    Q2.Close;
                                                                    Q2.Sql.clear;
                                                                    Q2.SQL.ADD('INSERT INTO TB_PTOREL03 (PREL03_CHAPA, PREL03_NOME, PREL03_DATA) ');
                                                                    Q2.SQL.Add('VALUES (');
                                                                    Q2.SQL.Add(QUOTEDSTR(FOrmatfloat('0000',VCHAPAATUAL))   + ',' + //PREL02_CHAPA
                                                                    QUOTEDSTR(FIELDBYNAME('NOME').AsString)                 + ',' + //PREL02_Data
                                                                    QUOTEDSTR(FIELDBYNAME('DATA').AsString)                 + ')');  //PREL02_Data
                                                                    memo1.Text:=q2.SQL.Text;
//                                                                    PageControl1.ActivePageIndex:=2;
                                                                    Q2.ExecSQL;
                                                       END;
                                                       NEXT;
                                                       if EOF then BREAK;

                                          END;

                              NEXT;
                             UNTIL EOF;
                      END;

                      WITH RELATORIO.QrCriticaFolgas DO
                           BEGIN
                                   CLOSE;
                                   OPEN;
                                   if NOT EOF then
                                       BEGIN
                                            Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                            Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                            Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                            Relatorio.Projeto.ExecuteReport('RV_crifolga');

                                       END
                                       else
                                       MessageBox(0, 'N�o h� resultados para sua busca!'+#13+#10+''+#13+#10+'Voce pode alterar seus crit�rios', 'Dados n�o encontrados', MB_ICONWARNING or MB_OK);


                           END;


                END;

    Gauge3.Progress:=0;

Screen.Cursor:=CrDefault;

end;

procedure TFormCentralRelatorio.SpeedButton11Click(Sender: TObject);
begin
              Screen.Cursor:=crhourGlass;
                       With Relatorio.QrEventosDetalhados do
                             begin
                                    Close;
                                    sql.Clear;
                                    Sql.Add('SELECT A.PTO_CHAPA, P.CHA_PRO AS CHAPA, P.NOM_PRO AS NOME,	B.TVE_COD AS CODEVENTO, B.TVE_DES AS EVENTO,   ');
                              			Sql.Add('CONVERT(VARCHAR(10),A.PTO_DATA,103) AS DATA  ');
                                    Sql.Add('FROM  TB_PTOMOV5 A JOIN      TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA  ');
                                    Sql.Add('Join TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA   ');
                                    Sql.Add('Join TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU   ');
                                    Sql.Add('JOIN  TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO AND TVE_CHECK = ''1''   ');
                                    Sql.Add('join Tb_Depto J On J.Cod_Depto = G.Tfu_Secao');

                                    Sql.Add(' where ');
                                    Sql.Add(' A.PTO_COLIGADA = '+ Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                                    Sql.Add('and B.TVE_COD >= 1 AND A.PTO_PERIODO ='+Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString);
//                                    Sql.Add('and G.TFU_CHECK = ''1''');
                                    Sql.Add(' AND A.PTO_DATA>=:INICIO AND A.PTO_DATA<=:FIM');

                                    if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                                    if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));


                                    if DBLookupComboBox1.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox1.KeyValue));
                                    if DBLookupComboBox2.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox2.KeyValue));
                                    case RadioGroup1.ItemIndex of
                                           0 : sql.Add('order by Pto_data, Chapa');
                                           1 : sql.Add('order by Pto_Data, Nome');
                                           2 : sql.Add('order by P.Cha_Pro, Pto_data');
                                           3 : sql.Add('order by Nome, Pto_Data');
                                           end;

                                     Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('FIM').Value:=DateToStr(DtFim.Date);
                                    Open;
                                    memo1.text:=sql.Text;
                                    if NOT EOF then
                                         BEGIN
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_EVEDET');
                                                CLOSE;
                                         END;
                             end;


              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton12Click(Sender: TObject);
begin
/// RELATORIO DE INDICADORES DE DESEMPENHO
         Screen.Cursor:=crhourGlass;
                         mEMO2.Visible:=TRUE;
                         Gauge1.Visible:=true;
                         pai.OrigemProgressor:='CR2';
                         PAI.LIMPATB(NIL);  // ZERA A TABELA
                                                  Pai.VChapaAtual:=0;
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;
                         // Designando o filtro
                         pai.VF1:=0;
                         pai.Vs1:=0;
                         if DbFuncao.KeyValue <> Null then
                              begin
                                   PAI.VF1:=DbFuncao.KeyValue;
                              end;
                         if DbDepto.KeyValue <> Null then
                              begin
                                   PAI.Vs1:=DbDepto.KeyValue;
                              end;


                         if DBLookupComboBox1.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox1.KeyValue;
                         if DBLookupComboBox2.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox2.KeyValue;
                         PAI.CalculaDSR(NIL);

                         PAI.EventosBasicos(NIL);

                         pai.HoraExtra_Modelo1(nil);

                         PAI.HoraExtra_Modelo2(NIL);

                         pai.ADN;

                         PAI.CALCULAHN(NIL);

                         PAI.CalculaHoraDevida(NIL);
                         // Se opcao gerar arquivo estiver ligada entao
                         PAI.SomaArticularidade(NIL);


                          With Relatorio.QrIndicadores do
                             begin
                                    Close;
                                    Open;
                                    if NOT EOF then
                                         BEGIN
                                                // definir novo relatorio

                                               Relatorio.Projeto.SetParam('Titulo1','Todos');

                                                if DBLookupComboBox1.KeyValue <> Null then
                                                            Relatorio.Projeto.SetParam('Titulo1',DtPro.DataSet.FieldByName('Nom_pro').AsString);
                                                if DBLookupComboBox2.KeyValue <> Null then
                                                            Relatorio.Projeto.SetParam('Titulo1',DtPro.DataSet.FieldByName('Nom_pro').AsString);

                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_RESEVE');
                                         END
                                         else
                                         begin
                                               MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                         end;
                                         close;
                             end;

//                                                CLOSE;
//                                         END;
//                             end;


              Screen.Cursor:=crDefault;



end;

procedure TFormCentralRelatorio.SpeedButton13Click(Sender: TObject);
begin
/// RELATORIO DE INDICADORES DE DESEMPENHO
         Screen.Cursor:=crhourGlass;
                         mEMO2.Visible:=TRUE;
                         PAI.LIMPATB(NIL);  // ZERA A TABELA
                                                  Pai.VChapaAtual:=0;
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;
                         // Designando o filtro
                         pai.VF1:=0;
                         pai.Vs1:=0;
                         if DbFuncao.KeyValue <> Null then
                              begin
                                   PAI.VF1:=DbFuncao.KeyValue;
                              end;
                         if DbDepto.KeyValue <> Null then
                              begin
                                   PAI.Vs1:=DbDepto.KeyValue;
                              end;


                         if DBLookupComboBox1.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox1.KeyValue;
                         if DBLookupComboBox2.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox2.KeyValue;


                         pai.HoraExtra_Mod3;

                          With Relatorio.QrListaHoraExtra do
                             begin
                                    Close;
                                    MontaHoraExtra;
                                    Open;
                                    if NOT EOF then
                                         BEGIN
                                                // definir novo relatorio
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_HorExt');
                                         END
                                         else
                                         begin
                                               MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                         end;
                             end;

                                               CLOSE;
//                                         END;
//                             end;


              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton14Click(Sender: TObject);
begin
/// RELATORIO DE HORA DEVIDAS, EXECUTA O ALGORITO DO PAI.CAUCULADEVIDA E SALVA NO TB_PTOREL01
         Screen.Cursor:=crhourGlass;
                         mEMO2.Visible:=TRUE;
                         PAI.LIMPATB(NIL);  // ZERA A TABELA
                         Pai.VChapaAtual:=0;
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;

                         // Designando o filtro
                         pai.VF1:=0;
                         pai.Vs1:=0;
                         if DbFuncao.KeyValue <> Null then
                              begin
                                   PAI.VF1:=DbFuncao.KeyValue;
                              end;
                         if DbDepto.KeyValue <> Null then
                              begin
                                   PAI.Vs1:=DbDepto.KeyValue;
                              end;


                         if DBLookupComboBox1.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox1.KeyValue;
                         if DBLookupComboBox2.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox2.KeyValue;


//                         pai.HoraExtra_Modelo1(nil);

                         PAI.LOADDV_COLETUR;
                         //PAI.CalculaHoraDevida(NIL);
                         // Se opcao gerar arquivo estiver ligada entao

                          With Relatorio.QrListaHoraDevida do
                             begin
                                    Close;
                                    Open;
                                    if NOT EOF then
                                         BEGIN
                                                // definir novo relatorio
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_HorDev');
                                         END
                                         else
                                         begin
                                               MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                         end;
                             end;

                                               CLOSE;
//                                         END;
//                             end;


              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton15Click(Sender: TObject);
begin

              // EVENTOS DETALHADOS

              Screen.Cursor:=crhourGlass;
                       With Relatorio.QrEventosDetalhados do
                             begin
                                    Close;
                                    sql.Clear;
                                    Sql.Add('SELECT A.PTO_CHAPA, P.CHA_PRO AS CHAPA, P.NOM_PRO AS NOME,	B.TVE_COD AS CODEVENTO, B.TVE_DES AS EVENTO,   ');
                              			Sql.Add('   CONVERT(VARCHAR(10),A.PTO_DATA,103) AS DATA  ');
                                    Sql.Add('FROM  TB_PTOMOV5 A JOIN      TB_PROFISSIONAIS P ON P.COD_PRO = A.PTO_CHAPA  ');
                                    Sql.Add('Join TB_FUNCAO F on f.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA   ');
                                    Sql.Add('Join TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU   ');
                                    Sql.Add('JOIN  TB_PTOEVENTOS B ON B.TVE_COD = A.PTO_EVENTO AND TVE_CHECK = ''1''   ');
                                    Sql.Add('join Tb_Depto j On J.cod_depto = G.Tfu_Secao');

                                    Sql.Add(' where ');
                                    Sql.Add(' A.PTO_COLIGADA = '+ Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                                    Sql.Add('and B.TVE_COD > 1 AND A.PTO_PERIODO ='+Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString);

                                    if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                                    if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));

                                   // Sql.Add('and G.TFU_CHECK = ''1''');
                                    Sql.Add(' AND A.PTO_DATA>=:INICIO AND A.PTO_DATA<=:FIM');
                                    if DBLookupComboBox1.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox1.KeyValue));
                                    if DBLookupComboBox2.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox2.KeyValue));
                                    sql.Add('order by Nome, Pto_Data');

                                     Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('FIM').Value:=DateToStr(DtFim.Date);
                                    Open;

                                    memo1.text:=sql.Text;
                                    if NOT EOF then
                                         BEGIN
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_EVEAgr');
                                                CLOSE;
                                         END;
                             end;


              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton16Click(Sender: TObject);
begin
         Screen.Cursor:=crhourGlass;
                       s1:=0;
                       s2:=254;
                       f1:=0;
                       f2:=99;

                       With Relatorio.QrEspPontoMod3 do
                             begin
                                    Close;
                                    if DbFuncao.KeyValue <> Null then
                                          begin
                                             f1:=DbFuncao.KeyValue;
                                             f2:=DbFuncao.KeyValue;
                                          end;
                                    if DbDepto.KeyValue <> Null then
                                          begin
                                              s1:=DbDepto.KeyValue;
                                              s2:=DbDepto.KeyValue;
                                          end;
                                    Parameters.ParamByName('funcao').Value:=f1;
                                    Parameters.ParamByName('funcao2').Value:=f2;
                                    Parameters.ParamByName('secao').Value:=S1;
                                    Parameters.ParamByName('secao2').Value:=S2;

                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;

                                    Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('FIM').Value:=DateToStr(DtFim.Date);
                                    Parameters.ParamByName('periodo').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                                    Parameters.ParamByName('ChI').Value:='0';
                                    Parameters.ParamByName('ChF').Value:='9999';


                                    if DBLookupComboBox1.KeyValue <> Null then
                                           begin
                                               Parameters.ParamByName('ChI').Value:=(DBLookupComboBox1.KeyValue);
                                               Parameters.ParamByName('ChF').Value:=(DBLookupComboBox1.KeyValue);
                                           end;
                                    if DBLookupComboBox2.KeyValue <> Null then
                                           begin
                                               Parameters.ParamByName('ChI').Value:=(DBLookupComboBox1.KeyValue);
                                               Parameters.ParamByName('ChF').Value:=(DBLookupComboBox1.KeyValue);
                                           end;

                                    memo1.text:=sql.Text;

                                    Open;
                                    if not eof then
                                          begin
                                                //if CheckBox1.Enabled = true then Relatorio.Projeto.SetParam('DestacaIntervalo','S') else Relatorio.Projeto.SetParam('DestacaIntervalo','N');
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_EspMod3');
                                          end;
                             end;

              Screen.Cursor:=crDefault;




end;

procedure TFormCentralRelatorio.SpeedButton17Click(Sender: TObject);
begin
         DbDepto.KeyValue:=Null;
end;

procedure TFormCentralRelatorio.SpeedButton18Click(Sender: TObject);
begin
         DbFuncao.KeyValue:=Null;

end;

procedure TFormCentralRelatorio.SpeedButton19Click(Sender: TObject);
begin
        MessageBox(0, 'Aten��o'+#13+#10+''+#13+#10+'Voce esta utilizando uma base de testes, onde n�o � possivel emitir esse tipo de relatorio', '', MB_ICONWARNING or MB_OK);
end;

procedure TFormCentralRelatorio.SpeedButton1Click(Sender: TObject);
begin
// CONSISTENCIA DE LANCAMENTOS
              Screen.Cursor:=crhourGlass;

                       With Relatorio.QrMovConsistencia do
                             begin
                                    Close;
                                    Sql.Clear;
                                    SQL.Add('select G.TFU_DES as Perfil, Convert(varchar(10),H.TDP_DATA,103) as Dia, Cod_Pro as CodPro, Cha_pro as Chapa, Nom_pro as Nome, M.Pto_Data as Data');
                                    SQL.Add('From  TB_PROFISSIONAIS A');
                                    SQL.Add('Join    TB_FUNCAO F On F.COD_FUNCAO = A.PRO_FUNCAOEXERCIDA AND F.REG_PONTO = ''S''');
                                    SQL.Add('Join    TB_PTOFUNCOES G On G.TFU_COD =  F.FUN_TFU');
                                    Sql.Add('Join    TB_Depto J on J.cod_depto = g.Tfu_Secao');
                                    SQL.Add('Join    TB_PTODIAPERIODO H on H.TDP_PERIODO =:periodo and TDP_DATA >=:inicio and TDP_DATA <=:fim');
                                    SQL.Add('Left Join	TB_PTOMOV5 M On M.PTO_CHAPA = A.COD_PRO and PTO_DATA = h.TDP_DATA');
                                    SQL.Add('Where	A.COD_COLIGADA =:coligada');
                                    SQL.Add('And A.ATIVO_PRO = ''A''');
                                    if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                                    if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));

                                    if DBLookupComboBox1.KeyValue <> Null then Sql.Add('and cod_pro = ' + quotedStr(DBLookupComboBox1.KeyValue));
                                    if DBLookupComboBox2.KeyValue <> Null then Sql.Add('and cod_pro = ' + quotedStr(DBLookupComboBox2.KeyValue));
                                    SQL.Add('And Pto_Data is null ');
                                    case RadioConsistencia.ItemIndex of
                                         0 : SQL.Add('Order by  Perfil, TDP_DATA, nom_pro');
                                         1 : SQL.Add('Order by  Perfil, TDP_DATA, Chapa');
                                         2 : SQL.Add('Order by  Perfil, nom_pro, TDP_DATA');
                                         3 : SQL.Add('Order by  Perfil, cha_pro, TDP_DATA');
                                    end;

                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                    Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('FIM').Value:=DateToStr(DtFim.Date);
                                    Parameters.ParamByName('periodo').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                                    memo1.text:=sql.Text;
                                    Open;
                                    memo1.text:=sql.Text;
                                    end;
                                    // ir� gerar o realtorio mesmo que n�o exita consistencias
                                    Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                    Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                    Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                    Relatorio.Projeto.ExecuteReport('RV_Consistencia');
//                                    Relatorio.Projeto.Close;


              Screen.Cursor:=crDefault;
end;

procedure TFormCentralRelatorio.SpeedButton20Click(Sender: TObject);
begin
         Screen.Cursor:=crhourGlass;
                         mEMO2.Visible:=TRUE;
                         PAI.LIMPATB(NIL);  // ZERA A TABELA
                         Pai.VChapaAtual:=0;
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;

                         // Designando o filtro
                         pai.VF1:=0;
                         pai.Vs1:=0;
                         if DbFuncao.KeyValue <> Null then
                              begin
                                   PAI.VF1:=DbFuncao.KeyValue;
                              end;
                         if DbDepto.KeyValue <> Null then
                              begin
                                   PAI.Vs1:=DbDepto.KeyValue;
                              end;


                         if DBLookupComboBox1.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox1.KeyValue;
                         if DBLookupComboBox2.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox2.KeyValue;

                         pai.loadfolgas;
                         pai.HoraExtra_Modelo2(nil);
                         //pai.HoraExtra_Mod3;
                       //  PAI.LOADDV_COLETUR;



                          With Relatorio.QrHoraExtDev do
                             begin
                                    Close;
                                    Open;
                                    if NOT EOF then
                                         BEGIN
                                                // definir novo relatorio
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_HorExtDev');
                                         END
                                         else
                                         begin
                                               MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                         end;
                             end;
              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton2Click(Sender: TObject);
begin
// PONTO DIARIO
              Screen.Cursor:=crhourGlass;
                       With Relatorio.QrMovPerLanDia do
                             begin
                                    Close;
                                    Sql.Clear;
                                    Sql.Add('select G.Tfu_Des as Perfil, P.CHA_PRO as Chapa,  P.NOM_PRO as Nome, M.Pto_Evento As CodEvento, Tve_des as Evento,');
                                    Sql.Add('Tve_des as Evento, substring(Convert(char,M.JOR_HI1 ,108),1,5) as HI1, Substring(Convert(char,M.Jor_HF1 ,108),1,5) as HF1,       Substring(Convert(char,M.Jor_T1 ,108),1,5) as TOT1,');
                                    Sql.Add('Substring(Convert(char,M.Jor_VEI1 ,108),1,5) as VEI1,  	   Substring(Convert(char,M.JOR_HI2 ,108),1,5) as HI2,       Substring(Convert(char,M.Jor_HF2 ,108),1,5) as HF2,');
                                    Sql.Add('Substring(Convert(char,M.Jor_T2 ,108),1,5) as TOT2,   Substring(Convert(char,M.Jor_VEI2 ,108),1,5) as VEI2,       Substring(Convert(char,M.JOR_HI3 ,108),1,5) as HI3,');
                                    Sql.Add('Substring(Convert(char,M.Jor_HF3 ,108),1,5) as HF3,       Substring(Convert(char,M.Jor_T3 ,108),1,5) as TOT3,	   Substring(Convert(char,M.Jor_VEI3 ,108),1,5) as VEI3,');
                                    Sql.Add('Substring(Convert(char,M.JOR_HI4 ,108),1,5) as HI4,       Substring(Convert(char,M.Jor_HF4 ,108),1,5) as HF4,       Substring(Convert(char,M.Jor_T4 ,108),1,5) as TOT4,');
                                    Sql.Add('Substring(Convert(char,M.Jor_VEI4 ,108),1,5) as VEI4,       Substring(Convert(char,M.JOR_HI5 ,108),1,5) as HI5,       Substring(Convert(char,M.Jor_HF5 ,108),1,5) as HF5,');
                                    Sql.Add('Substring(Convert(char,M.Jor_T5 ,108),1,5) as TOT5,	   Substring(Convert(char,M.Jor_VEI5 ,108),1,5) as VEI5,       Convert(varchar(5),TFU_HORA,108) as Jornada,');
                                    sql.Add('case  when JOR_TOT > TFU_HORA then (Convert(varchar(5),convert(datetime,JOR_TOT) - CONVERT(datetime,Tfu_hora),108))  end as Extra,');
                                    SQL.Add('Substring(Convert(char,M.Jor_TOT ,108),1,5) as SALDO,');
                                    sql.Add('--- intervalos --------------------------------------- ');
                                    sql.Add('CASE WHEN JOR_HI2 <> ''00:00'' THEN convert(varchar(2),DATEDIFF(MINUTE,JOR_HF1,JOR_HI2)/60) + '':''+');
                                            sql.Add('RIGHT(''00''+  convert(varchar(2),DATEDIFF(MINUTE,JOR_HF1,JOR_HI2) % 60),2) END INT1_HOR,');
                                            sql.Add('CASE WHEN JOR_HI3 <> ''00:00'' THEN  convert(varchar(2),DATEDIFF(MINUTE,JOR_HF2,JOR_HI3) /60) +'':''+');
                                            sql.Add('RIGHT(''00''+ convert(varchar(2),DATEDIFF(MINUTE,JOR_HF2,JOR_HI3) %60),2)END INT2_HOR,');
                                            sql.Add('CASE WHEN JOR_HI4 <> ''00:00'' THEN convert(varchar(2),DATEDIFF(MINUTE,JOR_HF3,JOR_HI4) /60)+'':''+');
                                            sql.Add('RIGHT(''00''+ convert(varchar(2),DATEDIFF(MINUTE,JOR_HF3,JOR_HI4) %60),2)END INT3_HOR,');
                                            sql.Add('--*************************************************************');
                                            sql.Add('CASE WHEN JOR_HI5 <> ''00:00'' THEN convert(varchar(2),DATEDIFF(MINUTE,JOR_HF4,JOR_HI5) /60)+'':''+');
                                            sql.Add('RIGHT(''00''+ convert(varchar(2),DATEDIFF(MINUTE,JOR_HF4,JOR_HI5) %60),2) end INT4_HOR,');
                                            sql.Add('--*********************************************************************************************');
                                            sql.Add('CONVERT(VARCHAR(2),');
                                            sql.Add('((CASE WHEN JOR_HI2 <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF1,JOR_HI2) ELSE 0 END)+');
                                            sql.Add('(CASE WHEN JOR_HI3  <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF2,JOR_HI3) ELSE 0 END)+');
                                            sql.Add('(CASE WHEN JOR_HI4  <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF3,JOR_HI4) ELSE 0 END)+');
                                            sql.Add('(CASE WHEN JOR_HI5  <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF4,JOR_HI5) ELSE 0 END))');
                                            sql.Add('/60) +'':''+ RIGHT(''00''+ CONVERT(VARCHAR(2),');
                                            sql.Add('((CASE WHEN JOR_HI2 <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF1,JOR_HI2) ELSE 0 END)+');
                                            sql.Add('(CASE WHEN JOR_HI3 <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF2,JOR_HI3) ELSE 0 END)+');
                                            sql.Add('(CASE WHEN JOR_HI4 <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF3,JOR_HI4) ELSE 0 END)+');
                                            sql.Add('(CASE WHEN JOR_HI5 <> ''00:00'' THEN DATEDIFF(MINUTE,JOR_HF4,JOR_HI5) ELSE 0 END))  % 60),2 )');
                                            sql.Add('TOT_INT_HOR,');

                                    sql.Add('case When Tfu_hora > Jor_Tot then Convert(varchar(5),convert(datetime,TFU_HORA) - CONVERT(datetime,JOR_TOT),108)   end as Devida From TB_PTOMOV5 m');
                                    Sql.Add('Join	tb_Profissionais P On M.PTO_CHAPA = P.COD_PRO and M.pto_coligada=:COLIGADA');
                                    Sql.Add('Join  TB_PTOPERIODOS D On D.TPE_COD = M.PTO_PERIODO');
                                    Sql.Add('Join  TB_PtoEVENTOS B On B.TVE_COD = M.PTO_EVENTO');
                                    Sql.Add('Join  TB_FUNCAO F on F.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                                    Sql.Add('Join  TB_PTOFUNCOES G On G.TFU_COD = F.FUN_TFU');
                                    Sql.Add('Join  TB_PTOCOMPENSACAO E on E.TCO_COD = g.TFU_COMPENSACAO');
                                    Sql.Add('Join  TB_Depto J on J.cod_depto = g.Tfu_Secao');



                                    Sql.Add('Where M.PTO_DATA=:INICIO AND D.TPE_Cod=:PERIODO');
                                    if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                                    if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));


                                    if DBLookupComboBox1.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox1.KeyValue));
                                    if DBLookupComboBox2.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox2.KeyValue));

                                    // Determina a ordem escolhida no Radio Group
                                    case RadioGroup1.ItemIndex of
                                           0 : sql.Add('order by Perfil, Nome');
                                           1 : sql.Add('order by Perfil, Chapa');
                                           2 : sql.Add('order by Perfil, HI1');
                                           3 : sql.Add('order by Perfil, Extra desc');
                                           4 : sql.Add('order by Perfil, Devida desc');
                                           end;
                                    /// insere os parametros apontados acima
                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                    Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('periodo').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                                    memo1.Text:=sql.Text;
                             end;


                                    // ir� gerar o realtorio mesmo que n�o exita consistencias
                                    Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                    Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                    Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                    Relatorio.Projeto.ExecuteReport('RV_EspelhoDiario');



              Screen.Cursor:=crDefault;
end;


procedure TFormCentralRelatorio.SpeedButton3Click(Sender: TObject);
begin
        close;
end;

procedure TFormCentralRelatorio.SpeedButton4Click(Sender: TObject);
begin
 // EVENTOS POR COLABORADOR

              Screen.Cursor:=crhourGlass;
                       With Relatorio.QrMovEventoColaborador do
                             begin

                if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));


                                    Close;
                                    sql.Clear;
                                    Sql.Add('select P.COD_PRO AS CODIGO, P.CHA_PRO AS CHAPA, NOM_PRO AS NOME,  G.TFU_DES AS PERFIL,  E.TVE_DES AS EVENTO, COUNT(*) AS QTDS');
                                    Sql.Add('  from TB_PTOMOV5 A');
                                    Sql.Add(' Join  TB_PROFISSIONAIS P On P.COD_PRO = A.PTO_CHAPA and A.PTO_COLIGADA = P.COD_COLIGADA');
                                    Sql.Add(' Join  TB_FUNCAO F On F.COD_FUNCAO = P.PRO_FUNCAOEXERCIDA');
                                    Sql.Add('Join  TB_PTOEVENTOS E ON E.TVE_COD = A.PTO_EVENTO AND E.TVE_CHECK = ''1''');
                                    Sql.Add('JOIN  TB_PTOFUNCOES G ON G.TFU_COD = F.FUN_TFU AND G.TFU_CHECK = ''1''');
                                    Sql.Add('JOIN  Tb_Depto j on J.cod_depto = g.Tfu_Secao');
                                    Sql.Add('WHERE  A.PTO_COLIGADA=:COLIGADA  AND A.PTO_DATA>=:INICIO AND A.PTO_DATA<=:FIM');
                                    if DBLookupComboBox1.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox1.KeyValue));
                                    if DBLookupComboBox2.KeyValue <> Null then Sql.Add('and Pto_Chapa = ' + quotedStr(DBLookupComboBox2.KeyValue));

                                    if DbDepto.KeyValue <> Null then Sql.Add('And G.Tfu_Secao = ' + QuotedStr(DbDepto.KeyValue));
                                    if DbFuncao.KeyValue <> Null then Sql.Add('And G.Tfu_cod = ' + QuotedStr(DbFuncao.KeyValue));



                                    Sql.Add(' GROUP BY P.COD_PRO, P.CHA_PRO, P.NOM_PRO, G.TFU_DES, E.TVE_DES');
                                    Sql.Add('ORDER BY PERFIL, EVENTO, NOME');
                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                    Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('FIM').Value:=DateToStr(DtFim.Date);
                                    Open;
                                    memo1.text:=sql.Text;
                                    if NOT EOF then
                                         BEGIN
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_EVECOLABO');
                                                CLOSE;
                                         END;
                             end;


              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton5Click(Sender: TObject);
begin
     /// Proventos e Descontos
MessageBox(0, 'Esta tarefa � extremamente importante,'+#13+#10+''+#13+#10+'Certifique-se de que nenhum outro usu�rio esteja realizando este procedimento de GERA��O DE PROVENTOS E DESCONTOS durante o procedimento de gera��o do arquivo!'+#13+#10+''+#13+#10+''+#13+#10+''+#13+#10+'Obrigado', 'AVISO IMPORTANTE', MB_ICONINFORMATION or MB_OK);
         Screen.Cursor:=crhourGlass;
                         mEMO2.Visible:=TRUE;
                         Gauge1.Visible:=true;
                         pai.OrigemProgressor:='CR1';
                         Memo2.Lines.ADD('Limpando tabela tempor�ria');

                         // Designando o filtro
                         pai.VF1:=0;
                         pai.Vs1:=0;
                         if DbFuncao.KeyValue <> Null then
                              begin
                                   PAI.VF1:=DbFuncao.KeyValue;
                              end;
                         if DbDepto.KeyValue <> Null then
                              begin
                                   PAI.Vs1:=DbDepto.KeyValue;
                              end;

                         PAI.LIMPATB(NIL);  // ZERA A TABELA
                         Pai.VChapaAtual:=0;
                         Pai.VPeriodoInicial:=DtIni.Date;
                         Pai.VPeriodoFinal:=DtFim.Date;

                         if DBLookupComboBox1.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox1.KeyValue;
                         if DBLookupComboBox2.KeyValue <> Null then
                                   PAI.VChapaAtual:=DBLookupComboBox2.KeyValue;

                         Memo2.Lines.ADD('Computando Eventos Basicos');
                         PAI.EventosBasicos(NIL);

                         Memo2.Lines.ADD('DSR perdidas');
                         PAI.CalculaDSR(NIL);

//                         Memo2.Lines.ADD('Dias trabalhados.....');
//                         PAI.diastrab;

                         Memo2.Lines.ADD('Calculando Horas Extras Modelo 1');
                          pai.HoraExtra_Modelo1(nil);

                         Memo2.Lines.ADD('Calculando Horas Extras Modelo 2');
                          pai.HoraExtra_Modelo2(nil);


                         Memo2.Lines.ADD('Somando Horas Normais trabalhadas');
                         PAI.CALCULAHN(NIL);


                         Memo2.Lines.ADD('Extraindo Adcional Noturno');
                         pai.ADN;


                        // Memo2.Lines.ADD('Verificando BRT ');
                        // PAI.SomaArticularidade(NIL);

                         //coletur
                         //Memo2.Lines.ADD('Hora Extra Sumula 427 TST');
                         //PAI.HORASEMINTERVALO;

                    //     Memo2.Lines.ADD('Horas devidas.....');
                    //     PAI.CalculaHoraDevida(NIL);
                          // Articularidade nao existe na coletur
//                         Memo2.Lines.ADD('Definindo Articularidade....');
//                         PAI.SomaArticularidade(NIL);

//                         Memo2.Lines.ADD('NOVO: Seletividade....');
//                         PAI.SomaSeletividade;


                         // Se opcao gerar arquivo estiver ligada entao
                         if GeraArquivo.Checked = True then
                                   Begin
                                             MessageBox(0, 'Voc� optou pela gera��o do arquivo,'+#13+#10+''+#13+#10+'Lembre-se: Enquanto ele n�o for gerado, Nenhum usu�rio dever� gerar o relatorio de Proventos e Descontos', 'Gera��o de arquivo confirmada', MB_ICONEXCLAMATION or MB_OK);
                                             Application.CreateForm(TFormCriaArquivo,FormCriaArquivo);
                                             FormCriaArquivo.ShowModal;
                                   End;

                          With Relatorio.QrRelEventos01 do
                             begin
                                    Close;
                                    Open;
                                    if NOT EOF then
                                         BEGIN
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('RV_RELEVE01');
                                         END
                                         else
                                         begin
                                               MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                         end;
                             end;

//                                                CLOSE;
//                                         END;
//                             end;


              Screen.Cursor:=crDefault;
              CLOSE;

    ///
    ///
    ///
end;

procedure TFormCentralRelatorio.SpeedButton6Click(Sender: TObject);
begin

              // FICHA DE PONTO
              Screen.Cursor:=crhourGlass;

                       With Relatorio.QrEspelhoPontoMod1 do
                             begin
                                    Close;
                                     s1:=0;
                                     s2:=254;
                                     f1:=0;
                                     f2:=99;
                                    if DbFuncao.KeyValue <> Null then
                                          begin
                                             f1:=DbFuncao.KeyValue;
                                             f2:=DbFuncao.KeyValue;
                                          end;
                                    if DbDepto.KeyValue <> Null then
                                          begin
                                              s1:=DbDepto.KeyValue;
                                              s2:=DbDepto.KeyValue;
                                          end;
                                    Parameters.ParamByName('funcao').Value:=f1;
                                    Parameters.ParamByName('funcao2').Value:=f2;
                                    Parameters.ParamByName('secao').Value:=S1;
                                    Parameters.ParamByName('secao2').Value:=S2;

                                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;

                                    Parameters.ParamByName('INICIO').Value:=DateToStr(DtIni.Date);
                                    Parameters.ParamByName('FIM').Value:=DateToStr(DtFim.Date);
                                    Parameters.ParamByName('periodo').Value:=Pai.QrPeriodoAtivo.FieldByName('Tpe_Cod').AsString;
                                    Parameters.ParamByName('ChI').Value:='0';
                                    Parameters.ParamByName('ChF').Value:='9999';


                                    if DBLookupComboBox1.KeyValue <> Null then
                                           begin
                                               Parameters.ParamByName('ChI').Value:=(DBLookupComboBox1.KeyValue);
                                               Parameters.ParamByName('ChF').Value:=(DBLookupComboBox1.KeyValue);
                                           end;
                                    if DBLookupComboBox2.KeyValue <> Null then
                                           begin
                                               Parameters.ParamByName('ChI').Value:=(DBLookupComboBox1.KeyValue);
                                               Parameters.ParamByName('ChF').Value:=(DBLookupComboBox1.KeyValue);
                                           end;

                                    Open;
                                    memo1.text:=sql.Text;
                                    if NOT EOF then
                                         BEGIN
                                                Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                                Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                Relatorio.Projeto.ExecuteReport('Rv_EspelhoPontoMod1');
                                                //CLOSE;
                                         END;
                             end;


              Screen.Cursor:=crDefault;

end;

procedure TFormCentralRelatorio.SpeedButton7Click(Sender: TObject);
Var Q: TAdoquery;
IntervaloPrevisto, IntervaloJornada, ChapaAtual:Integer;
Vdia, Vfim, VInicio : String;
begin

Screen.Cursor:=CrHourGlass;
                Q:=tadoquery.create(nil);
                Q.Connection:=Pai.Genoma;
                q.Close;
                Q.SQL.Clear;
                Q.SQL.Add('DELETE TB_PTOREL02');
                Q.ExecSQL;
                  with QrInterJornada do
                      begin
                             Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_Coligada').AsString;
                             Parameters.ParamByName('Periodo').Value:=(Pai.QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString);
                             Open;
                             if not eof then
                                   begin
                                          repeat
                                                IntervaloPrevisto:= FieldByName('IntJorRef').AsInteger;
                                                IntervaloJornada:= FieldByName('Intervalo').AsInteger;
                                                ChapaAtual:=FieldByName('Chapa').AsInteger;
                                                if FieldByName('Dia').AsString <> Null then Vdia:=FieldByName('Dia').AsString;
                                                if FieldByName('Fim').AsString <> Null then VFim:=FieldByName('Fim').AsString;

                                                if FieldByName('Inicio').AsString <> Null then VInicio:=FieldByName('Inicio').AsString;
                                                if (IntervaloJornada < IntervaloPrevisto) AND (INTERVALOJORNADA > 0)  then
                                                     begin
                                                                    Q.Close;
                                                                    Q.Sql.clear;
                                                                    Q.SQL.ADD('INSERT INTO TB_PTOREL02 (PREL02_CHAPA, PREL02_DATA1, PREL02_VALOR, PREL02_HRSAIDA, PREL02_HRENTRADA) ');
                                                                    Q.SQL.Add('VALUES (');
                                                                    Q.SQL.Add(QUOTEDSTR(formatfloat('0000',CHAPAATUAL))  + ',' + //PREL02_CHAPA
                                                                    QUOTEDSTR(Vdia)                                      + ',' + //PREL02_Data
                                                                    QUOTEDSTR(FORMATFLOAT('00',INTERVALOJORNADA DIV 60)
                                                                    + ':'
                                                                    + FORMATFLOAT('00',INTERVALOJORNADA MOD 60))         + ',' +
                                                                    QUOTEDSTR(Vfim)                                      + ',' + //PREL02_Data
                                                                    QUOTEDSTR(VInicio)                                   + ')');  //PREL02_Data
                                                                    memo1.Text:=q.SQL.Text;

//                                                                    PageControl1.ActivePageIndex:=2;
                                                                    Q.ExecSQL;
                                                     end;
                                          next;
                                          until (eof);
                                   end;
                                   // showmessage('saiu da gravacao inicia rel');
                                    With Relatorio.QrInterJornada do
                                         begin
                                            Close;
                                            Open;
                                            if NOT EOF then
                                                 BEGIN
                                                      Relatorio.Projeto.SetParam('Dt1',(Pai.QrPeriodoAtivo.FieldByName('TPE_DES').AsString));
                                                      Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                                      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                      Relatorio.Projeto.ExecuteReport('RV_INTJOR');
                                                 END
                                                 else
                                                 begin
                                                         MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                                                 end;
                                         end;
                      end;

Screen.Cursor:=CrDefault;


end;

procedure TFormCentralRelatorio.SpeedButton8Click(Sender: TObject);


begin
Screen.Cursor:=CrHourGlass;
           f1:=0;
           f2:=999;
           s1:=0;
           s2:=999;
           With Relatorio.QrCriticaIntervalo do
                  begin
                        Close;
                        if DbFuncao.KeyValue <> Null then
                              begin
                                   f1:=DbFuncao.KeyValue;
                                   f2:=DbFuncao.KeyValue;
                              end;
                        if DbDepto.KeyValue <> Null then
                              begin
                                    s1:=DbDepto.KeyValue;
                                    s2:=DbDepto.KeyValue;
                              end;

                        Parameters.ParamByName('funcao').Value:=f1;
                        Parameters.ParamByName('funcao2').Value:=f2;
                        Parameters.ParamByName('secao').Value:=S1;
                        Parameters.ParamByName('secao2').Value:=S2;

                        Parameters.ParamByName('inicio').Value:=  dateToStr(DtIni.Date);
                        Parameters.ParamByName('Fim').Value:=     dateToStr(DtFim.Date);
                        Parameters.ParamByName('Periodo').Value:= (Pai.QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString);
                        Open;
                        memo1.Text:=sql.Text;
                        if Not Eof then
                              Begin
                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RV_CRINT');
                              END
                              else
                              begin
                                        MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                              end;

                  end;



Screen.Cursor:=CrDefault;

end;

procedure TFormCentralRelatorio.SpeedButton9Click(Sender: TObject);

begin
Screen.Cursor:=CrHourGlass;
           f1:=0;
           f2:=999;
           S1:=0;
           S2:=999;
           With Relatorio.QrCriticaExesso do
                  begin
                        Close;
                       if DbFuncao.KeyValue <> Null then
                              begin
                                   f1:=DbFuncao.KeyValue;
                                   f2:=DbFuncao.KeyValue;
                              end;
                        if DbDepto.KeyValue <> Null then
                              begin
                                    s1:=DbDepto.KeyValue;
                                    s2:=DbDepto.KeyValue;
                              end;
                        Parameters.ParamByName('funcao').Value:=f1;
                        Parameters.ParamByName('funcao2').Value:=f2;
                        Parameters.ParamByName('secao').Value:=S1;
                        Parameters.ParamByName('secao2').Value:=S2;


                        Parameters.ParamByName('inicio').Value:=dateToStr(DtIni.Date);
                        Parameters.ParamByName('Fim').Value:=dateToStr(DtFim.Date);
                        Parameters.ParamByName('Periodo').Value:=(Pai.QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString);
                        Open;
                        memo1.Text:=sql.Text;
                        if Not Eof then
                              Begin
                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RV_CRIlimite');
                              END
                              else
                              begin
                                        MessageBox(0, 'N�o h� dados para gera��o do relatorio,'+#13+#10+'Por favor, verifique!', 'Dados n�o encontrados', MB_ICONEXCLAMATION or MB_OK);
                              end;

                  end;



Screen.Cursor:=CrDefault;

end;

procedure TFormCentralRelatorio.TabSheet17Show(Sender: TObject);
begin
       DbFuncao.KeyValue:=Null;

end;

procedure TFormCentralRelatorio.TabSheet18Enter(Sender: TObject);
begin
       DbDepto.KeyValue:=Null;
end;

procedure TFormCentralRelatorio.TabSheet19Show(Sender: TObject);
begin
       DbDepto.KeyValue:=Null;

end;

Procedure TFormCentralRelatorio.MontaHoraExtra;
begin
          with Relatorio.QrListaHoraExtra do
                begin
                       Close;
                       Sql.Clear;
                       Sql.Add('SELECT PRO.CHA_PRO AS CHAPA, PRO.NOM_PRO AS NOME, FUN.TFU_DES AS PERFIL, sum(B.Prel01_ref) as ExtraRef,');
                       Sql.Add('convert(Varchar(5),convert(varchar(2), sum((b.prel01_ref) / 60)) + '':'' +  RIGHT(''00''+   convert(varchar,Sum(B.Prel01_ref % 60)),2))   as EXTRA');
                       Sql.Add('FROM tb_ptorel01 a');
                       Sql.Add('Join TB_PTOREL01 B ON B.PREL01_PROVENTO = A.PREL01_PROVENTO AND B.PREL01_PROVENTO = 3 AND A.PREL01_ID = B.PREL01_ID');
                       Sql.Add('JOIN TB_PROFISSIONAIS PRO ON PRO.COD_PRO = A.PREL01_CHAPA');
                       Sql.Add('  JOIN TB_FUNCAO FUNCAO ON FUNCAO.COD_FUNCAO = PRO.PRO_FUNCAOEXERCIDA');
                       Sql.Add('  JOIN TB_PTOFUNCOES FUN ON FUN.TFU_COD = FUNCAO.FUN_TFU');
                       Sql.Add('  GROUP BY PRO.CHA_PRO, PRO.NOM_PRO, FUN.TFU_DES');

                       case RadioGroup2.ItemIndex of
                            0: Sql.Add('ORDER BY PERFIL ,ExtraRef dESC');
                            1: Sql.Add('ORDER BY PERFIL ,ExtraRef ');
                            2: Sql.Add('ORDER BY PERFIL ,NOME');
                            3: Sql.Add('ORDER BY PERFIL ,CHAPA');
                       end;




                end;


end;

end.
