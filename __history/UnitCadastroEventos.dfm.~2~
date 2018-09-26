object FormCadastraEventos: TFormCadastraEventos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Eventos'
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
    Height = 149
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
      DataField = 'TVE_COD'
      DataSource = DtCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 30
      Top = 69
      Width = 95
      Height = 13
      Caption = 'Codigo Exporta'#231#227'o:'
    end
    object DBEdit2: TDBEdit
      Left = 81
      Top = 40
      Width = 234
      Height = 24
      DataField = 'TVE_DES'
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
      Top = 116
      Width = 130
      Height = 17
      Caption = 'Motivo de Afastamento'
      DataField = 'TVE_DISP'
      DataSource = DtCadastro
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 197
      Top = 116
      Width = 97
      Height = 17
      Caption = 'Ativo'
      DataField = 'TVE_ATIVO'
      DataSource = DtCadastro
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 86
      Width = 283
      Height = 24
      DataField = 'TVE_CODIGOEXP'
      DataSource = DtCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Salvar: TBitBtn
    Left = 156
    Top = 155
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
    Top = 155
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
    Top = 155
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
    Top = 184
    Width = 401
    Height = 136
    Align = alBottom
    Color = 16772801
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
    DataSet = Pai.QrCadastroEventos
    Left = 80
    Top = 160
  end
end
