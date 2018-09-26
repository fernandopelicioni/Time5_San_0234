object FormCadastraEventos: TFormCadastraEventos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'nhiui'
  ClientHeight = 320
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 101
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Codigo:'
    end
    object Label2: TLabel
      Left = 84
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object DBText1: TDBText
      Left = 32
      Top = 43
      Width = 35
      Height = 17
      DataField = 'TDIA_COD'
      DataSource = DtCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 78
      Top = 38
      Width = 234
      Height = 24
      DataField = 'TDIA_DESCRICAO'
      DataSource = DtCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 37
      Top = 68
      Width = 97
      Height = 17
      Caption = 'Ativo'
      DataField = 'TDIA_STATUS'
      DataSource = DtCadastro
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object Salvar: TBitBtn
    Left = 156
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = SalvarClick
  end
  object Incluir: TBitBtn
    Left = 237
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Incluir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = IncluirClick
  end
  object Cancelar: TBitBtn
    Left = 318
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = CancelarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 152
    Width = 401
    Height = 168
    Align = alBottom
    DataSource = DtCadastro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object DtCadastro: TDataSource
    DataSet = Pai.QrTipoDia
    Left = 80
    Top = 160
  end
end
