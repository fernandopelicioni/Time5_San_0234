unit UtNucleo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.Grids, Vcl.OleCtrls, SHDocVw, System.Actions,
  Vcl.ActnList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.Menus, Vcl.StdActns, Vcl.ComCtrls,
  System.ImageList, frxRich, frxCross, frxOLE, frxBarcode, frxChBox, frxGradient, Vcl.ImgList;

type
  TFormNucleo = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    Panel3: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    EditCopy1: TEditCopy;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Image6: TImage;
    Label4: TLabel;
    Image8: TImage;
    Image10: TImage;
    Label10: TLabel;
    Image3: TImage;
    Label5: TLabel;
    Image7: TImage;
    Label7: TLabel;
    Image9: TImage;
    Label6: TLabel;
    TabSheet4: TTabSheet;
    Image2: TImage;
    Label2: TLabel;
    Image1: TImage;
    Label8: TLabel;
    Image4: TImage;
    Label3: TLabel;
    Label9: TLabel;
    Image11: TImage;
    Image12: TImage;
    Label11: TLabel;
    TabSheet5: TTabSheet;
    Image13: TImage;
    Label12: TLabel;
    Label13: TLabel;
    BtAgenda: TImage;
    Image14: TImage;
    Label14: TLabel;
    BtFichaFuncional: TImage;
    Label15: TLabel;
    Image15: TImage;
    Label16: TLabel;
    Image16: TImage;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Image17: TImage;
    Image19: TImage;
    Label21: TLabel;
    Label22: TLabel;
    Image20: TImage;
    Label23: TLabel;
    Image21: TImage;
    Label24: TLabel;
    Image22: TImage;
    Label25: TLabel;
    Label26: TLabel;
    Image23: TImage;
    Image24: TImage;
    Label27: TLabel;
    Label28: TLabel;
    Image25: TImage;
    Image26: TImage;
    Label29: TLabel;
    TabSheet6: TTabSheet;
    Image27: TImage;
    Label30: TLabel;
    Image18: TImage;
    Label20: TLabel;
    Image28: TImage;
    Label31: TLabel;
    Label32: TLabel;
    Image29: TImage;
    Image30: TImage;
    Label33: TLabel;
    Label34: TLabel;
    Image31: TImage;
    Label36: TLabel;
    Image33: TImage;
    Label37: TLabel;
    Image34: TImage;
    Label38: TLabel;
    Image35: TImage;
    Image36: TImage;
    Label39: TLabel;
    Image32: TImage;
    Label35: TLabel;
    Image37: TImage;
    Label40: TLabel;
    Label41: TLabel;
    Image38: TImage;
    Image39: TImage;
    Label42: TLabel;
    Image40: TImage;
    Label43: TLabel;
    Image41: TImage;
    Label44: TLabel;
    TabPonto: TTabSheet;
    Image42: TImage;
    Label45: TLabel;
    Image43: TImage;
    Label46: TLabel;
    Label47: TLabel;
    Image45: TImage;
    Label50: TLabel;
    Image46: TImage;
    Label51: TLabel;
    Image47: TImage;
    Label52: TLabel;
    Image48: TImage;
    Label53: TLabel;
    Label54: TLabel;
    Image49: TImage;
    Image50: TImage;
    Label55: TLabel;
    Image51: TImage;
    Label56: TLabel;
    Label57: TLabel;
    Image52: TImage;
    Image53: TImage;
    Label58: TLabel;
    Image54: TImage;
    Label59: TLabel;
    Image55: TImage;
    Label60: TLabel;
    Image56: TImage;
    Label61: TLabel;
    TabSheet7: TTabSheet;
    Memo1: TMemo;
    Label62: TLabel;
    Image57: TImage;
    Label63: TLabel;
    Image58: TImage;
    Image59: TImage;
    Label64: TLabel;
    Image44: TImage;
    Label49: TLabel;
    Image60: TImage;
    Label65: TLabel;
    Image61: TImage;
    Label66: TLabel;
    Image62: TImage;
    Label67: TLabel;
    procedure Image5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image4Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtAgendaClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure BtFichaFuncionalClick(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure Image30Click(Sender: TObject);
    procedure Image37Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Image40Click(Sender: TObject);
    Procedure ValidaUsuario;
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabPontoShow(Sender: TObject);
    procedure Image43Click(Sender: TObject);
    procedure Image44Click(Sender: TObject);
    procedure Image33Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image45Click(Sender: TObject);
    procedure Image46Click(Sender: TObject);
    procedure Image47Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image53Click(Sender: TObject);
    procedure Image54Click(Sender: TObject);
    procedure Image55Click(Sender: TObject);
    procedure Image56Click(Sender: TObject);
    procedure Image57Click(Sender: TObject);
    procedure Image58Click(Sender: TObject);
    procedure Image59Click(Sender: TObject);
    procedure Image60Click(Sender: TObject);
    procedure Image61Click(Sender: TObject);
    procedure Image62Click(Sender: TObject);
//    procedure GetBuildInfo;
//    function GetVersionInfo(pegaversao:string);
  private
    { Private declarations }
  public
    Vlevel:Integer;
    { Public declarations }
  end;

var
  FormNucleo: TFormNucleo;
  Vpegaversao:string;


implementation

{$R *.dfm}

uses UtPai, UnitVisao, UtOS, UtSobre, UtEmbarques, UtDestinos, UtSiglas,
  UtOperacao, UtOso, UtTarefas, UtHorarios, UtLinhas, UtCriaSigla,
  UtIniciaSistema, UtColaboradores, UtInsereMC, UtCentroFichaFuncional,
  UtGeraEscalaDia, UtFollowDiario, UtSelecionaDataEscala, UtMontaTripulacao,
  UtCadastraTripulacao, UtEscalaVeiculoPadrao, UtVerificaIntegridadeTabela,
  UtTicagem, UtRelatorio, UtImprimiHorarios, UtCadastraGrupos, UtAssociaTri,
  UtMapaServicoGrupo, UtPeriodo, UtDistribuiFolgas, UtLiberaEscala, UtGeraBSe,
  UtNDI, UtRel_Absenteismo, UtMsgPainel, UtMaoObraEscala, UtCnh,
  UtRelatorioLocalizador, UtRelatorioReservaGaragem, UtRelatorioEscalaSemanal,
  UtRelatorioEscalaIndividual, UtRelatorioInformativo, UtClonaCenario,
  Utcenario, UtCancelaLiberacao, UtRelFolgas, Utcasamento, UtConflitoTri,
  UtAjusteMov, UtNotaVeraso, UtAjustaCenario, UtImprimeEscInd,
  UtEditaEscalaIndividual;

procedure TFormNucleo.BtAgendaClick(Sender: TObject);
begin
          Application.CreateForm(TFormColaboradores,FormColaboradores);
          FormColaboradores.Showmodal;
end;

procedure TFormNucleo.BtFichaFuncionalClick(Sender: TObject);
begin
         Screen.Cursor:=crHourGlass;
         Application.CreateForm(TFormCentroFichaFuncional,FormCentroFichaFuncional);
           ValidaUsuario;
           if Vlevel < 10 then
                 begin
                        FormCentroFichaFuncional.BtApagaAdvt.Visible:=false;
                        FormCentroFichaFuncional.BtApagaFalta.Visible:=false;
                 end;
         FormCentroFichaFuncional.ShowModal;
         Screen.Cursor:=crDefault;
end;

procedure TFormNucleo.FormActivate(Sender: TObject);
begin
          PageControl1.left:=Trunc((FormNucleo.width - PageControl1.Width) / 2);
          Pagecontrol1.top:=Trunc((FormNucleo.Height - Pagecontrol1.Height) / 2);
           //WebBrowser1.Navigate('www.cnn.com');
          if pai.QrColigada.Active = true then
                 Panel3.Caption:='  Logado em : ' + Pai.QrColigada.FieldByName('Des_Coligada').AsString + '   |   Usu�rio : ' + Pai.QrUsuarios.FieldByName('usu_Nome').AsString
                 else
                 Panel3.Caption:=' Deslogado';
end;

procedure TFormNucleo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          FormIniciaSistema.Close;
          Pai.FDConectGenoma.Close;
          Pai.FdTotvs.Connected:=false;
          Application.Terminate;
end;

procedure TFormNucleo.FormCreate(Sender: TObject);
begin
          PageControl1.ActivePageIndex:=0;
          Application.CreateForm(TFormIniciaSistema,FormIniciaSistema);
        //  ValidaUsuario;
          FormIniciaSistema.showmodal;
        //  Panel3.Caption:='  Logado em : ' + Pai.QrColigada.FieldByName('Des_Coligada').AsString + '   |   Usu�rio : ' + Pai.QrUsuarios.FieldByName('usu_Nome').AsString ;

end;

procedure TFormNucleo.FormShow(Sender: TObject);
begin
           With Pai.QrCenarios do
                begin
                       ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_Coligada').AsString;
                       open;
                       Panel2.Caption:='      WORK Bus - Gerente de Opera��es | Cen�rio atual : '+ FieldByName('Tce_Des').AsString + '    |    Vers�o : ' + FormIniciaSistema.EditVersao.Caption;
                end;
end;

procedure TFormNucleo.Image10Click(Sender: TObject);
begin
          Application.CreateForm(TFormOSO,FormOSO);
          FormOSO.Showmodal;
end;

procedure TFormNucleo.Image11Click(Sender: TObject);
begin
          Application.CreateForm(TFormOperacao,FormOperacao);
          FormOperacao.Showmodal;
end;

procedure TFormNucleo.Image12Click(Sender: TObject);
begin
          Application.CreateForm(TFormLinhas,FormLinhas);
          Formlinhas.Showmodal;

end;

procedure TFormNucleo.Image13Click(Sender: TObject);
begin
          Application.CreateForm(TFormInsereMc,FormInsereMC);
          FormInsereMC.Showmodal;

end;

procedure TFormNucleo.Image14Click(Sender: TObject);
begin
          Application.CreateForm(TFormSelecionaDataEscala,FormSelecionaDataEscala);
          FormSelecionaDataEscala.Vdono:='1';
          FormSelecionaDataEscala.DBGrid1.Height:=289;
          FormSelecionaDataEscala.ShowModal;
end;

procedure TFormNucleo.Image15Click(Sender: TObject);
begin
          Application.CreateForm(TFormGeraEscalaDia,FormGeraEscalaDia);
          FormGeraEscalaDia.Showmodal;
end;

procedure TFormNucleo.Image16Click(Sender: TObject);
begin
          Application.CreateForm(TFormEscalaVeiculoPadrao,FormEscalaVeiculoPadrao);
          FormEscalaVeiculoPadrao.Showmodal;
end;

procedure TFormNucleo.Image17Click(Sender: TObject);
begin
//          Application.CreateForm(TFormEscalaVeiculoPadrao,FormEscalaVeiculoPadrao);
//          FormEscalaVeiculoPadrao.Showmodal;

          Application.CreateForm(TFormSelecionaDataEscala,FormSelecionaDataEscala);
          FormSelecionaDataEscala.Vdono:='4';
          FormSelecionaDataEscala.DBGrid1.Height:=289;
          FormSelecionaDataEscala.ShowModal;

end;

procedure TFormNucleo.Image18Click(Sender: TObject);
begin
          Application.CreateForm(TFormPeriodos,FormPeriodos);
          FormPeriodos.Showmodal;
end;

procedure TFormNucleo.Image19Click(Sender: TObject);
begin
          Application.CreateForm(TFormVerificaIntegridadeTabelas,FormVerificaIntegridadeTabelas);
          FormVerificaIntegridadeTabelas.Showmodal;
end;

procedure TFormNucleo.Image1Click(Sender: TObject);
begin
          Application.CreateForm(TFormSobre,FormSobre);
          FormSobre.Showmodal;
end;

procedure TFormNucleo.Image20Click(Sender: TObject);
begin
          Application.CreateForm(TFormTicagem, FormTicagem);
          FormTicagem.showmodal;
end;

procedure TFormNucleo.Image21Click(Sender: TObject);
begin
          Application.CreateForm(TFormSelecionaDataEscala,FormSelecionaDataEscala);
          FormSelecionaDataEscala.Vdono:='2';
          FormSelecionaDataEscala.DBGrid1.Height:=197;
          FormSelecionaDataEscala.ShowModal;
end;

procedure TFormNucleo.Image22Click(Sender: TObject);
begin
          // poder 3 - escala diaria
          Application.CreateForm(TFormSelecionaDataEscala,FormSelecionaDataEscala);
          FormSelecionaDataEscala.Vdono:='3';
          FormSelecionaDataEscala.DBGrid1.Height:=289;
          FormSelecionaDataEscala.ShowModal;
end;

procedure TFormNucleo.Image23Click(Sender: TObject);
begin
          Application.CreateForm(TFormRelatorioLocalizador, FormRelatorioLocalizador);
          FormRelatorioLocalizador.showmodal;

end;

procedure TFormNucleo.Image24Click(Sender: TObject);
begin
          Application.CreateForm(TFormImprimeHorarios, FormImprimeHorarios);
          FormImprimeHorarios.showmodal;
end;

procedure TFormNucleo.Image25Click(Sender: TObject);
begin
          Application.CreateForm(TFormCadastragrupos, FormCadastraGrupos);
          FormCadastraGrupos.showmodal;

end;

procedure TFormNucleo.Image26Click(Sender: TObject);
begin
          Application.CreateForm(TFormMapaServicoGrupo, FormMapaServicoGrupo);
          FormMapaServicoGrupo.showmodal;



//          Application.CreateForm(TFormAssociaTri, FormAssociaTri);
//          FormAssociaTri.showmodal;

end;

procedure TFormNucleo.Image27Click(Sender: TObject);
begin
          Application.CreateForm(TFormLiberaEscala, FormLiberaEscala);
          FormLiberaEscala.showmodal;

end;

procedure TFormNucleo.Image28Click(Sender: TObject);
begin
          Application.CreateForm(TFormDistribuiFolga, FormDistribuiFolga);
          FormDistribuiFolga.showmodal;

end;

procedure TFormNucleo.Image29Click(Sender: TObject);
begin
           With Pai.QrCenarios do
                begin
                       ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_Coligada').AsString;
                       open;
                       Pai.VIDCENARIO:=FieldByName('Tce_ID').AsInteger;
                       Panel2.Caption:='      WORK Bus - Gerente de Opera��es | Cen�rio atual : '+ FieldByName('Tce_Des').AsString;
                end;

        With Relatorio.QrCadastroTripulacao do
              begin
                   Close;
                   ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                   ParamByName('cenario').AsInteger:=Pai.VIDCENARIO;
                   Open;
              end;
        Relatorio.FtCadastroTripulacao.ShowReport();
//        Relatorio.Ftticagem.ShowReport();

end;

procedure TFormNucleo.Image2Click(Sender: TObject);
begin
          Close;
end;

procedure TFormNucleo.Image30Click(Sender: TObject);
begin
          Application.CreateForm(TFormNDI,FormNDI);
          FormNDI.ShowModal;
end;

procedure TFormNucleo.Image31Click(Sender: TObject);
begin
          Application.CreateForm(TFormgeraBSe,FormGeraBSe);
          FormGeraBSe.ShowModal;
end;

procedure TFormNucleo.Image33Click(Sender: TObject);
begin

          Application.CreateForm(TFormRelatorioLocalizador, FormRelatorioLocalizador);
          FormRelatorioLocalizador.showmodal;
end;

procedure TFormNucleo.Image37Click(Sender: TObject);
begin
          Application.CreateForm(TFormRel_Absenteismo, FormRel_Absenteismo);
          FormRel_Absenteismo.showmodal;
end;

procedure TFormNucleo.Image38Click(Sender: TObject);
begin
          Application.CreateForm(TFormMsgpainel, FormMsgpainel);
          FormMsgpainel.showmodal;
end;

procedure TFormNucleo.Image39Click(Sender: TObject);
begin
        With Relatorio.QrAlocacaoPessoal do
              begin
                   Close;
                   ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                   Open;
              end;
        Relatorio.FtAlocacaoPessoal.ShowReport();
end;

procedure TFormNucleo.Image3Click(Sender: TObject);
begin
          Application.CreateForm(TFormEmbarques, FormEmbarques);
          FormEmbarques.showmodal;
end;

procedure TFormNucleo.Image40Click(Sender: TObject);
begin
          Application.CreateForm(TFormMaoObraEscala,FormMaoObraEscala);
          FormMaoObraEscala.Showmodal;
end;

procedure TFormNucleo.Image43Click(Sender: TObject);
begin
          Application.CreateForm(TFormCNH,FormCNH);
          FormCNH.Showmodal;
end;

procedure TFormNucleo.Image44Click(Sender: TObject);
begin
          Application.CreateForm(TFormRelatorioEscalaIndividual,FormRelatorioEscalaIndividual);
          FormRelatorioEscalaIndividual.Showmodal;
end;

procedure TFormNucleo.Image45Click(Sender: TObject);
begin
          Application.CreateForm(TFormRelatorioReservagaragem,FormRelatorioReservagaragem);
          FormRelatorioReservagaragem.Showmodal;  end;

procedure TFormNucleo.Image46Click(Sender: TObject);
begin
          Application.CreateForm(TFormRelatorioEscalaSemanal,FormRelatorioEscalaSemanal);
          FormRelatorioEscalaSemanal.Showmodal;
end;

procedure TFormNucleo.Image47Click(Sender: TObject);
begin
          Application.CreateForm(TFormRelatorioinformativo,FormRelatorioinformativo);
          FormRelatorioinformativo.Showmodal;
end;

procedure TFormNucleo.Image4Click(Sender: TObject);
begin
          Application.CreateForm(TFormVisao,FormVisao);
          FormVisao.Showmodal;
end;

procedure TFormNucleo.Image50Click(Sender: TObject);
begin
          Application.CreateForm(TFormClonaCenario, FormClonaCenario);
          FormClonaCenario.showmodal;

end;

procedure TFormNucleo.Image51Click(Sender: TObject);
begin
          Application.CreateForm(TFormCenario, FormCenario);
          FormCenario.showmodal;

end;

procedure TFormNucleo.Image52Click(Sender: TObject);
begin
          Application.CreateForm(TFormCancelaLiberacao, FormCancelaLiberacao);
          FormCancelaLiberacao.showmodal;

end;

procedure TFormNucleo.Image53Click(Sender: TObject);
begin
          Application.CreateForm(TFormRelFolgas, FormRelFolgas);
          FormRelFolgas.showmodal;

end;

procedure TFormNucleo.Image54Click(Sender: TObject);
begin
          Application.CreateForm(TFormCasamento,FormCasamento);
          FormCasamento.Showmodal;
end;

procedure TFormNucleo.Image55Click(Sender: TObject);
begin
          Application.CreateForm(TFormConflitoTripulacao, FormConflitoTripulacao);
          FormConflitoTripulacao.showmodal;
end;

procedure TFormNucleo.Image56Click(Sender: TObject);
begin
          Application.CreateForm(TFormAjusteMov,FormAjusteMov);
          FormAjusteMov.showmodal;
end;

procedure TFormNucleo.Image57Click(Sender: TObject);
begin
          memo1.Visible:=true;
end;

procedure TFormNucleo.Image58Click(Sender: TObject);
begin
          Application.CreateForm(TFormNotaVersao,FormNotaVersao);
          FormNotaVersao.showmodal;
end;

procedure TFormNucleo.Image59Click(Sender: TObject);
begin
          Application.CreateForm(TFormAjustaCenario, FormAjustaCenario);
          FormAjustaCenario.showmodal;
end;

procedure TFormNucleo.Image5Click(Sender: TObject);
begin
          Application.Terminate;
end;

procedure TFormNucleo.Image60Click(Sender: TObject);
begin
          Application.CreateForm(TFormImprimeEscInd,FormImprimeEscInd);
          FormImprimeEscInd.showmodal;
end;

procedure TFormNucleo.Image61Click(Sender: TObject);
begin
          Application.CreateForm(TFormEditaEscalaIndividual,FormEditaEscalaIndividual);
          FormEditaEscalaIndividual.Showmodal;
end;

procedure TFormNucleo.Image62Click(Sender: TObject);
begin
           With Relatorio.QrNCF_IJ do
                begin
                        close;
                         ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                end;
           With Relatorio.QrNCF_FJ do
                begin
                        close;
                         ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                end;
           With Relatorio.QrNCF_RJ do
                begin
                        close;
                         ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                end;
           With Relatorio.QrNCF_PJ do
                begin
                        close;
                         ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                end;
           With Relatorio.QrNCF_Ali do
                begin
                        close;
                         ParamByName('coligada').AsString:=Pai.QrColigada.FieldByName('cod_coligada').AsString;
                end;
          Relatorio.FtInconformidades.ShowReport();
end;

procedure TFormNucleo.Image6Click(Sender: TObject);
begin
          Application.CreateForm(TFormHorarios,FormHorarios);
          FormHorarios.showmodal;
end;

procedure TFormNucleo.Image7Click(Sender: TObject);
begin
          Application.CreateForm(TFormSiglas,FormSiglas);
          FormSiglas.showmodal;
end;

procedure TFormNucleo.Image8Click(Sender: TObject);
begin
          Application.CreateForm(TFormTarefas, FormTarefas);
          FormTarefas.ShowModal;
end;

procedure TFormNucleo.Image9Click(Sender: TObject);
begin
          Application.CreateForm(TFormDestinos,FormDestinos);
          FormDestinos.showmodal;
end;

procedure TFormNucleo.SpeedButton1Click(Sender: TObject);
begin
          Application.CreateForm(TFormCriaSiglas,FormCriaSiglas);
          FormCriaSiglas.Showmodal;
end;

procedure TFormNucleo.TabPontoShow(Sender: TObject);
begin
           ValidaUsuario;
           if Vlevel < 3 then
                 begin
                        MessageBox(0, 'Sua classifica��o de usu�rio n�o permite ingresso nesta pagina!', 'Acesso negado', MB_ICONWARNING or MB_OK);
                        TabSheet1.Show;
                 end;
end;

procedure TFormNucleo.TabSheet1Show(Sender: TObject);
begin
           ValidaUsuario;
           if Vlevel < 10 then
                 begin
                        MessageBox(0, 'Sua classifica��o de usu�rio n�o permite ingresso nesta pagina!', 'Acesso negado', MB_ICONWARNING or MB_OK);
                        TabSheet1.Show;
                 end;
end;

procedure TFormNucleo.TabSheet5Show(Sender: TObject);
begin
           ValidaUsuario;
           if Vlevel < 30 then
                 begin
                        MessageBox(0, 'Sua classifica��o de usu�rio n�o permite ingresso nesta pagina!', 'Acesso negado', MB_ICONWARNING or MB_OK);
                        TabSheet1.Show;
                 end;
end;

Procedure TFormNucleo.ValidaUsuario;
begin
          With Pai.QrUsuarios do
              begin
                   Vlevel:=FieldByName('USU_LEVELWORK').AsInteger;
              end;
end;

end.
