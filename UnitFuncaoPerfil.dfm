object FormFuncaoPerfil: TFormFuncaoPerfil
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Perfis de Fun'#231#245'es'
  ClientHeight = 515
  ClientWidth = 584
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 6
    Width = 545
    Height = 291
    Caption = 'Cadastro'
    TabOrder = 0
    object DBText1: TDBText
      Left = 16
      Top = 34
      Width = 34
      Height = 17
      DataField = 'TFU_COD'
      DataSource = DtPerfilFuncao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
      Width = 382
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
      Top = 61
      Width = 513
      Height = 220
      Caption = 'Perfis de Hor'#225'rios'
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 20
        Width = 84
        Height = 13
        Caption = 'Jornada (HH:MM)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 37
        Top = 66
        Width = 58
        Height = 13
        Caption = 'Ini. Jornada'
      end
      object Label5: TLabel
        Left = 120
        Top = 66
        Width = 59
        Height = 13
        Caption = 'Ini Intervalo'
      end
      object Label6: TLabel
        Left = 202
        Top = 66
        Width = 63
        Height = 13
        Caption = 'Fim Intervalo'
      end
      object Label7: TLabel
        Left = 284
        Top = 66
        Width = 58
        Height = 13
        Caption = 'Fim Jornada'
      end
      object Label8: TLabel
        Left = 110
        Top = 20
        Width = 86
        Height = 13
        Caption = 'Lim. Jor. (HH:MM)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 207
        Top = 20
        Width = 61
        Height = 13
        Caption = 'Dias s/ Folga'
      end
      object Label10: TLabel
        Left = 278
        Top = 20
        Width = 44
        Height = 13
        Caption = 'Intervalo'
      end
      object Label11: TLabel
        Left = 333
        Top = 20
        Width = 52
        Height = 13
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 395
        Top = 20
        Width = 37
        Height = 13
        Caption = 'Int. Min'
      end
      object Label13: TLabel
        Left = 453
        Top = 20
        Width = 41
        Height = 13
        Caption = 'Int. Max'
      end
      object DBEdit2: TDBEdit
        Left = 23
        Top = 36
        Width = 68
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
        Left = 36
        Top = 80
        Width = 74
        Height = 24
        DataField = 'TFU_INI'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBCheckBox1: TDBCheckBox
        Left = 202
        Top = 150
        Width = 191
        Height = 17
        Caption = 'Copiar perfil no ato do Lan'#231'amento'
        DataField = 'TFU_COPIAR'
        DataSource = DtPerfilFuncao
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit4: TDBEdit
        Left = 121
        Top = 80
        Width = 74
        Height = 24
        DataField = 'TFU_ITI'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 203
        Top = 80
        Width = 74
        Height = 24
        DataField = 'TFU_ITF'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 284
        Top = 80
        Width = 74
        Height = 24
        DataField = 'TFU_FIM'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBCheckBox3: TDBCheckBox
        Left = 21
        Top = 150
        Width = 167
        Height = 17
        Caption = 'Lan'#231'ar Intervalo Manualmente'
        DataField = 'TFU_INTERVALOMANUAL'
        DataSource = DtPerfilFuncao
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit7: TDBEdit
        Left = 114
        Top = 36
        Width = 74
        Height = 24
        DataField = 'TFU_HORALIMITE'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 217
        Top = 36
        Width = 41
        Height = 24
        DataField = 'TFU_DIAS'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox2: TDBCheckBox
        Left = 21
        Top = 173
        Width = 121
        Height = 17
        Caption = 'Perfil Ativo'
        DataField = 'TFU_ATIVO'
        DataSource = DtPerfilFuncao
        TabOrder = 13
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 21
        Top = 196
        Width = 121
        Height = 17
        Caption = 'Edit Local de Trabalho'
        DataField = 'TFU_EDITALOCAL'
        DataSource = DtPerfilFuncao
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 202
        Top = 173
        Width = 121
        Height = 17
        Caption = 'Consiste Lan'#231'amentos'
        DataField = 'TFU_CONSISTE'
        DataSource = DtPerfilFuncao
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit9: TDBEdit
        Left = 274
        Top = 36
        Width = 52
        Height = 24
        DataField = 'TFU_ITP'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 331
        Top = 36
        Width = 52
        Height = 24
        DataField = 'TFU_HORREF'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 17
        Top = 110
        Width = 415
        Height = 34
        Caption = 'Modelo de Compensa'#231#227'o'
        Columns = 4
        DataField = 'TFU_COMPENSACAO'
        DataSource = DtPerfilFuncao
        Items.Strings = (
          'Di'#225'ria'
          'Semanal'
          'Quinzenal'
          'Mensal')
        ParentBackground = True
        TabOrder = 16
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit11: TDBEdit
        Left = 391
        Top = 36
        Width = 52
        Height = 24
        DataField = 'TFU_INTMIN'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit12: TDBEdit
        Left = 449
        Top = 36
        Width = 52
        Height = 24
        DataField = 'TFU_INTMAX'
        DataSource = DtPerfilFuncao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 420
    Top = 303
    Width = 75
    Height = 25
    CustomHint = Pai.BalloonHint1
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 501
    Top = 303
    Width = 75
    Height = 25
    CustomHint = Pai.BalloonHint1
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 334
    Width = 568
    Height = 173
    Color = 11468799
    DataSource = DtPerfilFuncao
    Options = [dgTitles, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Color = 12582911
        Expanded = False
        FieldName = 'TFU_COD'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Color = 12582911
        Expanded = False
        FieldName = 'TFU_DES'
        Title.Caption = 'Descri'#231#227'o'
        Width = 266
        Visible = True
      end
      item
        Color = 12582911
        Expanded = False
        FieldName = 'TFU_HORA'
        Title.Caption = 'Jornada Padr'#227'o'
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 339
    Top = 303
    Width = 75
    Height = 25
    CustomHint = Pai.BalloonHint1
    Caption = 'Novo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object DtPerfilFuncao: TDataSource
    DataSet = Pai.QrPerfilFuncao
    Left = 440
    Top = 136
  end
end
