unit TelaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnColorMaps, ActnMan, XPMan, Menus, ComCtrls, CustomizeDlg,
  StdCtrls, jpeg, ExtCtrls, ActnMenus, ToolWin, ActnCtrls, Buttons,
  CJVScrollLabel;

type
  TFormEntrada = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentaes1: TMenuItem;
    Diretivas1: TMenuItem;
    XPManifest1: TXPManifest;
    CadastrodeUsurios1: TMenuItem;
    Fechar1: TMenuItem;
    Cadastros2: TMenuItem;
    Linhas1: TMenuItem;
    Funcionrios1: TMenuItem;
    Usurios1: TMenuItem;
    CustomizeDlg1: TCustomizeDlg;
    Movimentar1: TMenuItem;
    Relatrios1: TMenuItem;
    HorasTrabalhadasporOperador1: TMenuItem;
    Consistencias1: TMenuItem;
    PeriododeApurao1: TMenuItem;
    CriarPeriorodeApurao2: TMenuItem;
    ApagarperiododeApurao1: TMenuItem;
    ExportarArquivopIntegrao1: TMenuItem;
    Veculos1: TMenuItem;
    LanarEventosExtras1: TMenuItem;
    ProventoseDescontos1: TMenuItem;
    ConcedeAbonodeFeriado1: TMenuItem;
    CancelarAbono1: TMenuItem;
    ConsulmaRapidadeMovimentos1: TMenuItem;
    ApurarMovimentaesInternos1: TMenuItem;
    ConsultarMovimentaesInternas1: TMenuItem;
    RelgiodePonto1: TMenuItem;
    CartodePontoExternos2: TMenuItem;
    DeterminarFeriado1: TMenuItem;
    CancelarFeriado1: TMenuItem;
    Timer1: TTimer;
    TwilightColorMap1: TTwilightColorMap;
    Empresas1: TMenuItem;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DisponibilidadedeModeObra1: TMenuItem;
    SpeedButton8: TSpeedButton;
    ToolButton1: TToolButton;
    Sobre1: TMenuItem;
    Acompanhamentodeintervalo1: TMenuItem;
    ColaboradorInterno1: TMenuItem;
    ColaboradorExterno1: TMenuItem;
    Duplicidade1: TMenuItem;
    Lanamentosnoperodo1: TMenuItem;
    SpeedButton9: TSpeedButton;
    Image1: TImage;
    Visualizaorapida1: TMenuItem;
    procedure CadastrodeUsurios1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Linhas1Click(Sender: TObject);
    procedure Movimentar1Click(Sender: TObject);
    procedure LanarEventosExtras1Click(Sender: TObject);
    procedure ConsulmaRapidadeMovimentos1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure ApurarMovimentaesInternos1Click(Sender: TObject);
    procedure HorasTrabalhadasporOperador1Click(Sender: TObject);
    procedure ConsultarMovimentaesInternas1Click(Sender: TObject);
    procedure Diretivas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConcedeAbonodeFeriado1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure ExportarArquivopIntegrao1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancelarAbono1Click(Sender: TObject);
    procedure DeterminarFeriado1Click(Sender: TObject);
    procedure CancelarFeriado1Click(Sender: TObject);
    procedure DisponibilidadedeModeObra1Click(Sender: TObject);
    procedure Consistencias1Click(Sender: TObject);
    procedure Acompanhamentodeintervalo1Click(Sender: TObject);
    procedure Duplicidade1Click(Sender: TObject);
    procedure CriarPeriorodeApurao2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Visualizaorapida1Click(Sender: TObject);
  private
    { Private declarations }
  public
  usuario: string;
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

uses telaCadastraUsuario, TelaLogaUsuario, TELAFUNCIONARIO, TELAFUNCAO,
  TelaLancamento, TelaStatus, TelaModule, TelaConsulta, telaveiculo,
  TelaLanca2, TelaDados, TelaConsultaInterno, telaDiretriz, TelaFeriado,
  telaemrpesa, TelaProventos, telaAfastar, TelaConsistenciaInterno,
  telaChamaConsistencia, TelaFeriadoExterno, TelaChamaDuplicidade,
  TelaAberturaPeriodo, UnitVisualiza;

{$R *.dfm}

procedure TFormEntrada.CadastrodeUsurios1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraUsuario, FormCadastraUsuario);
FormCadastraUsuario.show;
end;

procedure TFormEntrada.Fechar1Click(Sender: TObject);
begin
FormUsuario.close;
Close;
end;

procedure TFormEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFREE;
end;

procedure TFormEntrada.Funcionrios1Click(Sender: TObject);
begin
Application.CreateForm(TFormFuncionario, FormFuncionario);
FormFuncionario.show;
end;

procedure TFormEntrada.Usurios1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastrausuario, FormCadastrausuario);
FormCadastraUsuario.show

end;

procedure TFormEntrada.Linhas1Click(Sender: TObject);
begin
Application.CreateForm(TFormFuncao, FormFuncao);
FormFUncao.show;
end;

procedure TFormEntrada.Movimentar1Click(Sender: TObject);
begin
Application.CreateForm(TFormLancamento, Formlancamento);
FormLancamento.show;
end;

procedure TFormEntrada.LanarEventosExtras1Click(Sender: TObject);
begin
FormStatus.show;
end;

procedure TFormEntrada.ConsulmaRapidadeMovimentos1Click(Sender: TObject);
begin
Application.CreateForm(TFormCOnsultaExternos, FormCOnsultaExternos);
FormCOnsultaExternos.Show;
end;

procedure TFormEntrada.Veculos1Click(Sender: TObject);
begin
Application.CreateForm(TFormVeiculo, FormVeiculo);
FormVeiculo.show;

end;

procedure TFormEntrada.ApurarMovimentaesInternos1Click(Sender: TObject);
begin
Application.CreateForm(TFormLanca2, Formlanca2);
Formlanca2.show;

end;

procedure TFormEntrada.HorasTrabalhadasporOperador1Click(Sender: TObject);
begin
FormDados.Show;
end;

procedure TFormEntrada.ConsultarMovimentaesInternas1Click(Sender: TObject);
begin

Application.CreateForm(TFormConsultaInterno, FormConsultaInterno);
FormConsultaInterno.Show;
end;

procedure TFormEntrada.Diretivas1Click(Sender: TObject);
begin
Application.CreateForm(TFormDiretriz, FormDiretriz);
FormDiretriz.show;

end;

procedure TFormEntrada.FormShow(Sender: TObject);
begin
StatusBar1.Panels[0].text:='Usuário Atual : ' + usuario;
StatusBar1.Panels[2].text:=Copy(TimeToStr(now),1,5);
end;

procedure TFormEntrada.ConcedeAbonodeFeriado1Click(Sender: TObject);
begin
FormFeriadoExterno.show;

end;

procedure TFormEntrada.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].text:=Copy(TimeToStr(now),1,5);
end;

procedure TFormEntrada.Empresas1Click(Sender: TObject);
begin
FormEmpresa.show;
end;

procedure TFormEntrada.ExportarArquivopIntegrao1Click(Sender: TObject);
begin
FormProventos.show;
end;

procedure TFormEntrada.FormCreate(Sender: TObject);
begin
//formUsuario.Show;
end;

procedure TFormEntrada.CancelarAbono1Click(Sender: TObject);
begin
FormFeriadoExterno.show;
end;

procedure TFormEntrada.DeterminarFeriado1Click(Sender: TObject);
begin
formFeriado.Show;
end;

procedure TFormEntrada.CancelarFeriado1Click(Sender: TObject);
begin
formFeriado.Show;
end;

procedure TFormEntrada.DisponibilidadedeModeObra1Click(Sender: TObject);
begin
Application.CreateForm(TFormAfastar, FormAfastar);
FormAfastar.Show;

end;

procedure TFormEntrada.Consistencias1Click(Sender: TObject);
begin
Application.CreateForm(TformChamaconsistencia, formChamaconsistencia);
FormChamaConsistencia.caption:='Consistencia de Lançamentos';
FormChamaConsistencia.tiporelatorio:='consistencia';
formChamaconsistencia.Show ;
end;

procedure TFormEntrada.Acompanhamentodeintervalo1Click(Sender: TObject);
begin
Application.CreateForm(TformChamaconsistencia, formChamaconsistencia);
FormChamaConsistencia.caption:='Analise de Intervalo';
FormChamaConsistencia.tiporelatorio:='intervalo';
FormChamaconsistencia.Show ;

end;

procedure TFormEntrada.Duplicidade1Click(Sender: TObject);
begin
Application.CreateForm(TformDuplicidade, formDuplicidade);
FormDuplicidade.show;
End;

procedure TFormEntrada.CriarPeriorodeApurao2Click(Sender: TObject);
begin
FormAberturaperiodo.show;
end;

procedure TFormEntrada.FormActivate(Sender: TObject);
begin
caption:='MarRkEr - Ponto Eletrônico - ' + FormUsuario.versao + '        Valido até : 07/2010 ' + '         -         Operando : ' + Formusuario.Query1Razaosocial.text;
end;

procedure TFormEntrada.Visualizaorapida1Click(Sender: TObject);
begin
Application.CreateForm(TformVisualiza, formVisualiza);
formVisualiza.show;
end;

End.
