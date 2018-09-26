object FormDiretriz: TFormDiretriz
  Left = 233
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Diretrizes do Sistema'
  ClientHeight = 453
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 453
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 7
      Width = 467
      Height = 76
      Caption = '  Horas Extras '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 80
        Height = 15
        Caption = 'Inicio Per'#237'odo:'
      end
      object Label2: TLabel
        Left = 112
        Top = 16
        Width = 70
        Height = 15
        Caption = 'Seg. Semana:'
      end
      object Label3: TLabel
        Left = 199
        Top = 16
        Width = 69
        Height = 15
        Caption = 'Ter. Semana:'
      end
      object Label4: TLabel
        Left = 286
        Top = 16
        Width = 75
        Height = 15
        Caption = 'Qua. Semana:'
      end
      object Label5: TLabel
        Left = 374
        Top = 16
        Width = 72
        Height = 15
        Caption = 'Qui. Semana:'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 85
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'COM_PRIMEIRA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 105
        Top = 32
        Width = 85
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'COM_SEGUNDA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 193
        Top = 32
        Width = 85
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'COM_TERCEIRA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 281
        Top = 32
        Width = 85
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'COM_QUARTA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 369
        Top = 32
        Width = 85
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'COM_QUINTA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 85
      Width = 468
      Height = 76
      Caption = '  Codigo de Proventos e Descontos  '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object Label6: TLabel
        Left = 16
        Top = 19
        Width = 45
        Height = 15
        Caption = 'Feriado:'
      end
      object Label7: TLabel
        Left = 80
        Top = 19
        Width = 31
        Height = 15
        Caption = 'Falta:'
      end
      object Label12: TLabel
        Left = 127
        Top = 19
        Width = 62
        Height = 15
        Caption = 'Suspens'#227'o:'
      end
      object Label13: TLabel
        Left = 193
        Top = 19
        Width = 58
        Height = 15
        Caption = 'Hora Extra'
      end
      object Label14: TLabel
        Left = 321
        Top = 19
        Width = 65
        Height = 15
        Caption = 'Ad. Noturno'
      end
      object Label15: TLabel
        Left = 257
        Top = 19
        Width = 60
        Height = 15
        Caption = 'Refl. H. Ext.'
      end
      object DBEdit6: TDBEdit
        Left = 11
        Top = 36
        Width = 55
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'FERIADO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 70
        Top = 36
        Width = 55
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'FALTA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 130
        Top = 36
        Width = 55
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'SUSPENSAO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 193
        Top = 36
        Width = 55
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'HORAEXTRA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 325
        Top = 36
        Width = 55
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'ADICIONAL'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit13: TDBEdit
        Left = 261
        Top = 36
        Width = 55
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'REFLEXOEXTRA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 161
      Width = 469
      Height = 86
      Caption = '  Adcional Noturno  '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object Label8: TLabel
        Left = 16
        Top = 23
        Width = 180
        Height = 15
        Caption = 'Hora Inicio p/ Adcional Noturno:'
      end
      object Label9: TLabel
        Left = 16
        Top = 53
        Width = 179
        Height = 15
        Caption = 'Hora Final  p/ Adcional Noturno:'
      end
      object Label10: TLabel
        Left = 260
        Top = 24
        Width = 33
        Height = 15
        Caption = 'Horas'
      end
      object Label11: TLabel
        Left = 261
        Top = 53
        Width = 33
        Height = 15
        Caption = 'Horas'
      end
      object DBEdit7: TDBEdit
        Left = 202
        Top = 17
        Width = 55
        Height = 27
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'INICIO_ADCIONAL'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 202
        Top = 49
        Width = 55
        Height = 27
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'FIM_ADCIONAL'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object BitBtn1: TBitBtn
      Left = 120
      Top = 400
      Width = 105
      Height = 48
      Caption = 'Editar'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBF0000
        00000000BFBFBF00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF000000000000BFBFBF000000000000BFBFBF0000000000
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBF7F
        7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000007F7F7F
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBF00000000007F000000BFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBF00000000007F000000BFBFBFBFBFBFBFBFBF000000FF
        FFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00000000007F000000BFBFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000007F0000
        00FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000007F000000BFBFBFBFBFBFBFBF
        BFBFBFBF000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00000000007F000000BFBFBFBFBFBF000000007F7F000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBF000000
        00007F000000000000000000007F7F007F7F00000000BFBFBF00000000000000
        0000000000FFFFFF000000BFBFBFBFBFBFBFBFBF000000000000007F7F007F7F
        000000000000BFBFBF00BFBFBF000000000000000000000000000000BFBFBFBF
        BFBFBFBFBFBFBFBF000000007F7F007F7F007F7F000000BFBFBFBFBFBF00BFBF
        BF0000007F7F7F7F7F7F000000000000BFBFBFBFBFBFBFBFBF00000000000000
        7F7F007F7F007F7F000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBF7F7F7F0000
        00000000BFBFBF000000000000007F7F007F7F000000000000000000BFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBF0000
        00000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00}
    end
    object BitBtn2: TBitBtn
      Left = 240
      Top = 400
      Width = 105
      Height = 48
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        A6030000424DA60300000000000036000000280000000D000000160000000100
        18000000000070030000C30E0000C30E00000000000000000000BFBFBFFF0000
        FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000BFBF
        BF00BFBFBFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF0000
        FF0000FF0000BFBFBF00BFBFBFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFF0000FF0000FF0000BFBFBF00BFBFBFFF0000FF0000FF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000BFBFBF00BFBFBFFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000BFBF
        BF00BFBFBFFF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0000BFBFBF00BFBFBFFF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000BFBFBF00BFBFBFFF0000FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000BFBFBF00BFBFBFFF0000
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000BFBF
        BF00BFBFBFFF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0000BFBFBF00BFBFBFFF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF0000FFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF0000FF00
        00FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF0000FFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00
        00FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00}
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 8
      Top = 249
      Width = 469
      Height = 47
      Caption = '  Intervalo  '
      Columns = 2
      Ctl3D = False
      DataField = 'INTERVALO_TIPO'
      DataSource = DataSource1
      Items.Strings = (
        'D - Lan'#231'amento Direto'
        'C - Calcular p/ Sistema')
      ParentCtl3D = False
      TabOrder = 5
      Values.Strings = (
        'D'
        'C')
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 297
      Width = 469
      Height = 86
      Caption = '  Per'#237'odo dos Lan'#231'amentos  '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      object Label18: TLabel
        Left = 116
        Top = 24
        Width = 81
        Height = 15
        Caption = 'Inicio Periodo:'
      end
      object Label19: TLabel
        Left = 237
        Top = 26
        Width = 77
        Height = 15
        Caption = 'Final Periodo:'
      end
      object DBEdit14: TDBEdit
        Left = 114
        Top = 41
        Width = 103
        Height = 27
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'PERIODO_INICIAL'
        DataSource = DataSource1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 234
        Top = 41
        Width = 103
        Height = 27
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelKind = bkSoft
        Color = clWhite
        DataField = 'PERIODO_FINAL'
        DataSource = DataSource1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 352
        Top = 40
        Width = 97
        Height = 33
        Caption = 'Mudar per'#237'odo'
        Enabled = False
        TabOrder = 2
        OnClick = BitBtn3Click
      end
    end
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'mArKeYtOR'
    TableName = 'DIRETRIZ.DB'
    Left = 440
    Top = 192
    object Table1Sequencial: TAutoIncField
      FieldName = 'Sequencial'
      ReadOnly = True
    end
    object Table1JORNADA_MAXIMA: TStringField
      FieldName = 'JORNADA_MAXIMA'
      EditMask = '!90:00;1;_'
      Size = 5
    end
    object Table1INICIO_ADCIONAL: TStringField
      FieldName = 'INICIO_ADCIONAL'
      Size = 5
    end
    object Table1FIM_ADCIONAL: TStringField
      FieldName = 'FIM_ADCIONAL'
      Size = 5
    end
    object Table1INTERVALO_TIPO: TStringField
      FieldName = 'INTERVALO_TIPO'
      Size = 1
    end
    object Table1COM_PRIMEIRA: TDateField
      FieldName = 'COM_PRIMEIRA'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1COM_SEGUNDA: TDateField
      FieldName = 'COM_SEGUNDA'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1COM_TERCEIRA: TDateField
      FieldName = 'COM_TERCEIRA'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1COM_QUARTA: TDateField
      FieldName = 'COM_QUARTA'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1COM_QUINTA: TDateField
      FieldName = 'COM_QUINTA'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1PERIODO_INICIAL: TDateField
      FieldName = 'PERIODO_INICIAL'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1PERIODO_FINAL: TDateField
      FieldName = 'PERIODO_FINAL'
      EditMask = '!00/00/0000;1;_'
    end
    object Table1FERIADO: TStringField
      FieldName = 'FERIADO'
      Size = 3
    end
    object Table1FALTA: TStringField
      FieldName = 'FALTA'
      Size = 3
    end
    object Table1SUSPENSAO: TStringField
      FieldName = 'SUSPENSAO'
      Size = 3
    end
    object Table1HORAEXTRA: TStringField
      FieldName = 'HORAEXTRA'
      Size = 3
    end
    object Table1REFLEXOEXTRA: TStringField
      FieldName = 'REFLEXOEXTRA'
      Size = 3
    end
    object Table1ADICIONAL: TStringField
      FieldName = 'ADICIONAL'
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 416
    Top = 168
  end
  object XPManifest1: TXPManifest
    Left = 408
    Top = 328
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 408
    Top = 125
  end
end
