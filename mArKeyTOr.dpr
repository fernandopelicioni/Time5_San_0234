program mArKeyTOr;

uses
  Forms,
  TelaEntrada in 'TelaEntrada.pas' {FormEntrada},
  telaveiculo in 'telaveiculo.pas' {formveiculo},
  TELAFUNCIONARIO in 'TELAFUNCIONARIO.pas' {FORMFUNCIONARIO},
  TelaLogaUsuario in 'TelaLogaUsuario.pas' {FormUsuario},
  telaCadastraUsuario in 'telaCadastraUsuario.pas' {FormCadastraUsuario},
  TelaLancamento in 'TelaLancamento.pas' {FormLancamento},
  TELAFUNCAO in 'TELAFUNCAO.pas' {FormFuncao},
  TelaModule in 'TelaModule.pas' {Module: TDataModule},
  TelaStatus in 'TelaStatus.pas' {FormStatus},
  TelaConsulta in 'TelaConsulta.pas' {FormConsultaExternos},
  notadeversao in 'notadeversao.pas' {FmNovaVersao},
  TelaLanca2 in 'TelaLanca2.pas' {FormLanca2},
  TelaRelatorioInterno in 'TelaRelatorioInterno.pas' {FormRelatorioInterno},
  TelaDados in 'TelaDados.pas' {FormDados},
  TelaConsultaInterno in 'TelaConsultaInterno.pas' {FormConsultaInterno},
  telaDiretriz in 'telaDiretriz.pas' {FormDiretriz},
  TelaFeriado in 'TelaFeriado.pas' {FormFeriado},
  telaemrpesa in 'telaemrpesa.pas' {formEmpresa},
  TelaProventos in 'TelaProventos.pas' {FormProventos},
  telaAfastar in 'telaAfastar.pas' {FormAfastar},
  TelaConsistenciaInterno in 'TelaConsistenciaInterno.pas' {FormConsistenciaInterno},
  telaChamaConsistencia in 'telaChamaConsistencia.pas' {FormchamaConsistencia},
  TelaLancaBSE in 'TelaLancaBSE.pas' {FormLancaBSE},
  TelaRelatorioExterno in 'TelaRelatorioExterno.pas' {FormRelatorioExterno},
  TelaFeriadoExterno in 'TelaFeriadoExterno.pas' {FormFeriadoexterno},
  TelaChamaDuplicidade in 'TelaChamaDuplicidade.pas' {FormDuplicidade},
  TelaRelatorioExternoDuplicidade in 'TelaRelatorioExternoDuplicidade.pas' {FormRelatorioExternoDuplicidade},
  TelaEventosExportacao in 'TelaEventosExportacao.pas' {FormEventosExportacao},
  TelaAberturaPeriodo in 'TelaAberturaPeriodo.pas' {FormAberturaperiodo},
  UnitVisualiza in 'UnitVisualiza.pas' {FormVisualiza};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Marker - Marcador Eleltrônico de Ponto';
  Application.CreateForm(TFormUsuario, FormUsuario);
  Application.CreateForm(TFormEntrada, FormEntrada);
  Application.CreateForm(TModule, Module);
  Application.CreateForm(TFormStatus, FormStatus);
  Application.CreateForm(TFormDados, FormDados);
  Application.CreateForm(TFormRelatorioInterno, FormRelatorioInterno);
  Application.CreateForm(TformEmpresa, formEmpresa);
  Application.CreateForm(TFormProventos, FormProventos);
  Application.CreateForm(TFormDiretriz, FormDiretriz);
  Application.CreateForm(TFormFeriado, FormFeriado);
  Application.CreateForm(TFormRelatorioExterno, FormRelatorioExterno);
  Application.CreateForm(TFormFeriadoexterno, FormFeriadoexterno);
  Application.CreateForm(TFormAberturaperiodo, FormAberturaperiodo);
  Application.Run;
end.
