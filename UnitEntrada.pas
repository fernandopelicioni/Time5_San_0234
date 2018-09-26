unit UnitEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMenus, RibbonActnMenus, DB, ImgList, ActnList, ActnMan, ToolWin,
  ActnCtrls, Ribbon, RibbonObsidianStyleActnCtrls, jpeg, ExtCtrls, StdCtrls,
  Buttons, Gauges, ComCtrls, RibbonSilverStyleActnCtrls, pngimage;

type
  TFormEntrada = class(TForm)
    Ribbon1: TRibbon;
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    DtColigada: TDataSource;
    ImageList2: TImageList;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonPage4: TRibbonPage;
    RibbonPage5: TRibbonPage;
    Bandeira: TImage;
    AcAtivaPeriodo: TAction;
    RibbonGroup3: TRibbonGroup;
    AcProDisp: TAction;
    Action2: TAction;
    RibbonGroup4: TRibbonGroup;
    Action3: TAction;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    BitBtn1: TBitBtn;
    Action7: TAction;
    RibbonGroup5: TRibbonGroup;
    Action4: TAction;
    Action5: TAction;
    StatusBar1: TStatusBar;
    Action8: TAction;
    Action9: TAction;
    EditPeriodo: TLabel;
    Action1: TAction;
    Action6: TAction;
    AcNotasVersao: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    Memo1: TMemo;
    Action15: TAction;
    Action16: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure AcAtivaPeriodoExecute(Sender: TObject);
    procedure AcProDispExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure AcFormEscalaTabelasHorariosExecute(Sender: TObject);
    procedure AcItinerariosExecute(Sender: TObject);
    procedure AcAssociaLinhasExecute(Sender: TObject);
    procedure ActabelasVeiculosExecute(Sender: TObject);
    procedure AcGerarAssociacaoExecute(Sender: TObject);
    procedure AcGerarArquivoExecute(Sender: TObject);
    procedure AcEdicaoRapidaExecute(Sender: TObject);
    procedure AcAssociacaoDiariaExecute(Sender: TObject);
    procedure AcQuadroHorariosExecute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Action7Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure AcNotasVersaoExecute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure BandeiraDblClick(Sender: TObject);
    procedure BandeiraClick(Sender: TObject);
    procedure Action15Execute(Sender: TObject);


  private
    { Private declarations }
  public
    nivel:word;
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

uses UnitPai, UnitIniciaSistema, UnitAtivaPeriodo, UnitProDisp,
  UnitFuncaoPerfil, UnitLancamento, UnitLancaTabelaHorarios, UnitItinerarios,
  UnitAssociaLinha, UnitTabelasVeiculos, UnitGerarAssociacao,
  UnitGeraArquivoAssociacao, UnitHorariosEdicaoRapida, UnitTabelasDiarias,
  UnitRelatorio, UnitAcompanhamento, UnitGeraCartaoBse, Unit2, UnitRelogio,
  UnitRelogioLogin, UnitRelogioDigita, UnitAlteraOso, UnitCadastroFuncoes,
  UnitCentralRelatorio, UnitCadastraProventos, UnitGeraFeriado, UnitLctoLote,
  UnitNotaVersao, UnitRelogioRegistra, UnitTerminal, UnitTerminalDetalhes,
  UnitCapturaEscala, UnitIndicadorGrafico, UnitEtiquetaCartao, UtMaoObra,
  UnitImportaColaborador;

{$R *.dfm}

procedure TFormEntrada.AcAssociacaoDiariaExecute(Sender: TObject);
begin
        Application.CreateForm(TFormTabelasDiarias,FormTabelasDiarias);
        FormTabelasDiarias.showmodal;

end;

procedure TFormEntrada.AcAssociaLinhasExecute(Sender: TObject);
begin
        Application.CreateForm(tFormAssociaLinhas,FormAssociaLinhas);
        FormAssociaLinhas.showmodal;
end;

procedure TFormEntrada.AcAtivaPeriodoExecute(Sender: TObject);
begin
       Application.CreateForm(TFormAtivaPeriodos,FormAtivaPeriodos);
       FormAtivaPeriodos.ShowModal;
       StatusBar1.Panels[2].Text:=' Logado desde : ' + DateTimeToStr(now) + ' em : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;
       StatusBar1.Panels[1].Text:=' Usuário : ' + Pai.Qrusuarios.FieldByName('Usu_Login').AsString;

end;

procedure TFormEntrada.AcEdicaoRapidaExecute(Sender: TObject);
begin
       Application.CreateForm(TFormHorariosEdicaoRapida,FormHorariosEdicaoRapida);
       FormHorariosEdicaoRapida.showmodal;

end;

procedure TFormEntrada.AcFormEscalaTabelasHorariosExecute(Sender: TObject);
begin
       Application.CreateForm(TFormEscalaTabelasHorarios,FormEscalaTabelasHorarios);
       FormEscalaTabelasHorarios.showmodal;
end;

procedure TFormEntrada.AcGerarArquivoExecute(Sender: TObject);
begin
       Application.CreateForm(TFormGeraArquivoAssociacao,FormGeraArquivoAssociacao);
       FormGeraArquivoAssociacao.Showmodal;


end;

procedure TFormEntrada.AcGerarAssociacaoExecute(Sender: TObject);
begin
       Application.CreateForm(TFormGerarAssociacao,FormGerarAssociacao);
       FormGerarAssociacao.Showmodal;

end;

procedure TFormEntrada.AcItinerariosExecute(Sender: TObject);
begin
       Application.CreateForm(TFormItinerarios,FormItinerarios);
       FormItinerarios.Showmodal;

end;

procedure TFormEntrada.AcNotasVersaoExecute(Sender: TObject);
begin
        Application.CreateForm(TFormNotasVersao,FormNotasVersao);
        FormNotasVersao.ShowModal;
end;

procedure TFormEntrada.AcProDispExecute(Sender: TObject);
begin
                    With Pai.QrPeriodoAtivo do
                        begin
                             Close;
                             Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                             Parameters.ParamByName('usuario').Value:=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsString;
                             Open;
                        end;
     EditPeriodo.Caption:='Periodo Ativo : ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Des').AsString + ' - ' +  Pai.QrPeriodoAtivo.FieldByName('Tpe_Inicio').AsString + ' à ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Fim').AsString + '         ';

       Application.CreateForm(TFormProDisp,FormProDisp);
       FormProDisp.ShowModal;

end;

procedure TFormEntrada.AcQuadroHorariosExecute(Sender: TObject);
begin
          Screen.Cursor:=CrHourGlass;
          With Relatorio.QrEscHorarios do
              begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    Open;
                    Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                    Relatorio.Projeto.ExecuteReport('RvQdHorario');
              end;
          Screen.Cursor:=crDefault;
end;

procedure TFormEntrada.ActabelasVeiculosExecute(Sender: TObject);
begin
          Application.CreateForm(TFormTabelasVeiculos,FormTabelasVeiculos);
          FormTabelasVeiculos.ShowModal;
end;

procedure TFormEntrada.Action10Execute(Sender: TObject);
begin
               Application.CreateForm(TFormTerminal,FormTerminal);
               Application.CreateForm(TFormTerminalDetalhes,FormTerminalDetalhes);

               FormTerminal.Show;
end;

procedure TFormEntrada.Action11Execute(Sender: TObject);
begin
          Application.CreateForm(TFormCapturaEscala,FormCapturaEscala);
          FormCapturaEscala.showmodal;
end;

procedure TFormEntrada.Action12Execute(Sender: TObject);
begin
          Application.CreateForm(TFormIndicadorGrafico,FormIndicadorGrafico);
          FormIndicadorGrafico.ShowModal;

end;

procedure TFormEntrada.Action13Execute(Sender: TObject);
begin
          Application.CreateForm(TFormEtiquetaCartao,FormEtiquetaCartao);
          FormEtiquetaCartao.ShowModal;
end;

procedure TFormEntrada.Action14Execute(Sender: TObject);
begin
          Application.CreateForm(TFormmaoObra,FormMaoObra);
          FormMaoObra.ShowModal;

end;

procedure TFormEntrada.Action15Execute(Sender: TObject);
begin
          Application.CreateForm(TFormImportaColaborador,FormImportaColaborador);
          FormImportaColaborador.ShowModal;

end;

procedure TFormEntrada.Action1Execute(Sender: TObject);
begin
          Application.CreateForm(TFormFuncaoPerfil,FormFuncaoPerfil);
          FormFuncaoPerfil.ShowModal;
end;

procedure TFormEntrada.Action2Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFormEntrada.Action3Execute(Sender: TObject);
begin
                    With Pai.QrPeriodoAtivo do
                        begin
                             Close;
                             Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                             Parameters.ParamByName('usuario').Value:=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsString;
                             Open;
                        end;
     EditPeriodo.Caption:='Periodo Ativo : ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Des').AsString + ' - ' +  Pai.QrPeriodoAtivo.FieldByName('Tpe_Inicio').AsString + ' à ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Fim').AsString + '         ';

          Application.CreateForm(TFormLancamento, FormLancamento);
          FormLancamento.Showmodal;
end;

procedure TFormEntrada.Action4Execute(Sender: TObject);
begin
          Application.CreateForm(TFormCadastroFuncao,FormCadastroFuncao);
          FormCadastroFuncao.Show;
end;

procedure TFormEntrada.Action5Execute(Sender: TObject);
begin
          Application.CreateForm(TFormCentralRelatorio, FormCentralRelatorio);
          FormCentralRelatorio.Showmodal;

end;

procedure TFormEntrada.Action6Execute(Sender: TObject);
begin
          Application.CreateForm(TFormAlteraOsoLote, FormAlteraOsoLote);
          FormAlteraOsoLote.Showmodal;

end;

procedure TFormEntrada.Action7Execute(Sender: TObject);
begin
          Application.CreateForm(TFormCadastraProventos, FormCadastraProventos);
          FormCadastraProventos.Showmodal;

end;

procedure TFormEntrada.Action8Execute(Sender: TObject);
begin
          Application.CreateForm(TFormGeraFeriado, FormGeraFeriado);
          FormGeraFeriado.Showmodal;

end;

procedure TFormEntrada.Action9Execute(Sender: TObject);
begin
          Application.CreateForm(TFormLctoLote, FormLctoLote);
          FormLctoLote.ShowModal;
end;

procedure TFormEntrada.BandeiraClick(Sender: TObject);
begin
MEMO1.Visible:=TRUE;
end;

procedure TFormEntrada.BandeiraDblClick(Sender: TObject);
begin
  memo1.Visible:=true;
end;

procedure TFormEntrada.BitBtn1Click(Sender: TObject);
begin
        FormRelogioLogin.show;
end;

procedure TFormEntrada.FormActivate(Sender: TObject);
begin
    Ribbon1.Caption:='Time - Versão : ' + FormIniciaSistema.editversao.Caption + ' - Coligada : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;
    bandeira.left:=Trunc((FormEntrada.width - bandeira.Width) / 2);
    bandeira.top:=Trunc((FormEntrada.Height - bandeira.Height) / 2);
    // carregando preferencias do usuario
          /// Carrega Periodo

                    With Pai.QrPeriodoAtivo do
                        begin
                             Close;
                             Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                             Parameters.ParamByName('usuario').Value:=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsString;
                             Open;
                        end;
     EditPeriodo.Caption:='Periodo Ativo : ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Des').AsString + ' - ' +  Pai.QrPeriodoAtivo.FieldByName('Tpe_Inicio').AsString + ' à ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Fim').AsString + '         ';

end;

procedure TFormEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         formIniciaSistema.Close;
end;

procedure TFormEntrada.FormCreate(Sender: TObject);
begin
         StatusBar1.Panels[2].Text:=' Logado desde : ' + DateTimeToStr(now) + ' em : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;
         StatusBar1.Panels[1].Text:=' Usuário : ' + Pai.Qrusuarios.FieldByName('Usu_Login').AsString;

end;

procedure TFormEntrada.FormShow(Sender: TObject);
begin
Screen.Cursor:=crHourGlass;
    Ribbon1.Caption:='Clock - Gerenciando Horários - Ver ' + FormIniciaSistema.editversao.Caption + ' - ' + DtColigada.DataSet.FieldByName('Des_coligada').AsString;
    bandeira.left:=Trunc((FormEntrada.width - bandeira.Width) / 2);
    bandeira.top:=Trunc((FormEntrada.Height - bandeira.Height) / 2);
    // carregando preferencias do usuario
          /// Carrega Periodo
                    With Pai.QrPeriodoAtivo do
                        begin
                             Close;
                             Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                             Parameters.ParamByName('usuario').Value:=Pai.Qrusuarios.FieldByName('Usu_Codigo').AsString;
                             Open;

                        end;
    EditPeriodo.Caption:='Periodo Ativo : ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Des').AsString + ' - ' +  Pai.QrPeriodoAtivo.FieldByName('Tpe_Inicio').AsString + ' / ' + Pai.QrPeriodoAtivo.FieldByName('Tpe_Fim').AsString + '         ';

Screen.Cursor:=crDefault;
end;
procedure TformEntrada.CreateParams(var Params: TCreateParams);
begin
     inherited;
     if (FormStyle = fsNormal) then begin
       Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
       Params.WndParent := GetDesktopWindow;
     end;
end;
end.
