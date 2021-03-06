program Clock;

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
  UnitLancaTabelaHorarios in 'UnitLancaTabelaHorarios.pas' {FormEscalaTabelasHorarios},
  UnitItinerarios in 'UnitItinerarios.pas' {FormItinerarios},
  UnitAssociaLinha in 'UnitAssociaLinha.pas' {FormAssociaLinhas},
  UnitTabelasVeiculos in 'UnitTabelasVeiculos.pas' {FormTabelasVeiculos},
  UnitGerarAssociacao in 'UnitGerarAssociacao.pas' {FormGerarAssociacao},
  UnitGeraArquivoAssociacao in 'UnitGeraArquivoAssociacao.pas' {FormGeraArquivoAssociacao},
  UnitTabelasDiarias in 'UnitTabelasDiarias.pas' {FormTabelasDiarias},
  UnitHorariosEdicaoRapida in 'UnitHorariosEdicaoRapida.pas' {FormHorariosEdicaoRapida},
  UnitRelatorio in 'UnitRelatorio.pas' {Relatorio: TDataModule},
  UnitAcompanhamento in 'UnitAcompanhamento.pas' {FormAcompanhamento},
  UnitGeraCartaoBse in 'UnitGeraCartaoBse.pas' {FormGeraCartaoBSE},
  UnitRelogio in 'UnitRelogio.pas' {FormRelogio},
  UnitRelogioLogin in 'UnitRelogioLogin.pas' {FormRelogioLogin},
  UnitRelogioRegistra in 'UnitRelogioRegistra.pas' {FormRelogioRegistra},
  UnitAlteraOso in 'UnitAlteraOso.pas' {FormAlteraOSOLote};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Clock - Controle Digital de Ponto';
  Application.CreateForm(TPai, Pai);
  Application.CreateForm(TFormIniciaSistema, FormIniciaSistema);
  Application.CreateForm(TRelatorio, Relatorio);
  Application.CreateForm(TFormAcompanhamento, FormAcompanhamento);
  TTraducao.ChangeValues;
  Application.Run;
end.
