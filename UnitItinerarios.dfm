object FormItinerarios: TFormItinerarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Itiner'#225'rios das Linhas'
  ClientHeight = 423
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 588
    Height = 217
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Codigo:'
    end
    object Label2: TLabel
      Left = 32
      Top = 61
      Width = 60
      Height = 13
      Caption = 'Informa'#231#245'es'
    end
    object DBText1: TDBText
      Left = 180
      Top = 136
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'LIN_DES'
      DataSource = DtLinha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 111
      Width = 29
      Height = 13
      Caption = 'Linha:'
    end
    object Label4: TLabel
      Left = 32
      Top = 164
      Width = 92
      Height = 13
      Caption = 'Sentido da Viagem:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 178
      Width = 185
      Height = 29
      Ctl3D = False
      DataField = 'ITI_SENTIDO'
      DataSource = DtItinerarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'Sen_Cod'
      ListField = 'Sen_Des'
      ListSource = DtSentido
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 20
      Width = 185
      Height = 29
      Ctl3D = False
      DataField = 'ITI_COD'
      DataSource = DtItinerarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 76
      Width = 467
      Height = 29
      Ctl3D = False
      DataField = 'ITI_DES'
      DataSource = DtItinerarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 24
      Top = 127
      Width = 145
      Height = 29
      Ctl3D = False
      DataField = 'ITI_LINHA'
      DataSource = DtItinerarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'LIN_COD'
      ListField = 'LIN_COD'
      ListSource = DtLinha
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 262
    Width = 588
    Height = 153
    DataSource = DtItinerarios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Novo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 505
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Excluir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 343
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object DtSentido: TDataSource
    DataSet = QrSentidoViagem
    Left = 448
    Top = 16
  end
  object QrSentidoViagem: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_escsentidoviagem')
    Left = 568
    Top = 16
  end
  object DtItinerarios: TDataSource
    DataSet = Pai.QrItinerarios
    Left = 528
    Top = 16
  end
  object DtLinha: TDataSource
    DataSet = Pai.QrLinhas
    Left = 488
    Top = 16
  end
end
