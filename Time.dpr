program Time;

uses
  Forms,
  UnitEntrada in 'UnitEntrada.pas' {FormEntrada},
  UnitPai in 'UnitPai.pas' {Pai: TDataModule},
  UnitIniciaSistema in 'UnitIniciaSistema.pas' {FormIniciaSistema},
  UnitTipoDia in 'UnitTipoDia.pas' {FormCadastroTipoDia},
  UnitCadastroEventos in 'UnitCadastroEventos.pas' {FormCadastraEventos},
  UnitAtivaPeriodo in 'UnitAtivaPeriodo.pas' {FormAtivaPeriodos},
  UnitProDisp in 'UnitProDisp.pas' {FormProDisp},
  UnitPeriodoCriar in 'UnitPeriodoCriar.pas' {FormPeriodoCriar},
  UnitFuncaoPerfil in 'UnitFuncaoPerfil.pas' {FormFuncaoPerfil},
  UnitDispInclui in 'UnitDispInclui.pas' {FormDispInclui},
  Utraducao in 'Utraducao.pas',
  UnitDispEnvelope in 'UnitDispEnvelope.pas' {FormDispEnvelope},
  UnitLancamento in 'UnitLancamento.pas' {FormLancamento},
  UnitProBusca in 'UnitProBusca.pas' {FormProBusca},
  UnitRelatorio in 'UnitRelatorio.pas' {Relatorio: TDataModule},
  UnitTerminal in 'UnitTerminal.pas' {FormTerminal},
  UnitCadastroFuncoes in 'UnitCadastroFuncoes.pas' {FormCadastroFuncao},
  UnitCentralRelatorio in 'UnitCentralRelatorio.pas' {FormCentralRelatorio},
  UnitCadastraProventos in 'UnitCadastraProventos.pas' {FormCadastraProventos},
  UnitGeraFeriado in 'UnitGeraFeriado.pas' {FormGeraFeriado},
  UnitCriaArquivo in 'UnitCriaArquivo.pas' {FormCriaArquivo},
  UnitNotaVersao in 'UnitNotaVersao.pas' {FormNotasVersao},
  UnitTerminalDetalhes in 'UnitTerminalDetalhes.pas' {FormTerminalDetalhes},
  UnitEnvelope in 'UnitEnvelope.pas' {FormEnvelope},
  UnitCapturaEscala in 'UnitCapturaEscala.pas' {FormCapturaEscala},
  UnitImportaEscala in 'UnitImportaEscala.pas' {FormImportaEscala},
  UnitDialogoImporta in 'UnitDialogoImporta.pas' {FormDialogoImporta},
  UnitIndicadorGrafico in 'UnitIndicadorGrafico.pas' {FormIndicadorGrafico},
  UnitEtiquetaCartao in 'UnitEtiquetaCartao.pas' {FormEtiquetaCartao},
  UtMaoObra in 'Pessoal\UtMaoObra.pas' {FormMaoObra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TIME - Automa��o de ponto';
  Application.CreateForm(TPai, Pai);
  Application.CreateForm(TFormIniciaSistema, FormIniciaSistema);
  Application.CreateForm(TRelatorio, Relatorio);
  Application.CreateForm(TFormNotasVersao, FormNotasVersao);
  TTraducao.ChangeValues;
  Application.Run;
end.
