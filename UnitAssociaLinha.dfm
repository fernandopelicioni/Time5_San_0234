object FormAssociaLinhas: TFormAssociaLinhas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Linhas dispon'#237'veis'
  ClientHeight = 416
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 8
    Top = 8
    Width = 721
    Height = 372
    DataSource = DtLinhas
    PanelHeight = 31
    PanelWidth = 704
    TabOrder = 0
    RowCount = 12
    object DBText1: TDBText
      Left = 24
      Top = 8
      Width = 65
      Height = 17
      DataField = 'LIN_COD'
      DataSource = DtLinhas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 95
      Top = 8
      Width = 394
      Height = 17
      DataField = 'LIN_DES'
      DataSource = DtLinhas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 536
      Top = 9
      Width = 145
      Height = 17
      Caption = 'Utilizar nesta Coligada'
      DataField = 'LIN_COLIGADA'
      DataSource = DtLinhas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ValueChecked = '2'
      ValueUnchecked = '1'
    end
  end
  object BitBtn1: TBitBtn
    Left = 648
    Top = 386
    Width = 75
    Height = 25
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DtLinhas: TDataSource
    DataSet = QrLinhas
    Left = 296
    Top = 32
  end
  object QrLinhas: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_MonLin')
    Left = 336
    Top = 24
  end
end
