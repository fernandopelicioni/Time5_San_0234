object FormConsultaInterno: TFormConsultaInterno
  Left = 222
  Top = 144
  ActiveControl = datai
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta Rapida - Colaboradores INTERNOS'
  ClientHeight = 436
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 7
    Top = 144
    Width = 569
    Height = 281
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 6
      Top = 16
      Width = 553
      Height = 254
      Color = 16643534
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Matricula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Chapa'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = 16384
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold, fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = 16384
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold, fsItalic]
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = 16384
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold, fsItalic]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_GERAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Tot. Horas'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = 16384
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold, fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Tip. Dia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = 16384
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold, fsItalic]
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 8
    Width = 545
    Height = 129
    Caption = '  Detalhamento  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 16
      Width = 29
      Height = 15
      Caption = '&Data:'
      FocusControl = datai
    end
    object s: TLabel
      Left = 104
      Top = 80
      Width = 3
      Height = 15
      Caption = #39
      Visible = False
    end
    object Label2: TLabel
      Left = 104
      Top = 112
      Width = 35
      Height = 15
      Caption = 'Label2'
    end
    object datai: TCJVEditDate
      Left = 16
      Top = 32
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
    object BitBtn1: TBitBtn
      Left = 168
      Top = 80
      Width = 241
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF00A4D600A5D800A3D500A1D3FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00BBE800C8F100CDF600
        C7EF00BFE700BBE500ADD900A2D0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        00AEE100CBF000E2FF00E1FF0EACC7216F80236575158EA801C1EB00BBE300A4
        CD008FBCFF00FFFF00FFFF00FFFF00FF00CFF200EAFF00E6FF19909F382E2F3B
        25233A27253A272427606E06BFE800C6F100A5CEFF00FFFF00FFFF00FF00C4EE
        00EFFF00F0FF1A939E3B21203730303436383436383535363C23202B525D03C7
        F500C5F1009CC8FF00FFFF00FF00DEF900F8FF0CC8D43928293A2727372C2D38
        2B2C382B2C382B2D372E303E1A15226F8200D0FF00B4E0FF00FF00C2F201EEFC
        00F7FF0BC9D619989F16A1AC169FAA169DAA169BAA1699AA1697AA1793A71793
        AB02CBF800C7F500A0D204C6F22AF6FD11F6FF00F7FF00FFFF00FFFF00FEFF00
        F2FF00EFFF00EDFF00F6FF00EDFF00DFFF00D3FF00CFFE00A4D708CAF675F9FE
        42FAFF00F7FF01EFF913B0B60ACFDA00EEFF00E5FF02E2F914A2B309C2DC00DC
        FF00D6FF00D4FF00A9DC04C6F68EF7FE8BFEFF00FFFF0FBABD3C1B1D27636902
        F0F700F8FF11B1BD3B201F285E6802DFFB00DBFF00D5FC00A6D9FF00FF66ECFD
        DDFFFF44FFFF0CA1A4400A0B2F4B4E04EDF000FFFF189DA53E12102F474B03DD
        F400E1FF00CDF5FF00FFFF00FF24D8FBC6FEFFD8FFFF42E2E2245B5D129C9F00
        FBFE00F7FF05D8E128565B1895A100EAFF00E6FF00B9E6FF00FFFF00FFFF00FF
        4DE5FDECFFFFE8FFFF71FBFC1EFDFE06F8FF00F3FF05F4FF11EEF80AEFFF00EF
        FF00CEF1FF00FFFF00FFFF00FFFF00FF0CCEFD53E7FDCEFFFFF9FFFFDCFFFFB4
        FFFF99FDFF90FDFF6CFCFF20F4FF00D1F300B1E4FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF27D9FC68ECFDA1F6FEB0FBFEA3FBFF72F4FC2EE3FA06CAF2FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03C9F807
        CEF807CCF700C6F5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object radio: TRadioGroup
      Left = 126
      Top = 8
      Width = 412
      Height = 65
      Caption = ' Op'#231#245'es  '
      Columns = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsItalic]
      ItemIndex = 0
      Items.Strings = (
        'T - Todos'
        'F - Folga'
        'T - Falta'
        'A - Atestado'
        'S - Suspen'#231#227'o'
        'R - Feriado'
        'N - Normal'
        'O - Outros'
        'B - Abonado')
      ParentFont = False
      TabOrder = 2
      OnClick = radioClick
    end
    object EditMatricula: TMaskEdit
      Left = 16
      Top = 80
      Width = 64
      Height = 27
      AutoSize = False
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = EditMatriculaKeyPress
    end
  end
  object Query1: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'select * from MM_diario K, Funcionario F, MK_Funcao O'
      'Where K.matricula = f.matricula and f.funcao = o.codigo'
      'order by k.matricula;')
    Left = 448
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 400
    Top = 208
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 408
    Top = 136
  end
  object XPManifest1: TXPManifest
    Left = 312
    Top = 152
  end
end
