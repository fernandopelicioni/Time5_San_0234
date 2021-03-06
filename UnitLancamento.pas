unit UnitLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ComCtrls, pngimage, ExtCtrls, DB, ADODB,
  DBCtrls, Grids, DBGrids, DateUtils, Menus, AppEvnts;

type
  TFormLancamento = class(TForm)
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Image5: TImage;
    Label10: TLabel;
    EditData: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DtIni: TDateTimePicker;
    Label6: TLabel;
    DtFim: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Executa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    EditChapa: TMaskEdit;
    GroupBox4: TGroupBox;
    DtPro: TDataSource;
    QrPro: TADOQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    Label7: TLabel;
    PainelDigitacao: TGroupBox;
    EditHI1: TMaskEdit;
    EditHf1: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    EditHi2: TMaskEdit;
    EditHf2: TMaskEdit;
    DBText3: TDBText;
    EditT1: TMaskEdit;
    EditVei1: TMaskEdit;
    Label14: TLabel;
    GroupBox5: TGroupBox;
    DtLancamentoPeriodo: TDataSource;
    btsalva: TBitBtn;
    BtNovo: TBitBtn;
    Btcancel: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid2: TDBGrid;
    DtPeriodo: TDataSource;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    LimpaEdit1: TMenuItem;
    GroupBox2: TGroupBox;
    EditSaldoPto: TLabel;
    Memo1: TMemo;
    QrLancamentoPeriodo: TADOQuery;
    DtColigada: TDataSource;
    Label17: TLabel;
    Timer1: TTimer;
    QrVeiculo: TADOQuery;
    Label20: TLabel;
    Shape1: TShape;
    Label18: TLabel;
    LabelUsuario: TLabel;
    DBText4: TDBText;
    Image3: TImage;
    Label19: TLabel;
    Folgar: TBitBtn;
    GroupBox8: TGroupBox;
    Orientacao: TLabel;
    EditSemana: TLabel;
    QrAtes: TADOQuery;
    DtAtes: TDataSource;
    Btimporta: TSpeedButton;
    CheckBox1: TCheckBox;
    CkInt: TCheckBox;
    CkResumo: TCheckBox;
    Label21: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditVei2: TMaskEdit;
    EditT2: TMaskEdit;
    EditHi3: TMaskEdit;
    EditHf3: TMaskEdit;
    Label13: TLabel;
    EditVei3: TMaskEdit;
    EditT3: TMaskEdit;
    EditHf4: TMaskEdit;
    EditT4: TMaskEdit;
    EditVei4: TMaskEdit;
    Label24: TLabel;
    EditHi4: TMaskEdit;
    EditHf5: TMaskEdit;
    EditT5: TMaskEdit;
    EditVei5: TMaskEdit;
    Label25: TLabel;
    EditHi5: TMaskEdit;
    QrProNome: TWideStringField;
    QrProChapa: TWideStringField;
    QrProCodigo: TSmallintField;
    QrProPerfil: TSmallintField;
    QrProFuncao: TWideStringField;
    QrProHoraPadrao: TStringField;
    QrProTipoIntervalo: TWideStringField;
    QrProSaldo: TStringField;
    QrProEvento: TWideStringField;
    QrProHI1: TStringField;
    QrProHF1: TStringField;
    QrProTOT1: TStringField;
    QrProVEI1: TStringField;
    QrProHI2: TStringField;
    QrProHF2: TStringField;
    QrProTOT2: TStringField;
    QrProVEI2: TStringField;
    QrProHI3: TStringField;
    QrProHF3: TStringField;
    QrProTOT3: TStringField;
    QrProVEI3: TStringField;
    QrProHI4: TStringField;
    QrProHF4: TStringField;
    QrProTOT4: TStringField;
    QrProVEI4: TStringField;
    QrProHI5: TStringField;
    QrProHF5: TStringField;
    QrProTOT5: TStringField;
    QrProVEI5: TStringField;
    QrProDataHora: TDateTimeField;
    QrProCopiar: TWideStringField;
    QrProEditaLocal: TWideStringField;
    QrProPto_evento: TWordField;
    QrProUsuario: TWideStringField;
    QrProLimite: TStringField;
    QrProIDMOV: TIntegerField;
    CopiaQrLancamentoPeriodo: TADOQuery;
    QrProJornadaRef: TSmallintField;
    QrProPTO_MOTCOB: TWideStringField;
    ApplicationEvents1: TApplicationEvents;
    EditIntervalo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DtIniKeyPress(Sender: TObject; var Key: Char);
    procedure DtFimKeyPress(Sender: TObject; var Key: Char);
    procedure EditHI1KeyPress(Sender: TObject; var Key: Char);
    procedure EditHf1KeyPress(Sender: TObject; var Key: Char);
    procedure EditHi2KeyPress(Sender: TObject; var Key: Char);
    procedure EditHf2KeyPress(Sender: TObject; var Key: Char);
    procedure EditVei1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExecutaClick(Sender: TObject);
    procedure EditChapaKeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure LimpaEdit1Click(Sender: TObject);
    procedure DtIniEnter(Sender: TObject);
    procedure DtFimEnter(Sender: TObject);
    procedure EditT1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVei1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHi2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHI1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditChapaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtNovoClick(Sender: TObject);
    procedure EditHI1Enter(Sender: TObject);
    procedure BtcancelClick(Sender: TObject);
    Procedure MontaTela(Sender:TObject);
    procedure EditChapaEnter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditT1Enter(Sender: TObject);
    Procedure ConsultaLancamento(Sender: TObject);
    Procedure PreencheEdit(Sender: TObject);
    Function PulaCampo(Edit:TCustomEdit): Boolean;
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditHI1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditHi2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditHf2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVei1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btsalvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FolgarClick(Sender: TObject);
    procedure EditChapaExit(Sender: TObject);
    procedure EditHI1Exit(Sender: TObject);
    Procedure Faltar(Sender: Tobject);
    procedure BtimportaClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure MontaLanAnt;
    procedure atestadar;
    procedure CkIntClick(Sender: TObject);
    Procedure Abonar;
    procedure EditHf3Exit(Sender: TObject);
    procedure EditHf4Exit(Sender: TObject);
    procedure EditHf5Exit(Sender: TObject);
    procedure EditHi3KeyPress(Sender: TObject; var Key: Char);
    procedure EditHi4KeyPress(Sender: TObject; var Key: Char);
    procedure EditHi5KeyPress(Sender: TObject; var Key: Char);
    procedure EditVei2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVei3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHi3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVei4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHi4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVei5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHi5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHf3KeyPress(Sender: TObject; var Key: Char);
    procedure EditHf4KeyPress(Sender: TObject; var Key: Char);
    procedure EditHf5KeyPress(Sender: TObject; var Key: Char);
    procedure EditHf3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditHf4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditHf5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVei2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVei3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVei4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVei5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVei2KeyPress(Sender: TObject; var Key: Char);
    procedure EditVei3KeyPress(Sender: TObject; var Key: Char);
    procedure EditVei4KeyPress(Sender: TObject; var Key: Char);
    procedure EditVei5KeyPress(Sender: TObject; var Key: Char);
    procedure EditHi3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditHi4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function CalculaSaldo(saldo1 :ttime; saldo2:ttime; saldo3: ttime; saldo4:ttime; saldo5:ttime) : string;
    procedure EditHi5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVei2Enter(Sender: TObject);
    procedure EditVei3Enter(Sender: TObject);
    procedure EditVei4Enter(Sender: TObject);
    procedure EditVei5Enter(Sender: TObject);
    procedure EditVei1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure Button1Click(Sender: TObject);

  private
//     Altera:word;
    { Private declarations }
  public
    VMatricula,VVeiculo:String;
    VDataLancamento:Tdate;
    VhoraLimite,VIntervalo,VSaldoHoras, VSaldoHorasJor:TTime;
    Sequencial,VTipoIntervalo,I, EditaLocal:word;
    { Public declarations }
  end;

var
  FormLancamento: TFormLancamento;

implementation

uses UnitPai, UnitIniciaSistema, UnitProBusca, UnitProDisp, UnitImportaEscala,
  UnitDialogoImporta;

{$R *.dfm}

procedure TFormLancamento.BtcancelClick(Sender: TObject);
begin
     DtPro.DataSet.Close;
     DtIni.SetFocus;
     //     EditChapa.Text:='';
//     EditChapa.Enabled:=true;
//     EditChapa.SetFocus;
end;

procedure TFormLancamento.BtNovoClick(Sender: TObject);
var d:word;
begin
            LimpaEdit1.Click;
            PainelDigitacao.Enabled:=true;
            if VDataLancamento < DtFim.Date then
                   begin
                          VDataLancamento:=VDataLancamento+1;
                          EditData.Caption:=DateToStr(VDataLancamento);
                          d:=DayOfWeek(VDataLancamento);
                           case D of
                               1: EditSemana.Caption:='Domingo';
                               2: EditSemana.Caption:='Segunda-Feira';
                               3: EditSemana.Caption:='Ter�a-Feira';
                               4: EditSemana.Caption:='Quarta-Feira';
                               5: EditSemana.Caption:='Quinta-Feira';
                               6: EditSemana.Caption:='Sexta-Feira';
                               7: EditSemana.Caption:='S�bado';

                           end;

                          Executa.Click;
                          {// Aqui preciso colocar uma pergunta pra saber se o dia � habilitado para lancamento...
                          With QrLancamentoPeriodo do
                                begin
                                    Close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('MATRICULA').Value:=EditChapa.Text;
                                    Parameters.ParamByName('PERIODO').Value:=DtPeriodo.DataSet.FieldByName('PtUsu_Periodo').AsString;
                                    Open;
                                end;
                          With QrPro do
                                begin
                                    Close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('chapa').Value:=EditChapa.Text;
                                    Parameters.ParamByName('data').Value:=DateToStr(VDataLancamento);
                                    Open;
                                    memo1.Text:=sql.Text;
                                    if Not Eof then
                                          begin
                                               PainelDigitacao.Enabled:=true;
                                               MontaTela(nil);   //Monta a estrutura de lancamento
                                               btsalva.Enabled:=true;
                                               //botaosalva.Enabled:=true;
                                               EditEntrada.SetFocus;
                                                // Aqui verifico se ja existe lancamento para o dia...
                                          end;
                                end;
                          EditEntrada.SetFocus; }
                   end
                   else
                       begin

                            //EditData.Caption:=
                            VDataLancamento:=DtIni.Date;
                            EditData.Caption:=DateToStr(VDataLancamento);
                            DtPro.DataSet.Close;
                            EditChapa.Text:='' ;
                            Editchapa.SetFocus;
                            //SpeedButton2.Click;
                            //EditChapa.SetFocus;
                       end;
end;

procedure TFormLancamento.FolgarClick(Sender: TObject);
begin
                                   // Pega Codigo do PtoMov.. Depois preenche os dados para montar o SQL
                     Pai.ENT1     :=0; Pai.SAI1:=0; Pai.TOT1:=0; Pai.VEI1:='0';
                     Pai.ENT2     :=0; Pai.SAI2:=0; Pai.TOT2:=0; Pai.VEI2:='0';
                     Pai.ENT3     :=0; Pai.SAI3:=0; Pai.TOT3:=0; Pai.VEI3:='0';
                     Pai.ENT4     :=0; Pai.SAI4:=0; Pai.TOT4:=0; Pai.VEI4:='0';
                     Pai.ENT5     :=0; Pai.SAI5:=0; Pai.TOT5:=0; Pai.VEI5:='0';
                     Pai.PtoCod         :=Pai.GeraSeq('PtoMov');
                     Pai.SqlChapa       :=DtPro.DataSet.FieldByName('Codigo').AsString;
                     Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                     Pai.PtoPeriodo     :=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                     Pai.PtoEvento      :=2;
                     Pai.PtoFun         :=DtPro.DataSet.FieldByName('Perfil').AsInteger  ;
                     Pai.JorLocal       :='NULL';
                     Pai.JorMatricula   :=DtPro.DataSet.FieldByName('Chapa').AsString;
                     Pai.JorSaldo       :=DtPro.DataSet.FieldByName('HoraPadrao').AsString;
                     Pai.JorRef         :=1; //Pai.GeraRef(Pai.JorSaldo); // Funcao caucula ref do total de hoars da linah jornada, diferente do saldo de horas do movimento
                     Pai.PtoData:=VDataLancamento;
                     Pai.InserirMov1Click(nil);

end;

procedure TFormLancamento.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFormLancamento.btsalvaClick(Sender: TObject);
begin

           Screen.Cursor:=CrHourGlass;
                     //Grava PTOMOV
//                     Pai.ENT1     :=0; Pai.SAI1:=0; Pai.TOT1:=0; Pai.VEI1:='0';
//                     Pai.ENT2     :=0; Pai.SAI2:=0; Pai.TOT2:=0; Pai.VEI2:='0';
//                     Pai.ENT3     :=0; Pai.SAI3:=0; Pai.TOT3:=0; Pai.VEI3:='0';
//                     Pai.ENT4     :=0; Pai.SAI4:=0; Pai.TOT4:=0; Pai.VEI4:='0';
//                     Pai.ENT5     :=0; Pai.SAI5:=0; Pai.TOT5:=0; Pai.VEI5:='0';

                     Pai.PtoCod         :=Pai.GeraSeq('PtoMov'); // Gera Pto_ID
                     Pai.SqlChapa       :=DtPro.DataSet.FieldByName('Codigo').AsString;
                     Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                     Pai.PtoPeriodo     :=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                     Pai.PtoEvento      :=1; // considerei que nesta tela de lancamento, todos eventos serao normais, trataremoa as exessoes em outro modulo                     Pai.PtoPeriodo :=DtPeriodoAtivo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                     Pai.PtoData        :=VDataLancamento;
                     Pai.PtoFun         :=DtPro.DataSet.FieldByName('Perfil').AsInteger;
                     Pai.VJORNADA       := (DtPro.DataSet.FieldByName('JornadaRef').AsInteger);

                     Pai.ENT1       :=StrToTime(EditHi1.Text);
                     Pai.SAI1       :=StrToTime(EditHf1.Text);
                     Pai.TOT1       :=StrToTime(EditT1.Text);
                     Pai.VEI1       :=(EditVei1.Text);

                     Pai.ENT2       :=StrToTime(EditHi2.Text);
                     Pai.SAI2       :=StrToTime(EditHf2.Text);
                     Pai.TOT2       :=StrToTime(EditT2.Text);
                     Pai.VEI2       :=(EditVei2.Text);

                     Pai.ENT3       :=StrToTime(EditHi3.Text);
                     Pai.SAI3       :=StrToTime(EditHf3.Text);
                     Pai.TOT3       :=StrToTime(EditT3.Text);
                     Pai.VEI3       :=(EditVei3.Text);

                     Pai.ENT4       :=StrToTime(EditHi4.Text);
                     Pai.SAI4       :=StrToTime(EditHf4.Text);
                     Pai.TOT4       :=StrToTime(EditT4.Text);
                     Pai.VEI4       :=(EditVei4.Text);

                     Pai.ENT5       :=StrToTime(EditHi5.Text);
                     Pai.SAI5       :=StrToTime(EditHf5.Text);
                     Pai.TOT5       :=StrToTime(EditT5.Text);
                     Pai.VEI5       :=(EditVei5.Text);

                     Pai.JorMatricula   :=DtPro.DataSet.FieldByName('Chapa').AsString;

                     Pai.JorRef         :=Pai.SaldoRef;

                     pai.JorSaldo :=EditSaldoPto.Caption;
                    // showmessage('message 1');
                     Pai.InserirMov1Click(nil);
                     LimpaEdit1.Click;
           PainelDigitacao.Enabled:=false;
           Screen.Cursor:=Crdefault;
           btsalva.Enabled:=false;
           //botaosalva.Enabled:=false;
           BtNovo.SetFocus;
          // BotaoNovo.setfocus;
end;

procedure TFormLancamento.btsalvaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if key = 38 then
             begin
              EditHI1.SetFocus;
            end;
end;

procedure TFormLancamento.Button1Click(Sender: TObject);
begin
//ShowMessage( pai.Intervalo('08:00','08:01','09:00','09:01','09:25','10:25','09:44','09:49'));
end;

procedure TFormLancamento.DtIniEnter(Sender: TObject);
begin
           EditChapa.Text:='';
           GroupBox3.Enabled:=false;
           LimpaEdit1.Click;
end;

procedure TFormLancamento.DtIniKeyPress(Sender: TObject;
  var Key: Char);
begin
       if key = #13 then
            begin
                  key:=#0;
                  EditData.Caption:=DateToStr(DtIni.Date);
                  Perform(WM_NextDlgCtl,0,0);
            end;

end;

procedure TFormLancamento.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
        if Column.Index = 1 then
              begin
                    DBGrid2.Canvas.FillRect(Rect);
                    if not DtLancamentoPeriodo.DataSet.Eof then
                          begin

                                     if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '1' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                     if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '2' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clGreen;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);

                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '3' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clRed;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '4' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clFuchsia;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '5' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clBlack;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '8' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clBlack;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').AsInteger >=7 then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clGray;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '13' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clPurple;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '11' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= $004080FF ;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '12' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= $008000FF ;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '14' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clGray;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;
                                      if DtLancamentoPeriodo.DataSet.FieldByName('CodEvento').Asstring = '16' then
                                           begin
                                                    Dbgrid2.Canvas.Font.Color:= clLime;
                                                    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
                                           end;

                          end;
              end;








end;

procedure TFormLancamento.DBGrid2Enter(Sender: TObject);
begin
           //if PainelDigitacao.Enabled = True then

end;

procedure TFormLancamento.DtFimEnter(Sender: TObject);
begin
           EditChapa.Text:='';
           DtFim.Date:=DtIni.Date;
           GroupBox3.Enabled:=false;
           LimpaEdit1.Click;
end;

procedure TFormLancamento.DtFimKeyPress(Sender: TObject;
  var Key: Char);
begin
       if key = #13 then
            begin
                key:=#0;
                SpeedButton2.Click;
            end;
end;

procedure TFormLancamento.ExecutaClick(Sender: TObject);
var
RegAtual:String;
evento:word;
begin
           if pai.Coligada = '4' then
              begin
                     if StrToInt(EditChapa.Text) < 40000 then
                          EditChapa.Text:=('40'+(EditChapa.Text));
              end;


           Pai.TipoEntrada:=0;
           I:=0;

           if RegAtual <> EditChapa.Text then
                begin
                   //  showmessage('1');
                     Vmatricula:=EditChapa.Text;
                     MontaLanAnt;

                end;
           RegAtual:=(EditChapa.Text);
           With QrPro do
                begin
                      Close;
                      Parameters.ParamByName('coligada').Value:=pai.Coligada;
                      Parameters.ParamByName('chapa').Value:=EditChapa.Text;
                      Parameters.ParamByName('data').Value:=VDataLancamento;
                      Open;
                     // memo1.Text:=sql.Text;
                      if Not Eof then
                           begin
                                  PainelDigitacao.Enabled:=true;
                                  sequencial:=2;
                                  MontaTela(nil);   //Monta a estrutura de lancamento
                                  Evento:=QrPro.FieldByName('Pto_Evento').AsInteger;
                                  VhoraLimite:=StrToTime(FieldByName('limite').asstring);
                                  Btsalva.Enabled:=true;
                                  // Aqui verifico se ja existe lancamento para o dia...
                                  if DtPro.DataSet.FieldByName('IDMOV').asstring <> '' THEN
                                        BEGIN
                                              // verifica que tipo de evento esta lancado enste dia
                                              if (Evento = 1) or (Evento = 13)  then
                                                      begin
//                                                     --       MessageBeep(32);
                                                           if (MessageDlg('Caro Usu�rio,                                                  '+#13+#10+'Existem Lan�amentos deste colaborador na data, Deseja Alterar?'+#13+#10+'Sim = Alterar!'+#13+#10+'N�o = Novo Lan�amento!', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
                                                                  begin // Escolha Sim
                                                                          // Time.lnacamento n�o aceitara edit caso o evento n�o seja Normal ou Feriado, nesse caso, apenas informar�
                                                                          PreencheEdit(nil);
                                                                          Pai.TipoEntrada:=1; // avisa sql pai que � uma altera��o UPDATE PTO_JORNADA
                                                                          EditHI1.SetFocus;
                                                                   end
                                                                   else
                                                                   begin  // Escolha Nao
                                                                       BtNovo.Click;
//                                                                           if DtPro.DataSet.FieldByName('copiar').AsString = '1' then // CASO N�O EXISTA, E UTILIZAR HERAN�A DE HORARIO PADRAO FA�A COMO ABAIXO
//                                                                                  begin
//                                                                                       Pai.TipoEntrada:=0; // avisa o sql q � novo
////                                                                                       Showmessage(DtPro.DataSet.FieldByName('Tfu_Ini').AsString);
////                                                                                       EditHI1.Text :=DtPro.DataSet.FieldByName('Tfu_Ini').AsString;
////                                                                                       EditHf1.Text   :=DtPro.DataSet.FieldByName('Tfu_Fim').AsString;
//                                                                                  end;
//                                                                                  EditHI1.SetFocus;
                                                                   end;
                                                      end
                                                      else
                                                      begin
//                                                             MessageBeep(0);
                                                            MessageBox(0, 'Caro usu�rio,'+#13+#10+'Pelas regas de neg�cios, na tela de lan�amento n�o ser� poss�vel alterar eventos extra-ordin�rios;'+#13+#10+''+#13+#10+'Verifique no m�dulo de Eventos em Movimentos!', 'Outros Eventos', MB_ICONINFORMATION or MB_OK);
                                                            BtNovo.Click;
                                                            //abort;
                                                      end;
                                        END
                                        else
                                        begin
                                                   if DtPro.DataSet.FieldByName('copiar').AsString = '1' then // CASO N�O EXISTA, E UTILIZAR HERAN�A DE HORARIO PADRAO FA�A COMO ABAIXO
                                                          begin
                                                               Pai.TipoEntrada:=0;   // avisa a sql que � um novo registro
//                                                               Showmessage(DtPro.DataSet.FieldByName('Tfu_Ini').AsString);
//                                                               EditHI1.Text :=DtPro.DataSet.FieldByName('Tfu_Ini').AsString;
//                                                               EditHf1.Text   :=DtPro.DataSet.FieldByName('Tfu_Fim').AsString;
                                                          end;
//                                                   if DtPro.DataSet.FieldByName('Tfu_Itp').AsString <> '' then
                                                   Sequencial:=1; // Esse variavel indica que � o primeiro lancamento para este colaborador nesta data, isso permitira lancar evento como folga
                                                   EditHI1.SetFocus;
                                              end;
                                 end
                                 else
                                 Begin
                                                   //Windows.Beep(1450,250);
//                                                   MessageBeep(16);
                                                   MessageBox(0, 'Caro usu�rio,'+#13+#10+'Este c�digo ou chapa do Colaborador n�o � valido, verifique se o colaborador est� ativo, se essa fun��o registra ponto e tente novamente!', 'Xiiiiiiiiiiiii, Algo esta errado!', MB_ICONERROR or MB_OK);
                                                   EditChapa.Text:='';
                                                   EditChapa.SetFocus;
                                 End;
                      end;
end;

procedure TFormLancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//        DtPeriodo.DataSet.Close;
        DtPro.DataSet.Close;
        DtAtes.DataSet.Close;
        DtLancamentoPeriodo.DataSet.Close;
        FormImportaEscala.close;
        FormDialogoImporta.close;
        Action:=cafree;
end;

procedure TFormLancamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_Tab then
  key := 0;
end;

procedure TFormLancamento.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
        if ActiveControl is TCustomEdit then
              begin
                    if PulaCampo(ActiveControl as TCustomEdit) then
                    SelectNext(ActiveControl, True, True);
              end;

end;

procedure TFormLancamento.FormShow(Sender: TObject);
begin
          top :=0;
          Left :=0;
          Width := Screen.Width;
          Height := Screen.Height;
          Label18.Caption:=DatetoStr(now) + ' - ' + Copy(timetostr(now),1,5)  ;
          LabelUsuario.caption:='Usu�rio : ' + Pai.Qrusuarios.FieldByName('Usu_Login').AsString;
          DtPeriodo.DataSet.Open;
          label3.Caption:=DtPeriodo.DataSet.FieldByName('Tpe_Des').AsString;
          Label19.Caption:='Time - Automo��o de Ponto - vers�o : ' + formIniciasistema.editversao.caption;
          label2.Caption:=DtPeriodo.DataSet.FieldByName('Tpe_Inicio').AsString + ' at� ' +DtPeriodo.DataSet.FieldByName('Tpe_Fim').AsString;
          DtIni.Date:=StrTODate(DtPeriodo.DataSet.FieldByName('Tpe_Inicio').AsString);
          DtFim.Date:=StrTODate(DtPeriodo.DataSet.FieldByName('Tpe_Fim').AsString);
          Application.CreateForm(TFormImportaEscala, FormImportaEscala);
          Application.CreateForm(TFormDialogoImporta, FormDialogoImporta);
          /// Carregando dados de periodo do usuario



end;

procedure TFormLancamento.LimpaEdit1Click(Sender: TObject);
begin
          // importante observar que caso seja alteracao, desconsiderar isso...
          EditHI1.AutoSelect:=false;
          EditHf1.AutoSelect:=false;
          EditHI2.AutoSelect:=false;
          EditHf2.AutoSelect:=false;
          EditHI3.AutoSelect:=false;
          EditHf3.AutoSelect:=false;
          EditHI4.AutoSelect:=false;
          EditHf4.AutoSelect:=false;
          EditHI5.AutoSelect:=false;
          EditHf5.AutoSelect:=false;
          EditHi1.Text:='00:00';
          EditHf1.Text:='00:00';
          EditHi2.Text:='00:00';
          EditHf2.Text:='00:00';
          EditHi3.Text:='00:00';
          EditHf3.Text:='00:00';
          EditHi4.Text:='00:00';
          EditHf4.Text:='00:00';
          EditHi5.Text:='00:00';
          EditHf5.Text:='00:00';
          EditT1.Text:='00:00';
          EditT2.Text:='00:00';
          EditT3.Text:='00:00';
          EditT4.Text:='00:00';
          EditT5.Text:='00:00';

          EditVei1.Text:='';
          EditVei2.Text:='';
          EditVei3.Text:='';
          EditVei4.Text:='';
          EditVei5.Text:='';
          EditSaldoPto.Caption:='0';
          EditIntervalo.Caption:='0:00';
          VIntervalo:=0;
          //DtLancamentoPeriodo.DataSet.Close;
          PainelDigitacao.Enabled:=false;

end;

procedure TFormLancamento.SpeedButton1Click(Sender: TObject);
begin
        Application.CreateForm(TFormProbusca,FormProBusca);
        FormProBusca.showmodal;
end;

procedure TFormLancamento.SpeedButton2Click(Sender: TObject);
var
d:word;
VInicio, Vfim:tdate;
begin
         if (DtIni.Date > StrToDate('15/03/2019'))   then
               begin
                     showmessage('Sistema est� configurado para operar apenas a partir de 02/03/2019, devido a lan�amentos anteriores');
                     Abort;
               end;

         Vinicio:=StrToDate(DtPeriodo.DataSet.FieldByName('Tpe_Inicio').AsString);
         VFim   :=StrToDate(DtPeriodo.DataSet.FieldByName('Tpe_Fim').AsString);
         //Showmessage(DateToStr(Dtfim.Date) + '  ' + Datetostr(Vfim));
         if (DtIni.Date >= Vinicio) and (VFim >= DtFim.Date) and (DtFim.Date >= DtIni.Date)  then
                    begin
                           GroupBox3.Enabled:=true;
                           BtNovo.Enabled:=true;
                           VDataLancamento:=DtIni.Date;
                           d:=DayOfWeek(VDataLancamento);
                           case D of
                               1: EditSemana.Caption:='Domingo';
                               2: EditSemana.Caption:='Segunda-Feira';
                               3: EditSemana.Caption:='Ter�a-Feira';
                               4: EditSemana.Caption:='Quarta-Feira';
                               5: EditSemana.Caption:='Quinta-Feira';
                               6: EditSemana.Caption:='Sexta-Feira';
                               7: EditSemana.Caption:='S�bado';

                           end;
                           EditData.Caption:=DateToStr(VDataLancamento);
                           EditChapa.SetFocus;
                    end
                    else
                    begin
                           MessageBox(0, 'Caro usu�rio,'+#13+#10+'As datas informadas parecem estar fora do periodo ativo, verifique!', 'Aten��o com per�odos', MB_ICONSTOP or MB_OK);
                           GroupBox4.Enabled:=False;
                           GroupBox3.Enabled:=False;
                    end;

end;

procedure TFormLancamento.BtimportaClick(Sender: TObject);
begin
     {    Screen.Cursor:=CrHourGlass;

         With pai.QrDadosEscalaSemi do
               begin
                      Close;
                      Parameters.ParamByName('Dia').Value := DateToStr(FormLancamento.VDataLancamento);
                      Parameters.ParamByName('Coligada').Value := Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                      Parameters.ParamByName('IdBSe').Value := FormLancamento.EditChapa.Text;
                      //memo1.Text:=Qrtemp.SQL.text;
                      Open;
//                      First;
                      if Not Eof then
                                  Begin;
                                           FormImportaEscala.Montatela;
                                           FormImportaEscala.QrTemp.Close;
                                           FormImportaEscala.Qrtemp.SQL.Clear;
                                           FormImportaEscala.Qrtemp.SQL.add('select * from tb_ptomov where pto_data = ' + QuotedStr(DateToStr(FormLancamento.VDataLancamento)));
                                           FormImportaEscala.Qrtemp.SQL.Add('and Pto_Periodo = ' + Pai.QrPeriodoAtivo.FieldByName('PTUSU_PERIODO').AsString);
                                           FormImportaEscala.Qrtemp.SQL.Add('And Pto_Coligada = ' + Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                                           FormImportaEscala.Qrtemp.SQL.Add('and pto_matricula = ' + QuotedStr(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Chapa').AsString));
                                        //   memo1.Text:=Qrtemp.SQL.text;
                                           FormImportaEscala.Qrtemp.Open;
                                           if FormImportaEscala.Qrtemp.eof then
                                                 begin
                                                     //Grava PTOMOV
                                                     pai.TipoEntrada:=0;
                                                     Pai.JorEntrada:=0; Pai.JorSaida:=0; Pai.JorIti:=0; Pai.JorItf:=0; Pai.JorIntervalo:=0;
                                                     Pai.PtoCod         :=Pai.GeraSeq('PtoMov'); // Gera Pto_ID
                                                     Pai.SqlChapa       :=FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('CodPro').Asstring;
                                                     Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                                                     Pai.PtoPeriodo     :=FormLancamento.DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                                                     Pai.PtoEvento      :=1; // considerei que nesta tela de lancamento, todos eventos serao normais, trataremoa as exessoes em outro modulo                     Pai.PtoPeriodo :=DtPeriodoAtivo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                                                     Pai.PtoData        :=FormLancamento.VDataLancamento;
                                                     Pai.PtoFun         :=FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Perfil').AsInteger;
                                                     Pai.JorEntrada     :=StrToTime(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Pim_Entrada').AsString);
                                                     Pai.JorSaida       :=StrToTime(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Pim_Saida').AsString);
                                                     Pai.JorITI         :=StrToTime(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Pim_Iti').AsString);
                                                     Pai.JorItf         :=StrToTime(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Pim_Itf').AsString);
                                                     Pai.JorIntervalo   :=StrToTime(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Intervalo').AsString);

                                                     if FormImportaEscala.EditLocalSemi.Caption = '0' then
                                                            Pai.JorLocal       :='NULL'
                                                            else
                                                            Pai.JorLocal       :=Pai.QrDadosEscalaSemi.FieldByName('Veiculo').AsString;

                                                     Pai.JorMatricula   :=FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Chapa').Asstring;
                                                     Pai.JorSaldo       :=FormImportaEscala.EditTotalSemi.Caption;
                                                     Pai.JorRef         :=StrToInt(FormImportaEscala.DtDadosEscalaSemi.DataSet.FieldByName('Saldo_Ref').AsString);
                                                     // Funcao caucula ref do total de hoars da linah jornada, diferente do saldo de horas do movimento
                                                    if (MessageDlg(''+#13+#10+'Achei os dados referentes a esta identifica��o e estou pronto para salvar no banco de dados!'+#13+#10+''+#13+#10+'Voc� confirma essa transa��o?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                                                           begin
                                                                 Pai.InserirMov1Click(nil);
                                                              //   memo1.text:=pai.SqlMov.SQL.Text
                                                           end;
                                                 end
                                                 else
                                                 begin
                                                      MessageBox(0, ''+#13+#10+'Caro usu�rio,'+#13+#10+''+#13+#10+'J� tenho um registro para este colaborador nesta data, n�o farei nada, voc� pode alterar...', 'Duplicidade', MB_ICONSTOP or MB_OK);
                                                      close;
                                                 end;
                                  End;

               end;


           Screen.Cursor:=CrDefault;
           FormImportaEscala.LimpaTela;
          // close;
           //EditBarras.SetFocus;    }

       FormImportaEscala.editbarras.Text:=Editchapa.Text;
       FormImportaEscala.Montatela;
       FormImportaEscala.showmodal;

end;

procedure TFormLancamento.Timer1Timer(Sender: TObject);
begin
          Label18.Caption:=DatetoStr(now) + ' - ' + Copy(timetostr(now),1,5)  ;
end;

procedure TFormLancamento.EditHI1Enter(Sender: TObject);
begin
          btsalva.Enabled:=true;
          IF SEQUENCIAL = 1 THEN Orientacao.Caption:='( + ) Folga | ( , ) Falta | ( F12 ) Atestado |    (F11) Abonar ';
          //BotaoSalva:=Enabled:=true;
end;

procedure TFormLancamento.EditHI1Exit(Sender: TObject);
begin
        Orientacao.Caption:='';
end;

procedure TFormLancamento.EditHI1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (key = Vk_ADD)  then
               begin
              // lan�ar folga
                      if sequencial = 1 then
                            begin
                                   if (MessageDlg('Voc� confirma o lan�amento para este colaborador?'+#13+#10+'Evento : FOLGA', mtConfirmation, [mbYes, mbNo], 0) =  Mryes) then
                                          begin
                                                folgar.Click;
                                          end;
                                           BtNovo.click;
                            end;
               end;
      if (key = VK_DECIMAL)  then
               begin
              // lan�ar folga
                      if sequencial = 1 then
                            begin
                                   if (MessageDlg('Voc� confirma o lan�amento para este colaborador?'+#13+#10+'**************************'+#13+#10+'  EVENTO : FALTA', mtConfirmation, [mbYes, mbNo], 0) =  Mryes) then
                                          begin
                                                Faltar(nil);
                                          end;
                                           BtNovo.click;
                            end;
               end;

      if (key = VK_f12)  then
               begin
              // lan�ar folga
                      if sequencial = 1 then
                            begin
                                   if (MessageDlg('Confirme se este colaborador j� entregou a documenta��o no Depto M�dico'+#13+#10+'Confirma a inser��o ? '+#13+#10+'  EVENTO : 4 - Atestado', mtConfirmation, [mbYes, mbNo], 0) =  Mryes) then
                                          begin
                                                Atestadar;
                                          end;
                                           BtNovo.click;
                            end;
               end;
      if (key = VK_f11)  then
               begin
              // lan�ar folga
                      if sequencial = 1 then
                            begin
                                   if (MessageDlg('Confirme ABONAR DIA de colaborador'+#13+#10+'Confirma a inser��o ? '+#13+#10+'  EVENTO : 8 - Abonar', mtConfirmation, [mbYes, mbNo], 0) =  Mryes) then
                                          begin
                                                Abonar;
                                          end;
                                           BtNovo.click;
                            end;
               end;


           if key = 38 then
               begin
                     EditChapa.SetFocus;
               end;

end;

procedure TFormLancamento.EditHI1KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
              begin
                    key:=#0;
                    Perform(WM_NextDlgCtl,0,0);
              end;

end;

procedure TFormLancamento.EditHI1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin

                    if PulaCampo(ActiveControl as TCustomEdit) then
                    BEGIN
                         SelectNext(ActiveControl, True, True);

                    END;
              end;

end;

procedure TFormLancamento.EditHf1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHI1.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);
           end;
end;

procedure TFormLancamento.EditHf1KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
              begin
                   key:=#0;
                   EditT1.Text:= Pai.SaldoParcial(StrToTime(EditHi1.Text),StrToTime(EditHF1.Text));
                    EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                   EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                   if StrtoTime(EditSaldoPto.Caption) >  VhoraLimite then
                         MessageBox(0, 'Limite de horas atingido,'+#13+#10+'O limite estimado de horas para o colaborador foi atingido, verifique ', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                   Perform(WM_NextDlgCtl,0,0);
              end;

end;

procedure TFormLancamento.EditHf1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin
                    if PulaCampo(ActiveControl as TCustomEdit) then
                             begin
                                      EditT1.Text:= Pai.SaldoParcial(StrToTime(EditHi1.Text),StrToTime(EditHF1.Text));
                                      EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                                      EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                                      SelectNext(ActiveControl, True, True);
                             end;
              end;

end;

procedure TFormLancamento.EditChapaEnter(Sender: TObject);
begin
      Orientacao.Caption:='F2 - Busca colaboradores';
      LimpaEdit1.Click;
      DtPro.DataSet.cancel;
      DtPro.DataSet.close;

end;

procedure TFormLancamento.EditChapaExit(Sender: TObject);
begin
          Orientacao.Caption:='';
end;

procedure TFormLancamento.EditChapaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;
if key = vk_F2 then
    begin
         SpeedButton1.Click;
    end;

end;

procedure TFormLancamento.EditChapaKeyPress(Sender: TObject; var Key: Char);
begin
               if Key = #13 then
                      begin
                            Key:=#0;
                            if EditChapa.Text <> '' then
                                 begin
                                      if CheckBox1.Checked = True then
                                               BtImporta.Click
                                               else
                                               Executa.Click;

                                 end;
                      end;
end;

procedure TFormLancamento.EditHi2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditVei1.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);
           end;

end;

procedure TFormLancamento.EditHi2KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
              begin
                    key:=#0;
                    if EditHi2.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf1.Text),StrToTIme(EditHi2.Text)) = true then
                            begin
                                  Perform(WM_NextDlgCtl,0,0);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf1.SetFocus;
                            end;
                       end;
              end;
end;

procedure TFormLancamento.EditHi2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin

                    if PulaCampo(ActiveControl as TCustomEdit) then
                    BEGIN
                    if EditHi2.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf1.Text),StrToTIme(EditHi2.Text)) = true then
                            begin
                               SelectNext(ActiveControl, True, True);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf1.SetFocus;
                            end;
                       end;

                    END;
              end;


end;


procedure TFormLancamento.EditHi3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditVei2.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);


           end;

end;

procedure TFormLancamento.EditHi3KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
              begin
                    key:=#0;
                    if EditHi3.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf2.Text),StrToTIme(EditHi3.Text)) = true then
                            begin
                                  Perform(WM_NextDlgCtl,0,0);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf2.SetFocus;
                            end;
                       end;
              end;


end;

procedure TFormLancamento.EditHi3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin

                    if PulaCampo(ActiveControl as TCustomEdit) then
                    BEGIN
                    if EditHi3.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf2.Text),StrToTIme(EditHi3.Text)) = true then
                            begin
                               SelectNext(ActiveControl, True, True);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf2.SetFocus;
                            end;
                       end;

                    END;
              end;

end;

procedure TFormLancamento.EditHi4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                Editvei3.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);


           end;

end;

procedure TFormLancamento.EditHi4KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
              begin
                    key:=#0;
                    if EditHi4.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf3.Text),StrToTIme(EditHi4.Text)) = true then
                            begin
                                  Perform(WM_NextDlgCtl,0,0);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf3.SetFocus;
                            end;
                       end;
              end;
end;

procedure TFormLancamento.EditHi4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin

                    if PulaCampo(ActiveControl as TCustomEdit) then
                    BEGIN
                    if EditHi4.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf3.Text),StrToTIme(EditHi4.Text)) = true then
                            begin
                               SelectNext(ActiveControl, True, True);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf3.SetFocus;
                            end;
                       end;

                    END;
              end;

end;

procedure TFormLancamento.EditHi5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditVei4.AutoSelect:=true;

                Perform(WM_NextDlgCtl,2,0);


           end;

end;

procedure TFormLancamento.EditHi5KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
              begin
                    key:=#0;
                    if EditHi5.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf4.Text),StrToTIme(EditHi5.Text)) = true then
                            begin
                                  Perform(WM_NextDlgCtl,0,0);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf4.SetFocus;
                            end;
                       end;
              end;


end;

procedure TFormLancamento.EditHi5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin

                    if PulaCampo(ActiveControl as TCustomEdit) then
                    BEGIN
                    if EditHi5.Text='00:00' then
                       btsalva.SetFocus
                       else
                       begin
                            if Pai.SaldoIntervalo(StrToTime(EditHf4.Text),StrToTIme(EditHi5.Text)) = true then
                            begin
                               SelectNext(ActiveControl, True, True);
                            end
                            else
                            begin
                                  MessageBox(0, 'Corrija intervalo m�nimo,'+#13+#10+'Esse intervalo n�o atingiu o pr� requisito m�nimo de 15 minutos ', 'Irregularidade...', MB_ICONSTOP or MB_OK);
                                  EditHf4.SetFocus;
                            end;
                       end;

                    END;
              end;
end;

procedure TFormLancamento.EditHf2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If Key = vk_Tab then
             begin
                    EditT2.Text:= Pai.SaldoParcial(StrToTime(EditHi2.Text),StrToTime(EditHF2.Text));
                    EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                    EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                    if StrtoTime(EditSaldoPto.Caption) >  VhoraLimite then
                         MessageBox(0, 'Limite de horas atingido,'+#13+#10+'O limite estimado de horas para o colaborador foi atingido, verifique ', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
             end;
        if key = 38 then
           begin
                EditHI2.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);
           end;

end;

procedure TFormLancamento.EditHf2KeyPress(Sender: TObject; var Key: Char);
var SaldoIntervaloProvisorio:string;
Limite:Ttime;
begin
         if key = #13 then
             begin
                    key:=#0;
                    EditT2.Text:= Pai.SaldoParcial(StrToTime(EditHi2.Text),StrToTime(EditHF2.Text));
                    EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                    EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                    if StrtoTime(EditSaldoPto.Caption) >  VhoraLimite then
                         MessageBox(0, 'Limite de horas atingido,'+#13+#10+'O limite estimado de horas para o colaborador foi atingido, verifique ', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                    Perform(WM_NextDlgCtl,0,0);
             end;

end;

procedure TFormLancamento.EditHf2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var SaldoIntervaloProvisorio:string;
Limite:Ttime;
  begin
        if ActiveControl is TCustomEdit then
              begin
                    if PulaCampo(ActiveControl as TCustomEdit) then
                             begin
                                      EditT2.Text:= Pai.SaldoParcial(StrToTime(EditHi2.Text),StrToTime(EditHF2.Text));
                                      EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                                      EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                                            SelectNext(ActiveControl, True, True);
                             end;
              end;

end;

procedure TFormLancamento.EditHf3Exit(Sender: TObject);
begin
//    EditT3.Text:=Pai.SaldoParcial(StrToTime(EditHi3.Text),StrToTime(EditHF3.Text));

end;

procedure TFormLancamento.EditHf3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHI3.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);
           end;

end;

procedure TFormLancamento.EditHf3KeyPress(Sender: TObject; var Key: Char);
begin
         if key = #13 then
             begin
                    key:=#0;
                    EditT3.Text:=Pai.SaldoParcial(StrToTime(EditHi3.Text),StrToTime(EditHF3.Text));
                    EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                   EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                   if StrtoTime(EditSaldoPto.Caption) >  VhoraLimite then
                         MessageBox(0, 'Limite de horas atingido,'+#13+#10+'O limite estimado de horas para o colaborador foi atingido, verifique ', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                    Perform(WM_NextDlgCtl,0,0);
             end;

end;

procedure TFormLancamento.EditHf3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin
                    if PulaCampo(ActiveControl as TCustomEdit) then
                             begin
                                      EditT3.Text:= Pai.SaldoParcial(StrToTime(EditHi3.Text),StrToTime(EditHF3.Text));
                                      EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                                      EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                                            SelectNext(ActiveControl, True, True);
                             end;
              end;

end;

procedure TFormLancamento.EditHf4Exit(Sender: TObject);
begin
//    EditT4.Text:=Pai.SaldoParcial(StrToTime(EditHi4.Text),StrToTime(EditHF4.Text));

end;

procedure TFormLancamento.EditHf4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHI4.AutoSelect:=true;
//                EditT4.Text:=Pai.SaldoParcial(StrToTime(EditHi4.Text),StrToTime(EditHF4.Text));
                Perform(WM_NextDlgCtl,2,0);
           end;

end;

procedure TFormLancamento.EditHf4KeyPress(Sender: TObject; var Key: Char);
begin
         if key = #13 then
             begin
                    key:=#0;
                    EditT4.Text:=Pai.SaldoParcial(StrToTime(EditHi4.Text),StrToTime(EditHF4.Text));
                    EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                   EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                    Perform(WM_NextDlgCtl,0,0);
                   if StrtoTime(EditSaldoPto.Caption) >  VhoraLimite then
                         MessageBox(0, 'Limite de horas atingido,'+#13+#10+'O limite estimado de horas para o colaborador foi atingido, verifique ', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
             end;


end;

procedure TFormLancamento.EditHf4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin
                    if PulaCampo(ActiveControl as TCustomEdit) then
                             begin
                                      EditT4.Text:= Pai.SaldoParcial(StrToTime(EditHi4.Text),StrToTime(EditHF4.Text));
                                      EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                                      EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                                            SelectNext(ActiveControl, True, True);
                             end;
              end;

end;

procedure TFormLancamento.EditHf5Exit(Sender: TObject);
begin
//    EditT5.Text:=Pai.SaldoParcial(StrToTime(EditHi5.Text),StrToTime(EditHF5.Text));

end;

procedure TFormLancamento.EditHf5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
//                EditT5.Text:=Pai.SaldoParcial(StrToTime(EditHi5.Text),StrToTime(EditHF5.Text));
                EditHI5.AutoSelect:=true;

                Perform(WM_NextDlgCtl,2,0);
           end;

end;

procedure TFormLancamento.EditHf5KeyPress(Sender: TObject; var Key: Char);
begin
         if key = #13 then
             begin
                    key:=#0;
                    EditT5.Text:=Pai.SaldoParcial(StrToTime(EditHi5.Text),StrToTime(EditHF5.Text));
                    EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);

                    EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                   if StrtoTime(EditSaldoPto.Caption) >  VhoraLimite then
                         MessageBox(0, 'Limite de horas atingido,'+#13+#10+'O limite estimado de horas para o colaborador foi atingido, verifique ', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                    Perform(WM_NextDlgCtl,0,0);
             end;


end;

procedure TFormLancamento.EditHf5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ActiveControl is TCustomEdit then
              begin
                    if PulaCampo(ActiveControl as TCustomEdit) then
                             begin
                                      EditT5.Text:= Pai.SaldoParcial(StrToTime(EditHi5.Text),StrToTime(EditHF5.Text));
                                      EditSaldoPto.Caption:=CalculaSaldo(StrToTime(EditT1.Text),StrToTime(EditT2.Text),StrToTime(EditT3.Text),StrToTime(EditT4.Text),StrToTime(EditT5.Text) );
                                      EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
                                      SelectNext(ActiveControl, True, True);
                             end;
              end;

end;

procedure TFormLancamento.EditT1Enter(Sender: TObject);
begin
//          if Strtotime(EditIntervalo.text) < 1 then
//                EditIntervalo.Text:='0:00';
end;

procedure TFormLancamento.EditT1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
//                    EditEntrada.AutoSelect:=true;
//                    Editsaida.AutoSelect:=true;
//                    EditITI.AutoSelect:=true;
//                    EditItf.AutoSelect:=true;
//                    EditLocal.AutoSelect:=true;

    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.EditVei1Enter(Sender: TObject);
begin
         if EditVei1.Text = '' then EditVei1.Text:='';
end;

procedure TFormLancamento.EditVei1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHf1.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);

           end;

end;

procedure TFormLancamento.EditVei1KeyPress(Sender: TObject; var Key: Char);
VAR LETRAVEI: STRING;
Begin
      if key = #13 then
            begin
                  key:=#0;
                  if Editvei1.Text <> '' then
                       begin
                            if PAI.Coligada = '4' then LETRAVEI:='E' ELSE LETRAVEI:='';

                            with QrVeiculo do
                                begin
                                    close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('veiculo').Value:=LETRAVEI+Editvei1.Text;
                                    open;
                                    if not eof then
                                          begin
                                                Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                close;
                                                Perform(WM_NextDlgCtl,0,0);
                                          end
                                          else
                                          begin
                                                close;
                                                MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                Editvei1.Text:='';
                                                Editvei1.SetFocus;
                                          end;
                                end;
                       end
                       else
                       begin
                            QrVeiculo.Close;
                            Perform(WM_NextDlgCtl,0,0);
                       end;

            end;

end;

procedure TFormLancamento.EditVei1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ActiveControl is TCustomEdit then
           begin
                if PulaCampo(ActiveControl as TCustomEdit) then
                      begin
                           if EditVei1.Text <> '' then
                                 begin
                                      with QrVeiculo do
                                            begin
                                                 close;
                                                 Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                                 Parameters.ParamByName('veiculo').Value:=EditVei1.Text;
                                                 open;
                                                 if not eof then
                                                      begin
                                                           Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                           close;
                                                           //VDIRECAO:=0;
                                                           Perform(WM_NextDlgCtl,0,0);
                                                      end
                                                      else
                                                      begin
                                                           Close;
                                                           MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                           EditVei1.Text:='';
                                                           EditVei1.SetFocus;
                                                      end
                                            end
                                 end
                                 else
                                 begin
                                      QrVeiculo.Close;
                                      Perform(WM_NextDlgCtl,0,0);
                                 end;
                      end;
           end;


end;

procedure TFormLancamento.EditVei2Enter(Sender: TObject);
begin
         if TEdit(Sender).Text = '' then TEdit(Sender).Text:='';
// if EditVei2.Text = '' then
//       EditVei2.Text:=EditVei1.Text;
end;

procedure TFormLancamento.EditVei2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHf2.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);


           end;

end;

procedure TFormLancamento.EditVei2KeyPress(Sender: TObject; var Key: Char);
VAR LETRAVEI: STRING;
begin
      if key = #13 then
            begin
                  key:=#0;
                  if Editvei2.Text <> '' then
                       begin
                            if PAI.Coligada = '4' then LETRAVEI:='E' ELSE LETRAVEI:='';
                            with QrVeiculo do
                                begin
                                    close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('veiculo').Value:=letravei+Editvei2.Text;
                                    open;
                                    if not eof then
                                          begin
                                                Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                close;
                                                Perform(WM_NextDlgCtl,0,0);
                                          end
                                          else
                                          begin
                                                close;
                                                MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                Editvei2.Text:='';
                                                Editvei2.SetFocus;
                                          end;
                                end;
                       end
                       else
                       begin
                            QrVeiculo.Close;
                            Perform(WM_NextDlgCtl,0,0);
                       end;

            end;

end;

procedure TFormLancamento.EditVei2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ActiveControl is TCustomEdit then
           begin
                if PulaCampo(ActiveControl as TCustomEdit) then
                      begin
                           if EditVei2.Text <> '' then
                                 begin
                                      with QrVeiculo do
                                            begin
                                                 close;
                                                 Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                                 Parameters.ParamByName('veiculo').Value:=EditVei2.Text;
                                                 open;
                                                 if not eof then
                                                      begin
                                                           Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                           close;
                                                           //VDIRECAO:=0;
                                                           Perform(WM_NextDlgCtl,0,0);
                                                      end
                                                      else
                                                      begin
                                                           Close;
                                                           MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                           EditVei2.Text:='';
                                                           EditVei2.SetFocus;
                                                      end
                                            end
                                 end
                                 else
                                 begin
                                      QrVeiculo.Close;
                                      Perform(WM_NextDlgCtl,0,0);
                                 end;
                      end;
           end;

end;

procedure TFormLancamento.EditVei3Enter(Sender: TObject);
begin
         if TEdit(Sender).Text = '' then TEdit(Sender).Text:='';
// if EditVei3.Text = '' then
//       EditVei3.Text:=EditVei2.Text;
end;

procedure TFormLancamento.EditVei3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHf3.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);


           end;

end;

procedure TFormLancamento.EditVei3KeyPress(Sender: TObject; var Key: Char);
VAR LETRAVEI: STRING;

begin
      if key = #13 then
            begin
                  key:=#0;
                  if Editvei3.Text <> '' then
                       begin
                            if PAI.Coligada = '4' then LETRAVEI:='E' ELSE LETRAVEI:='';
                            with QrVeiculo do
                                begin
                                    close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('veiculo').Value:=letravei+Editvei3.Text;
                                    open;
                                    if not eof then
                                          begin
                                                Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                close;
                                                Perform(WM_NextDlgCtl,0,0);
                                          end
                                          else
                                          begin
                                                close;
                                                MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                Editvei3.Text:='';
                                                Editvei3.SetFocus;
                                          end;
                                end;
                       end
                       else
                       begin
                            QrVeiculo.Close;
                            Perform(WM_NextDlgCtl,0,0);
                       end;

            end;

end;

procedure TFormLancamento.EditVei3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ActiveControl is TCustomEdit then
           begin
                if PulaCampo(ActiveControl as TCustomEdit) then
                      begin
                           if EditVei3.Text <> '' then
                                 begin
                                      with QrVeiculo do
                                            begin
                                                 close;
                                                 Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                                 Parameters.ParamByName('veiculo').Value:=EditVei3.Text;
                                                 open;
                                                 if not eof then
                                                      begin
                                                           Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                           close;
                                                           //VDIRECAO:=0;
                                                           Perform(WM_NextDlgCtl,0,0);
                                                      end
                                                      else
                                                      begin
                                                           Close;
                                                           MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                           EditVei3.Text:='';
                                                           EditVei3.SetFocus;
                                                      end
                                            end
                                 end
                                 else
                                 begin
                                      QrVeiculo.Close;
                                      Perform(WM_NextDlgCtl,0,0);
                                 end;
                      end;
           end;

end;

procedure TFormLancamento.EditVei4Enter(Sender: TObject);
begin
         if TEdit(Sender).Text = '' then TEdit(Sender).Text:='';
// if EditVei4.Text = '' then
//       EditVei4.Text:=EditVei3.Text;

end;

procedure TFormLancamento.EditVei4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHf4.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);


           end;

end;

procedure TFormLancamento.EditVei4KeyPress(Sender: TObject; var Key: Char);
VAR LETRAVEI: STRING;
begin
      if key = #13 then
            begin
                  key:=#0;
                  if Editvei4.Text <> '' then
                       begin
                            if PAI.Coligada = '4' then LETRAVEI:='E' ELSE LETRAVEI:='';
                            with QrVeiculo do
                                begin
                                    close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('veiculo').Value:=letravei+Editvei4.Text;
                                    open;
                                    if not eof then
                                          begin
                                                Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                close;
                                                Perform(WM_NextDlgCtl,0,0);
                                          end
                                          else
                                          begin
                                                close;
                                                MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                Editvei4.Text:='';
                                                Editvei4.SetFocus;
                                          end;
                                end;
                       end
                       else
                       begin
                            QrVeiculo.Close;
                            Perform(WM_NextDlgCtl,0,0);
                       end;

            end;

end;

procedure TFormLancamento.EditVei4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ActiveControl is TCustomEdit then
           begin
                if PulaCampo(ActiveControl as TCustomEdit) then
                      begin
                           if EditVei4.Text <> '' then
                                 begin
                                      with QrVeiculo do
                                            begin
                                                 close;
                                                 Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                                 Parameters.ParamByName('veiculo').Value:=EditVei4.Text;
                                                 open;
                                                 if not eof then
                                                      begin
                                                           Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                           close;
                                                           //VDIRECAO:=0;
                                                           Perform(WM_NextDlgCtl,0,0);
                                                      end
                                                      else
                                                      begin
                                                           Close;
                                                           MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                           EditVei4.Text:='';
                                                           EditVei4.SetFocus;
                                                      end
                                            end
                                 end
                                 else
                                 begin
                                      QrVeiculo.Close;
                                      Perform(WM_NextDlgCtl,0,0);
                                 end;
                      end;
           end;

end;

procedure TFormLancamento.EditVei5Enter(Sender: TObject);
begin
         if TEdit(Sender).Text = '' then TEdit(Sender).Text:='';
// if EditVei5.Text = '' then
//       EditVei5.Text:=EditVei4.Text;

end;

procedure TFormLancamento.EditVei5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 38 then
           begin
                EditHf5.AutoSelect:=true;
                Perform(WM_NextDlgCtl,2,0);
           end;

end;

procedure TFormLancamento.EditVei5KeyPress(Sender: TObject; var Key: Char);
VAR LETRAVEI: STRING;
begin
      if key = #13 then
            begin
                  key:=#0;
                  if Editvei5.Text <> '' then
                       begin
                            if PAI.Coligada = '4' then LETRAVEI:='E' ELSE LETRAVEI:='';
                            with QrVeiculo do
                                begin
                                    close;
                                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                    Parameters.ParamByName('veiculo').Value:=letravei+Editvei5.Text;
                                    open;
                                    if not eof then
                                          begin
                                                Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                close;
                                                Perform(WM_NextDlgCtl,0,0);
                                          end
                                          else
                                          begin
                                                close;
                                                MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                Editvei5.Text:='';
                                                Editvei5.SetFocus;
                                          end;
                                end;
                       end
                       else
                       begin
                            QrVeiculo.Close;
                            btsalva.SetFocus;
                       end;

            end;

end;

procedure TFormLancamento.EditVei5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ActiveControl is TCustomEdit then
           begin
                if PulaCampo(ActiveControl as TCustomEdit) then
                      begin
                           if EditVei5.Text <> '' then
                                 begin
                                      with QrVeiculo do
                                            begin
                                                 close;
                                                 Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                                 Parameters.ParamByName('veiculo').Value:=EditVei5.Text;
                                                 open;
                                                 if not eof then
                                                      begin
                                                           Vveiculo:=QrVeiculo.FieldByName('vei_nun').AsString;
                                                           close;
                                                           //VDIRECAO:=0;
                                                           btsalva.SetFocus;
                                                           //Perform(WM_NextDlgCtl,0,0);
                                                      end
                                                      else
                                                      begin
                                                           Close;
                                                           MessageBox(0, 'Caro Usu�rio,'+#13+#10+'N�o encontrei este ve�culo no Banco de Dados, verifique e tente de novo...', 'Opssssssss, algo errado...', MB_ICONSTOP or MB_OK);
                                                           EditVei5.Text:='';
                                                           EditVei5.SetFocus;
                                                      end
                                            end
                                 end
                                 else
                                 begin
                                      QrVeiculo.Close;
                                      Perform(WM_NextDlgCtl,0,0);
                                 end;
                      end;
           end;

end;

procedure TFormLancamento.MontaTela(Sender: TObject);
begin
     EditaLocal:=StrToInt(QrPro.FieldByName('EditaLocal').AsString);
     if CkInt.Checked = true then
         VTipoIntervalo := 0
         else
         VTipoIntervalo:=StrToInt(QrPro.FieldByName('TipoIntervalo').AsString);



end;

procedure TFormLancamento.CheckBox1Click(Sender: TObject);
begin
            if GROUPBOX3.Enabled = TRUE then
                   BEGIN
                          EDITCHAPA.Text:='';
                          EditChapa.SetFocus;
                   END;


end;

procedure TFormLancamento.CkIntClick(Sender: TObject);
begin
            if GROUPBOX3.Enabled = TRUE then
                   BEGIN
                          EDITCHAPA.Text:='';
                          EditChapa.SetFocus;
                   END;

end;

Procedure TFormLancamento.ConsultaLancamento(Sender: TObject);
var
Qr :TADOQuery;
begin
        with Qr Do
             Begin
//                  TADOQuery.Create(nil);
//                  Connection:=Pai.Genoma;
//                  Sql.Add:=('select * from tb_PtoMov where Pto_');
//                  Sql.Add:=('where
             End;

end;
Procedure TFormLancamento.PreencheEdit(Sender: TObject);
var VSaldo: Ttime;
VHI1,VHF1, VTOT1, VVEI1 :string[5];
VHI2,VHF2, VTOT2, VVEI2 :string[5];
VHI3,VHF3, VTOT3, VVEI3 :string[5];
VHI4,VHF4, VTOT4, VVEI4 :string[5];
VHI5,VHF5, VTOT5, VVEI5 :string[5];
VCkMotCob: String;
begin

        VHI1                 :=TimeToStr(DtPro.DataSet.FieldByName('HI1').Asdatetime);
        VHF1                 :=TimeToStr(DtPro.DataSet.FieldByName('HF1').Asdatetime);
        VTOT1                :=TimeToStr(DtPro.DataSet.FieldByName('TOT1').Asdatetime);
        VVEI1                :=(DtPro.DataSet.FieldByName('VEI1').AsSTRING);

        VHI2                :=TimeToStr(DtPro.DataSet.FieldByName('HI2').Asdatetime);
        VHF2                :=TimeToStr(DtPro.DataSet.FieldByName('HF2').Asdatetime);
        VTOT2               :=TimeToStr(DtPro.DataSet.FieldByName('TOT2').Asdatetime);
        VVEI2               :=(DtPro.DataSet.FieldByName('VEI2').AsSTRING);

        VHI3                :=TimeToStr(DtPro.DataSet.FieldByName('HI3').Asdatetime);
        VHF3                :=TimeToStr(DtPro.DataSet.FieldByName('HF3').Asdatetime);
        VTOT3               :=TimeToStr(DtPro.DataSet.FieldByName('TOT3').Asdatetime);
        VVEI3               :=(DtPro.DataSet.FieldByName('VEI3').AsSTRING);

        VHI4                :=TimeToStr(DtPro.DataSet.FieldByName('HI4').Asdatetime);
        VHF4                :=TimeToStr(DtPro.DataSet.FieldByName('HF4').Asdatetime);
        VTOT4               :=TimeToStr(DtPro.DataSet.FieldByName('TOT4').Asdatetime);
        VVEI4               :=(DtPro.DataSet.FieldByName('VEI4').AsSTRING);

        VHI5                :=TimeToStr(DtPro.DataSet.FieldByName('HI5').Asdatetime);
        VHF5                :=TimeToStr(DtPro.DataSet.FieldByName('HF5').Asdatetime);
        VTOT5               :=TimeToStr(DtPro.DataSet.FieldByName('TOT5').Asdatetime);
        VVEI5               :=(DtPro.DataSet.FieldByName('VEI5').AsSTRING);

        Pai.VPtoAtual         :=DtPro.DataSet.FieldByName('IDMOV').AsInteger;
        EditHI1.Text          :=VHI1;
        EditHf1.Text          :=VHF1;
        EditT1.Text           :=VTOT1;
        EditVei1.Text         :=VVEI1;
        EditHI2.Text          :=VHI2;
        EditHf2.Text          :=VHF2;
        EditT2.Text           :=VTOT2;
        EditVei2.Text         :=VVEI2;
        EditHI3.Text          :=VHI3;
        EditHf3.Text          :=VHF3;
        EditT3.Text           :=VTOT3;
        EditVei3.Text         :=VVEI3;
        EditHI4.Text          :=VHI4;
        EditHf4.Text          :=VHF4;
        EditT4.Text           :=VTOT4;
        EditVei4.Text         :=VVEI4;
        EditHI5.Text          :=VHI5;
        EditHf5.Text          :=VHF5;
        EditT5.Text           :=VTOT5;
        EditVei5.Text         :=VVEI5;


        VSaldo                :=DtPro.DataSet.FieldByName('Saldo').AsDatetime;
        EditIntervalo.Caption:=pai.Intervalo(EditHf1.Text,EditHi2.Text,EditHf2.Text,EditHi3.Text,EditHf3.Text,EditHi4.Text,EditHf4.Text,EditHi5.Text);
        EditSaldoPto.Caption  :=Copy(TimeToStr(VSaldo),1,5);
        // pesquisa se h� algo lancado no campo veiculo
end;

function TFormLancamento.PulaCampo(Edit : TCustomEdit) : Boolean;
var
  I : Integer;
  F : Integer;
begin
  Result := False;
  SendMessage(Edit.Handle, EM_GETSEL, Integer(@I), Integer(@F));
  if F > I then
    Exit;

  if Edit is TCustomMaskEdit then
    if (Edit as TCustomMaskEdit).IsMasked then
    begin
      Result := True;
      Exit;
    end;

  if TEdit(Edit).MaxLength > 0 then
     if I >= TEdit(Edit).MaxLength then
        Result := True;
end;

Procedure TFormLancamento.Faltar(Sender: TObject);
begin
                                     // Pega Codigo do PtoMov.. Depois preenche os dados para montar o SQL
                     Pai.ENT1     :=0; Pai.SAI1:=0; Pai.TOT1:=0; Pai.VEI1:='0';
                     Pai.ENT2     :=0; Pai.SAI2:=0; Pai.TOT2:=0; Pai.VEI2:='0';
                     Pai.ENT3     :=0; Pai.SAI3:=0; Pai.TOT3:=0; Pai.VEI3:='0';
                     Pai.ENT4     :=0; Pai.SAI4:=0; Pai.TOT4:=0; Pai.VEI4:='0';
                     Pai.ENT5     :=0; Pai.SAI5:=0; Pai.TOT5:=0; Pai.VEI5:='0';
                     Pai.PtoCod         :=Pai.GeraSeq('PtoMov');
                     Pai.SqlChapa       :=DtPro.DataSet.FieldByName('Codigo').AsString;
                     Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                     Pai.PtoPeriodo     :=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                     Pai.PtoEvento      :=3;
                     Pai.PtoFun         :=DtPro.DataSet.FieldByName('Perfil').AsInteger  ;
                     Pai.JorLocal       :='NULL';
                     Pai.JorMatricula   :=DtPro.DataSet.FieldByName('Chapa').AsString;
                     Pai.JorSaldo       :=DtPro.DataSet.FieldByName('HoraPadrao').AsString;
                     Pai.JorRef         :=1; //Pai.GeraRef(Pai.JorSaldo); // Funcao caucula ref do total de hoars da linah jornada, diferente do saldo de horas do movimento
                     Pai.PtoData:=VDataLancamento;
                     Pai.InserirMov1Click(nil);

end;
Procedure TformLancamento.MontaLanAnt;
var comp:string;
begin
           if CkResumo.Checked = true then
                  begin
                        if pai.Coligada = '1' then comp:='1';
                        if pai.Coligada = '4' then comp:='2';


                        With QrLancamentoPeriodo do
                             begin
                                 Close;
                                 Parameters.ParamByName('coligada').Value:=pai.Coligada;
                                 Parameters.ParamByName('chapa').Value:=(VMatricula);
                                // Parameters.ParamByName('compensacao').Value:=comp;
                                 Parameters.ParamByName('Periodo').Value:=DtPeriodo.DataSet.FieldByName('PtUsu_Periodo').AsString;
                                 Open;
                             end;
                  end;
end;

procedure TFormLancamento.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) then
     begin
       Msg.wParam := 0;
       Handled    := True;
    end;

end;

Procedure TFormLancamento.atestadar;
begin

///                 // Insere um atestado a partir da tela de lan�amentos
                   // Pega Codigo do PtoMov.. Depois preenche os dados para montar o SQL
                     Pai.ENT1     :=0; Pai.SAI1:=0; Pai.TOT1:=0; Pai.VEI1:='0';
                     Pai.ENT2     :=0; Pai.SAI2:=0; Pai.TOT2:=0; Pai.VEI2:='0';
                     Pai.ENT3     :=0; Pai.SAI3:=0; Pai.TOT3:=0; Pai.VEI3:='0';
                     Pai.ENT4     :=0; Pai.SAI4:=0; Pai.TOT4:=0; Pai.VEI4:='0';
                     Pai.ENT5     :=0; Pai.SAI5:=0; Pai.TOT5:=0; Pai.VEI5:='0';
                     Pai.PtoCod         :=Pai.GeraSeq('PtoMov');
                     Pai.SqlChapa       :=DtPro.DataSet.FieldByName('Codigo').AsString;
                     Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                     Pai.PtoPeriodo     :=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                     Pai.PtoEvento      :=4;  /// Codigo do atestado
                     Pai.PtoFun         :=DtPro.DataSet.FieldByName('Perfil').AsInteger  ;
                     Pai.JorLocal       :='NULL';
                     Pai.JorMatricula   :=DtPro.DataSet.FieldByName('Chapa').AsString;
                     Pai.JorSaldo       :=DtPro.DataSet.FieldByName('HoraPadrao').AsString;
                     Pai.JorRef         :=1; //Pai.GeraRef(Pai.JorSaldo); // Funcao caucula ref do total de hoars da linah jornada, diferente do saldo de horas do movimento
                     Pai.PtoData:=VDataLancamento;
                     Pai.InserirMov1Click(nil);



end;

Procedure TformLancamento.Abonar;
begin
  //
                     Pai.ENT1     :=0; Pai.SAI1:=0; Pai.TOT1:=0; Pai.VEI1:='0';
                     Pai.ENT2     :=0; Pai.SAI2:=0; Pai.TOT2:=0; Pai.VEI2:='0';
                     Pai.ENT3     :=0; Pai.SAI3:=0; Pai.TOT3:=0; Pai.VEI3:='0';
                     Pai.ENT4     :=0; Pai.SAI4:=0; Pai.TOT4:=0; Pai.VEI4:='0';
                     Pai.ENT5     :=0; Pai.SAI5:=0; Pai.TOT5:=0; Pai.VEI5:='0';
                     Pai.PtoCod         :=Pai.GeraSeq('PtoMov');
                     Pai.SqlChapa       :=DtPro.DataSet.FieldByName('Codigo').AsString;
                     Pai.PtoUsuario     :=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsInteger;
                     Pai.PtoPeriodo     :=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                     Pai.PtoEvento      :=8;  /// Codigo do atestado
                     Pai.PtoFun         :=DtPro.DataSet.FieldByName('Perfil').AsInteger  ;
                     Pai.JorLocal       :='NULL';
                     Pai.JorMatricula   :=DtPro.DataSet.FieldByName('Chapa').AsString;
                     Pai.JorSaldo       :=DtPro.DataSet.FieldByName('HoraPadrao').AsString;
                     Pai.JorRef         :=1; //Pai.GeraRef(Pai.JorSaldo); // Funcao caucula ref do total de hoars da linah jornada, diferente do saldo de horas do movimento
                     Pai.PtoData:=VDataLancamento;
                     Pai.InserirMov1Click(nil);



end;





Function Tformlancamento.CalculaSaldo(saldo1 :Ttime; saldo2:ttime; saldo3: ttime; saldo4:ttime; saldo5:ttime) : string;
var vref1, vref2, vref3, vref4, vref5: integer;
saldo: integer;
begin
  //
      Vref1:= HourOf(saldo1)*60  + Minuteof(saldo1);
      Vref2:= HourOf(saldo2)*60  + Minuteof(saldo2);
      Vref3:= HourOf(saldo3)*60  + Minuteof(saldo3);
      Vref4:= HourOf(saldo4)*60  + Minuteof(saldo4);
      Vref5:= HourOf(saldo5)*60  + Minuteof(saldo5);
      saldo:=vref1+vref2+vref3+vref4+vref5;
      Pai.SaldoRef:=Saldo;

      result:= FormatFloat('00',Saldo  div 60) +':'+ FormatFloat('00',Saldo mod 60);



end;

end.
