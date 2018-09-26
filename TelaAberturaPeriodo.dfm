object FormAberturaperiodo: TFormAberturaperiodo
  Left = 365
  Top = 227
  Width = 365
  Height = 390
  BorderIcons = [biSystemMenu]
  Caption = 'Fechamento / Abertura de per'#237'odo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object JvTransparentButton1: TJvTransparentButton
    Left = 8
    Top = 264
    Width = 105
    Height = 57
    AllowAllUp = True
    Caption = 'Copiar'
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -13
    HotTrackFont.Name = 'Calibri'
    HotTrackFont.Style = []
    OnClick = JvTransparentButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 337
    Height = 241
    Caption = '  Dados  '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 184
      Width = 45
      Height = 15
      Caption = 'Destino:'
    end
    object Edit1: TEdit
      Left = 16
      Top = 200
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object DataInicial: TDateTimePicker
      Left = 16
      Top = 128
      Width = 105
      Height = 27
      Date = 40204.414691655090000000
      Time = 40204.414691655090000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DataFinal: TDateTimePicker
      Left = 144
      Top = 128
      Width = 113
      Height = 27
      Date = 40204.414691655090000000
      Time = 40204.414691655090000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 56
      Top = 24
      Width = 193
      Height = 25
      Caption = 'Fechar/Abrir Periodo'
      TabOrder = 3
    end
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 424
    Top = 32
  end
  object XPManifest1: TXPManifest
    Left = 392
    Top = 40
  end
  object Query1: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'select * from Diretriz;')
    Left = 280
    Top = 88
    object Query1Sequencial: TIntegerField
      FieldName = 'Sequencial'
      Origin = 'MARKEYTOR."Diretriz.DB".Sequencial'
    end
    object Query1COM_PRIMEIRA: TDateField
      FieldName = 'COM_PRIMEIRA'
      Origin = 'MARKEYTOR."Diretriz.DB".COM_PRIMEIRA'
    end
    object Query1COM_SEGUNDA: TDateField
      FieldName = 'COM_SEGUNDA'
      Origin = 'MARKEYTOR."Diretriz.DB".COM_SEGUNDA'
    end
    object Query1COM_TERCEIRA: TDateField
      FieldName = 'COM_TERCEIRA'
      Origin = 'MARKEYTOR."Diretriz.DB".COM_TERCEIRA'
    end
    object Query1COM_QUARTA: TDateField
      FieldName = 'COM_QUARTA'
      Origin = 'MARKEYTOR."Diretriz.DB".COM_QUARTA'
    end
    object Query1COM_QUINTA: TDateField
      FieldName = 'COM_QUINTA'
      Origin = 'MARKEYTOR."Diretriz.DB".COM_QUINTA'
    end
    object Query1JORNADA_MAXIMA: TStringField
      FieldName = 'JORNADA_MAXIMA'
      Origin = 'MARKEYTOR."Diretriz.DB".JORNADA_MAXIMA'
      Size = 5
    end
    object Query1INICIO_ADCIONAL: TStringField
      FieldName = 'INICIO_ADCIONAL'
      Origin = 'MARKEYTOR."Diretriz.DB".INICIO_ADCIONAL'
      Size = 5
    end
    object Query1FIM_ADCIONAL: TStringField
      FieldName = 'FIM_ADCIONAL'
      Origin = 'MARKEYTOR."Diretriz.DB".FIM_ADCIONAL'
      Size = 5
    end
    object Query1INTERVALO_TIPO: TStringField
      FieldName = 'INTERVALO_TIPO'
      Origin = 'MARKEYTOR."Diretriz.DB".INTERVALO_TIPO'
      Size = 1
    end
    object Query1PERIODO_INICIAL: TDateField
      FieldName = 'PERIODO_INICIAL'
      Origin = 'MARKEYTOR."Diretriz.DB".PERIODO_INICIAL'
    end
    object Query1PERIODO_FINAL: TDateField
      FieldName = 'PERIODO_FINAL'
      Origin = 'MARKEYTOR."Diretriz.DB".PERIODO_FINAL'
    end
    object Query1FERIADO: TStringField
      FieldName = 'FERIADO'
      Origin = 'MARKEYTOR."Diretriz.DB".FERIADO'
      Size = 3
    end
    object Query1FALTA: TStringField
      FieldName = 'FALTA'
      Origin = 'MARKEYTOR."Diretriz.DB".FALTA'
      Size = 3
    end
    object Query1SUSPENSAO: TStringField
      FieldName = 'SUSPENSAO'
      Origin = 'MARKEYTOR."Diretriz.DB".SUSPENSAO'
      Size = 3
    end
    object Query1HORAEXTRA: TStringField
      FieldName = 'HORAEXTRA'
      Origin = 'MARKEYTOR."Diretriz.DB".HORAEXTRA'
      Size = 3
    end
    object Query1REFLEXOEXTRA: TStringField
      FieldName = 'REFLEXOEXTRA'
      Origin = 'MARKEYTOR."Diretriz.DB".REFLEXOEXTRA'
      Size = 3
    end
    object Query1ADICIONAL: TStringField
      FieldName = 'ADICIONAL'
      Origin = 'MARKEYTOR."Diretriz.DB".ADICIONAL'
      Size = 3
    end
    object Query1Limite_horas: TStringField
      FieldName = 'Limite_horas'
      Origin = 'MARKEYTOR."Diretriz.DB".Limite_horas'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 136
  end
  object Table1: TTable
    DatabaseName = 'mArKeYtOR'
    TableName = 'MM_Diario.DB'
    Left = 296
    Top = 48
  end
end
