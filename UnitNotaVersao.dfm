object FormNotasVersao: TFormNotasVersao
  Left = 0
  Top = 0
  Caption = 'Notas de Vers'#227'o'
  ClientHeight = 548
  ClientWidth = 1057
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 1057
    Height = 548
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Lines.Strings = (
      
        '1.0.2.6 - Inclus'#227'o da op'#231#227'o de ordem de saida para o relatorio d' +
        'e Horas Extras'
      ''
      '1.0.2.5 - Altera'#231#227'o de layout de relatorios diversos'
      ''
      '1.0.2.2 - Relatorio de Emiss'#227'o de Etiquetas para Cart'#227'o de Ponto'
      ''
      '1.0.2.1 - Integra'#231#227'o TOTVS'
      ''
      
        '0.6.4.28 - Visualiza'#231#227'o de Horas devidas por fun'#231#227'o com parametr' +
        'os.'
      ''
      
        '0.6.4.27 - Inclus'#227'o do parametro para intervalos maiores que 01:' +
        '20 nos intervalos e Destaque nos intervalos menores que 01:00 no' +
        ' Espelho de Ponto Modelo 2 '
      '(Opcional)'
      ''
      
        '0.6.4.26 - Aumento tempo de espera por emiss'#227'o de relatorios (TI' +
        'MEOUT)'
      ''
      
        '0.6.4.24 - Relat'#243'rio de Espelho de ponto n'#227'o considerava as sele' +
        #231#245'es de perfil de fun'#231#227'o'
      ''
      
        '0.6.4.23 - Lista de colaboradores para impress'#227'o inclui Demitido' +
        's'
      ''
      
        '0.6.4.22 - Mapa de Utiliza'#231#227'o de M'#227'o de Obra - Grafico que indic' +
        'a vizualmente a disposi'#231#227'o dos colaboradores: Relat'#243'rios > Mapa ' +
        'de Disponibilidade de M'#227'o de '
      'Obra'
      ''
      
        '0.6.4.21 - Criada a integra'#231#227'o com banco de escalas, busca pelo ' +
        'BSE'
      ''
      
        '0.6.4.17 - Atestado - Inclui op'#231#227'o F12 para inclus'#227'o de atestado' +
        ' na tela de lan'#231'amentos'
      ''
      
        '0.6.4.16 - Intervalos - Incluido campo intervao na tela de lan'#231'a' +
        'mento, for'#231'a o intervaloa ser digitado independente da op'#231#227'o do ' +
        'perfil'
      ''
      
        '0.6.4.15 - Duplicidade na apresenta'#231#227'o dos dados - Inner Join n'#227 +
        'o vinculava coligada atual ao lote lido no movimento, apresentan' +
        'do dados duplicados'
      ''
      '0.6.4.14 - Habilita'#231#227'o da Aba ENVELOPE, da tela de consultas'
      ''
      
        '0.6.4.13 - Tela de Lan'#231'amento e consulta apresentava os dados de' +
        'sornedados'
      ''
      
        '0.6.4.12 - Inclus'#227'o de campo de visuliza'#231#227'o de Atestados na tela' +
        ' de lan'#231'amento manual'
      ''
      '0.6.4.11 - Ajuste mecanismo de calculo de Hora extra MOD2'
      ''
      
        '0.6.4.10 - Relatorio - Eventos de exporta'#231#227'o emite relatorio ind' +
        'ividual por colaborador'
      ''
      
        '0.6.4.09 - Relatorio - Consistencia estourava tempo de busca no ' +
        'banco por buscar o campo "Nome" e o correto '#233' "nom_pro"'
      ''
      
        '0.6.4.08 - Relatorio - Incluido o Relatorio: "Espelho Ponto: C/ ' +
        'Comp" - Relat'#243'rio especifico para as fun'#231#245'es que possuem compens' +
        'a'#231#227'o semanal'
      ''
      
        '0.6.4.07 - Relatorios de Hora Devida e Extra com valor total ass' +
        'ociado ao perfil'
      ''
      '0.6.4.06 - Exporta'#231#227'o - Hora extras modelo 2 / compensadas - '
      ''
      
        '0.6.4.05 - Relatorio - Eventos por colaborador - Resumo dos movi' +
        'mentos lan'#231'ados no periodo - Central Relatorios- Eve P/ Colabora' +
        'dor'
      ''
      
        '0.6.4.04 - Relatorio de Indicadores - Estouro de campo causado p' +
        'ela forma do calculo algoritimico, resultando na soma das medias' +
        ', quando deveria somar e '
      'posteriormente usar o operador % (MOD)')
    ParentFont = False
    TabOrder = 0
  end
end
