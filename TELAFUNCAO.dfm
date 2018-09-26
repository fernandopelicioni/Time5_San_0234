object FormFuncao: TFormFuncao
  Left = 295
  Top = 107
  ActiveControl = BitBtn2
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Fun'#231#245'es'
  ClientHeight = 466
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 14
    Top = 3
    Width = 505
    Height = 258
    Align = alCustom
    BiDiMode = bdRightToLeft
    Caption = '  Cadastro de Fun'#231#245'es  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 157
      Top = 37
      Width = 49
      Height = 19
      Caption = 'Codigo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 137
      Top = 65
      Width = 68
      Height = 19
      Caption = 'Descri'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 112
      Top = 94
      Width = 94
      Height = 19
      Caption = 'Carga Horaria:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 69
      Top = 127
      Width = 137
      Height = 19
      Caption = 'Desc. Intervalo Max.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 77
      Top = 157
      Width = 130
      Height = 19
      Caption = 'Limite de horas Dia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 212
      Top = 32
      Width = 63
      Height = 27
      CharCase = ecUpperCase
      Color = 12124063
      DataField = 'CODIGO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 212
      Top = 64
      Width = 244
      Height = 27
      CharCase = ecUpperCase
      Color = 12124063
      DataField = 'DESCRICAO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 212
      Top = 95
      Width = 79
      Height = 27
      CharCase = ecUpperCase
      Color = 12124063
      DataField = 'HORA_DIARIA'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 20
      Top = 203
      Width = 225
      Height = 49
      Caption = ' Efetua Compensa'#231#227'o? '
      Columns = 2
      DataField = 'COMPESA'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        'N'#227'o'
        'Sim')
      ParentFont = False
      TabOrder = 3
      Values.Strings = (
        'False'
        'True')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 252
      Top = 203
      Width = 225
      Height = 49
      Caption = '  Opera em Ve'#237'culo?  '
      Columns = 2
      DataField = 'OPERA_VEICULO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        'N'#227'o'
        'Sim')
      ParentFont = False
      TabOrder = 4
      Values.Strings = (
        'False'
        'True')
    end
    object DBEdit4: TDBEdit
      Left = 212
      Top = 126
      Width = 79
      Height = 27
      CharCase = ecUpperCase
      Color = 12124063
      DataField = 'REDUCAO_INTERVALO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 212
      Top = 156
      Width = 79
      Height = 27
      CharCase = ecUpperCase
      Color = 12124063
      DataField = 'LIMITE_HORAS'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = DBEdit5KeyPress
    end
  end
  object Panel1: TPanel
    Left = 4
    Top = 322
    Width = 517
    Height = 141
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 501
      Height = 128
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taRightJustify
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clHighlight
          Title.Font.Height = -13
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsItalic]
          Width = 50
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o da Fun'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clHighlight
          Title.Font.Height = -13
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsItalic]
          Width = 251
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'HORA_DIARIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          Title.Caption = 'Jornada Di'#225'ria'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clHighlight
          Title.Font.Height = -13
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsItalic]
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'OPERA_VEICULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Oper. Veiculo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clHighlight
          Title.Font.Height = -13
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsItalic]
          Visible = True
        end>
    end
  end
  object btsalva: TBitBtn
    Left = 97
    Top = 271
    Width = 46
    Height = 48
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
    Left = 145
    Top = 271
    Width = 46
    Height = 48
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      FE050000424DFE05000000000000360400002800000015000000130000000100
      080000000000C801000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C0007D654F00B199
      8300F4FCFF000000000000FFFF0000000000D0E5D00000000000DBDBDB000000
      0000F4D8BC0000000000F4D6BA0000000000D0D0D00000000000FFFF00000000
      0000BAB7B70000000000B1B1B1000000000000FF000000000000FEA980000000
      00009C9C9C0000000000009C9C0000000000FF00FF00000000009C9C00000000
      00000000FF0000000000009C0000000000009C009C000000000000009C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C000000FF00000000000000D9CCC100A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
      0707070700070707070707070707070101010707070707070707070700070707
      0707070707070701010107070700070707070707000707070707070007070701
      0101070707070007070707F8F8F8070707070007070707010101070707070700
      0707F8000000F8F807000707070707010101070707070707070000FB07FB0000
      F80707070707070101010707070707070007FB07FB07FB0700F8070707070701
      010107070707070700FB07FB07FB07FB00F80707070707010101070707070700
      FB07FBFBFB07FB07FB00F80707070701010107000000070007FBFBFFFBFB07FB
      0700F800000007010101070707070700FBFBFFFFFFFBFB07FB00F80707070701
      010107070707070700FBFBFFFBFB07FB00F80707070707010101070707070707
      0007FBFBFB07FB0700F80707070707010101070707070707070000FB07FB0000
      F8070707070707010101070707070700070707000000F8070700070707070701
      0101070707070007070707070707070707070007070707010101070707000707
      0707070700070707070707000707070101010707070707070707070700070707
      0707070707070701010107070707070707070707000707070707070707070701
      0101}
  end
  object DBNavigator1: TDBNavigator
    Left = 197
    Top = 270
    Width = 264
    Height = 49
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      'Ultimo Registro'
      'Novo'
      'Apagar?'
      'Alterar'
      'Salvar'
      'Cancelar'
      'Atualizar')
    TabOrder = 4
  end
  object tabelafuncionario: TTable
    DatabaseName = 'MarkeYtor'
    TableName = 'MK_FUNCAO.db'
    Left = 80
    Top = 72
    object tabelafuncionarioCODIGO: TStringField
      DisplayWidth = 2
      FieldName = 'CODIGO'
      Required = True
      EditMask = '00'
      Size = 2
    end
    object tabelafuncionarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object tabelafuncionarioHORA_DIARIA: TStringField
      FieldName = 'HORA_DIARIA'
      EditMask = '!90:00;1;_'
      Size = 5
    end
    object tabelafuncionarioCOMPESA: TBooleanField
      FieldName = 'COMPESA'
    end
    object tabelafuncionarioOPERA_VEICULO: TBooleanField
      FieldName = 'OPERA_VEICULO'
    end
    object tabelafuncionarioREDUCAO_INTERVALO: TStringField
      FieldName = 'REDUCAO_INTERVALO'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object tabelafuncionarioLIMITE_HORAS: TStringField
      FieldName = 'LIMITE_HORAS'
      EditMask = '!00:00;1;_'
      Size = 5
    end
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 56
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = tabelafuncionario
    Left = 24
    Top = 88
  end
end
