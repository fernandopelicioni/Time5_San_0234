object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Perfis de Fun'#231#245'es'
  ClientHeight = 273
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 6
    Width = 434
    Height = 251
    Caption = 'Cadastro'
    TabOrder = 0
    object DBText1: TDBText
      Left = 16
      Top = 37
      Width = 34
      Height = 17
      DataField = 'TFU_COD'
      DataSource = DtPerfilFuncao
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Cod.:'
    end
    object Label2: TLabel
      Left = 73
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object DBEdit1: TDBEdit
      Left = 67
      Top = 32
      Width = 329
      Height = 24
      DataField = 'TFU_DES'
      DataSource = DtPerfilFuncao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 72
      Width = 393
      Height = 145
      Caption = 'Hor'#225'rios'
      TabOrder = 1
      object Label3: TLabel
        Left = 17
        Top = 21
        Width = 84
        Height = 13
        Caption = 'Jornada (HH:MM)'
      end
      object Label4: TLabel
        Left = 16
        Top = 69
        Width = 25
        Height = 13
        Caption = 'Inicio'
      end
      object DBEdit2: TDBEdit
        Left = 18
        Top = 35
        Width = 79
        Height = 24
        DataField = 'TFU_HORA'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 17
        Top = 83
        Width = 79
        Height = 24
        DataField = 'TFU_HORA'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 16
        Top = 112
        Width = 233
        Height = 17
        Caption = 'Copiar perfil no ato do Lan'#231'amento'
        DataField = 'TFU_COPIAR'
        DataSource = DtPerfilFuncao
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  object DtCadastroFuncoes: TDataSource
    DataSet = Pai.QrCadastroFuncoes
    Left = 400
    Top = 32
  end
  object DtPerfilFuncao: TDataSource
    DataSet = Pai.QrPerfilFuncao
    Left = 400
    Top = 88
  end
end
