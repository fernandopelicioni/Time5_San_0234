object FormStatus: TFormStatus
  Left = 307
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Aloca'#231#227'o de Colaboradores'
  ClientHeight = 254
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMinimized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object s: TLabel
    Left = 24
    Top = 240
    Width = 3
    Height = 15
    Caption = #39
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 34
    Top = 8
    Width = 281
    Height = 79
    Caption = ' Colaborador '
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 13
      Width = 63
      Height = 15
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 156
      Top = 13
      Width = 55
      Height = 15
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object datai: TCJVEditDate
      Left = 32
      Top = 28
      Width = 92
      Height = 27
      AutoSelect = False
      Color = clMoneyGreen
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '10/12/2009'
      OnKeyPress = dataiKeyPress
      Data = 40157.000000000000000000
    end
    object Dataf: TCJVEditDate
      Left = 156
      Top = 28
      Width = 92
      Height = 27
      AutoSelect = False
      Color = clMoneyGreen
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '10/12/2009'
      OnKeyPress = DatafKeyPress
      Data = 40157.000000000000000000
    end
    object CheckBox1: TCheckBox
      Left = 157
      Top = 57
      Width = 97
      Height = 17
      Caption = 'Fixar data'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsItalic]
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 91
    Width = 313
    Height = 90
    Caption = '  Detalhamento  '
    Color = clScrollBar
    Font.Charset = ANSI_CHARSET
    Font.Color = 10485760
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object DBText1: TDBText
      Left = 65
      Top = 20
      Width = 240
      Height = 17
      DataField = 'Nome'
      DataSource = Module.DtFuncionario
    end
    object EditMatricula: TMaskEdit
      Left = 7
      Top = 16
      Width = 51
      Height = 27
      EditMask = '0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = 10485760
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '    '
      OnKeyPress = EditMatriculaKeyPress
    end
    object DbComboBox1: TComboBox
      Left = 88
      Top = 53
      Width = 145
      Height = 23
      DropDownCount = 1
      ItemHeight = 15
      TabOrder = 1
      Text = 'F - Folga'
      OnKeyPress = DBComboBox1KeyPress
      Items.Strings = (
        'F - Folga'
        'T - Falta'
        'S - Suspens'#227'o'
        'A - Atestado'
        'C - Licen'#231'a'
        'B - Abonado'
        'I - Inativo'
        'O - Outros')
    end
  end
  object btsalva: TBitBtn
    Left = 83
    Top = 185
    Width = 85
    Height = 48
    Enabled = False
    TabOrder = 2
    OnClick = btsalvaClick
    Glyph.Data = {
      C6060000424DC60600000000000036000000280000001B000000140000000100
      18000000000090060000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7FBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FF0000FF
      0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      FF0000FF00000000000000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF000000000000FF0000FF0000FF0000FF0000BFBFBFBFBFBFFF
      0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF0000FF0000FF0000000000
      7F7F7F7F7F7FBFBFBFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000000000
      00FF0000FF0000FF0000FF0000BFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFFF0000FF0000FF00000000007F7F7F7F7F7FBFBFBFBFBFBF
      7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF000000000000FF0000FF0000FF0000FF00
      00BFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF0000FF
      0000FF00000000007F7F7F7F7F7FBFBFBF7F7F7F00007F7F7F7FBFBFBFBFBFBF
      BFBFBF000000000000FF0000FF0000FF0000FF0000BFBFBFBFBFBFFF0000FF00
      00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF0000FF0000FF00000000007F7F7F7F
      7F7FBFBFBF7F7F7F00007F7F7F7F7F7F7FBFBFBFBFBFBF000000000000FF0000
      FF0000FF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFFF0000FF0000FF00000000007F7F7F7F7F7FBFBFBF7F7F7F00007F00
      007F7F7F7F7F7F7FBFBFBF000000000000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      000000007F7F7F00007F00007F00007F00007F0000FF00007F7F7F7F7F7F7F00
      0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF00000000007F7F7F00007F0000
      FF0000FF0000FF0000FF0000FF00007F7F7F7F000000000000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF00000000007F7F7F00007F0000FF0000FFFF00FFFF00FF0000
      FF0000FF00007F000000000000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000000000
      7F7F7F00007F0000FF0000FF0000FF0000FF0000FF00007F00007F0000000000
      00FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FF00000000007F7F7F00007F0000FF0000FF
      0000FF0000FF00007F00007FBFBFBF000000000000FF0000FF0000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FF00000000007F7F7F00007F00007F00007F00007F0000FF00007FBFBFBF
      BFBFBF000000000000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00000000007F7F7F7F
      7F7FBFBFBFBFBFBF00007F00007FBFBFBFBFBFBFBFBFBF000000000000FF0000
      FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FF00000000007F7F7F7F7F7FBFBFBFBFBFBF00007FBF
      BFBFBFBFBFBFBFBFBFBFBF000000000000FF0000FF0000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00
      000000007F7F7FBFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBFBFBF00
      0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000000000000000BFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF000000}
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 185
    Width = 85
    Height = 48
    Hint = 'Cancela ou Insere novo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF035C07035C07035C07035C07FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF025C04FFFFFF058E0D058F0D058F0D035C07FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025C04FFFFFF058E0D058F
      0D058F0D035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025C04
      FFFFFF058E0D058F0D058F0D035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF025C05FFFFFF058E0D058F0D058F0D035C07FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF035D05FFFFFF06900F058F0D058F0D035C07FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D05FFFFFF0A96160792
      11079211035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF035C07035C07035C07035C07035C07035C07035D05
      FFFFFF0E9D1D0B98170B9817035D05035C07035C07035C07035C07035C07035C
      07FF00FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF38D36433CC5A2DC75229
      C14B25BD4420B63B16A72B13A1240F9D1E0C97180D9C1B0A9716079211058F0D
      058F0D058F0D058F0D035C07FF00FFFF00FFFF00FFFF00FF035C07FFFFFF38D3
      6433CC5A2DC75229C14B25BD4420B63B1CAC3318A72C14A326109E200D9C1B0A
      9716079211058F0D058F0D058F0D058F0D035C07FF00FFFF00FFFF00FFFF00FF
      035C07FFFFFF3CD76B37CF6233CA5A2DC5522AC04B25BA4321B53C1CAF3518AA
      2F15A42811A0220F9C1D0C9718089212068E0E058C0D058E0D035C07FF00FFFF
      00FFFF00FFFF00FF035C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF22B53E1EB0371AAC31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF035C07FF00FFFF00FFFF00FFFF00FFFF00FF035C07035C07035C07035C0703
      5C07035C07035D05FFFFFF28BD4824BA4124BA41035D05035C07035C07035C07
      035C07035C07035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF2DC6532AC24D2AC24D035C07FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF34CC5C30C9
      5630C956035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C07
      FFFFFF3AD36736D06036D060035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF035C07FFFFFF3FD96F3DD86B43E177035C07FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF40DA7041DD7343E177035C07FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFFFFFFFFFFFF
      FFFFFFFF035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      035C07035C07035C07035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object XPManifest1: TXPManifest
    Left = 304
    Top = 216
  end
  object StandardColorMap1: TStandardColorMap
    HighlightColor = clBtnHighlight
    UnusedColor = 15988985
    FrameTopLeftOuter = clActiveCaption
    FrameBottomRightInner = clInactiveCaption
    SelectedColor = clAqua
    Left = 296
    Top = 168
  end
  object DataSource1: TDataSource
    Left = 24
    Top = 192
  end
  object qrdiario: TTable
    DatabaseName = 'mArKeYtOR'
    TableName = 'MK_Diario.DB'
    Left = 32
    Top = 216
    object qrdiarioMatricula: TStringField
      FieldName = 'Matricula'
      Size = 4
    end
    object qrdiarioSequencial: TAutoIncField
      FieldName = 'Sequencial'
      ReadOnly = True
    end
    object qrdiarioDIA_MES_ANO: TDateField
      FieldName = 'DIA_MES_ANO'
    end
    object qrdiarioVEICULO_1: TStringField
      FieldName = 'VEICULO_1'
      Size = 5
    end
    object qrdiarioENTRADA_1: TStringField
      FieldName = 'ENTRADA_1'
      Size = 5
    end
    object qrdiarioENTRADA_2: TStringField
      FieldName = 'ENTRADA_2'
      Size = 5
    end
    object qrdiarioENTRADA_3: TStringField
      FieldName = 'ENTRADA_3'
      Size = 5
    end
    object qrdiarioENTRADA_4: TStringField
      FieldName = 'ENTRADA_4'
      Size = 5
    end
    object qrdiarioSAIDA_1: TStringField
      FieldName = 'SAIDA_1'
      Size = 5
    end
    object qrdiarioSAIDA_2: TStringField
      FieldName = 'SAIDA_2'
      Size = 5
    end
    object qrdiarioSAIDA_3: TStringField
      FieldName = 'SAIDA_3'
      Size = 5
    end
    object qrdiarioSAIDA_4: TStringField
      FieldName = 'SAIDA_4'
      Size = 5
    end
    object qrdiarioVEICULO_2: TStringField
      FieldName = 'VEICULO_2'
      Size = 5
    end
    object qrdiarioVEICULO_3: TStringField
      FieldName = 'VEICULO_3'
      Size = 5
    end
    object qrdiarioVEICULO_4: TStringField
      FieldName = 'VEICULO_4'
      Size = 5
    end
    object qrdiarioTOTAL_1: TStringField
      FieldName = 'TOTAL_1'
      Size = 6
    end
    object qrdiarioTOTAL_2: TStringField
      FieldName = 'TOTAL_2'
      Size = 6
    end
    object qrdiarioTOTAL_3: TStringField
      FieldName = 'TOTAL_3'
      Size = 6
    end
    object qrdiarioTOTAL_4: TStringField
      FieldName = 'TOTAL_4'
      Size = 6
    end
    object qrdiarioTOTAL_GERAL: TStringField
      FieldName = 'TOTAL_GERAL'
      Size = 6
    end
    object qrdiarioTIPO_DIA: TStringField
      FieldName = 'TIPO_DIA'
      Size = 1
    end
    object qrdiarioINTERVALO: TStringField
      FieldName = 'INTERVALO'
      Size = 5
    end
  end
end