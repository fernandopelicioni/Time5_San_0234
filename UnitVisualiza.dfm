object FormVisualiza: TFormVisualiza
  Left = 388
  Top = 181
  AlphaBlend = True
  AlphaBlendValue = 210
  BorderStyle = bsDialog
  Caption = 'Visualiza'#231#227'o rapida de lan'#231'amentos'
  ClientHeight = 628
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 87
    Width = 537
    Height = 531
    Caption = 'Dados'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 521
      Height = 473
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DIA_MES_ANO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Data'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTRADA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Entrada'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INICIO_INTERVALO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Ini Intervalo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIM_INTERVALO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Fim Intervalo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAIDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Saida'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Total'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Tipo dia'
          Width = 58
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 440
      Top = 496
      Width = 81
      Height = 25
      Caption = 'Apagar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000130B0000130B00000000000000000000FFFFFFFBFBFB
        F5F5F5F0F0F0EDEDEDE9E9E9E8E8E8E4E4E4E2E2E2E2E2E2E2E2E2E2E2E2E3E3
        E3E7E7E7E9E9E9EDEDECF0F0F0F4F4F4FBFBFBFFFFFFFFFFFFF2F2F2D8D8D991
        91B16E6E9F9D9DB0C0C0C0BEBEBEBABABAB9B9B9B9B9B9BABABABEBEBEC0C0C0
        A6A6B47272A18686ACD3D3D6F1F1F0FFFFFFFFFFFFF7F7FAA7A7CE24248B0E0E
        813A3A94C6C6DCF3F3F4F3F3F3F2F2F2F2F2F2F2F2F2F4F4F4D5D5E44C4C9D10
        10821B1B869191C2F0F0F6FFFFFFFCFCFE9C9CCC22228D0A0A800B0B800A0A80
        393998BBBBDCFCFCFDFFFFFFFFFFFFFDFDFECECEE64B4BA20C0C810B0B800B0B
        801919888484BFF7F7FBEEEEF64E4EA30C0C800B0B800C0C810C0C820D0D8333
        3398C1C1E0FEFEFEFFFFFFD4D4EA4646A21010850C0C820C0C820B0B810B0B80
        373797E3E3F0F4F4FA6E6EB71313860B0B820C0C840C0C850D0D870E0E884343
        A3D3D3E9E1E1F05858AD1010890D0D870D0D860C0C850C0C831010845656ABEB
        EBF5FFFFFFDCDCEF6868B815158B0D0D880E0E890E0E8B0E0E8B10108D3E3EA4
        4A4AA912128E0F0F8C0E0E8B0E0E8A0E0E8811118A5656AFCCCCE8FEFEFEFFFF
        FFFEFEFEDDDDF05A5AB413138F0E0E8D0F0F8F0F0F8F10109011119112129210
        10910F0F900F0F8F0F0F8E11118E4949ACCECEE9FBFBFDFFFFFFFFFFFFFFFFFF
        FFFFFFD9D9EF5F5FB91717951010921111931111941111951111951111951111
        941111931414944D4DB1C9C9E8FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE0E0F26A6AC218189A121298121299131399131399131399121298151599
        5858BACFCFECFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEC2C2E62929A413139B13139C13139D13139D13139D13139B1D1DA0AAAADDFA
        FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED4D4ED5656B8
        16169F13139F1313A01313A11313A11313A11313A014149F4444B1C2C2E5FCFC
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFD0D0EC4C4CB515159F1313A113
        13A21414A51414A61414A61414A51414A31313A21414A03A3AAEBFBFE4FDFDFE
        FFFFFFFFFFFFFFFFFFFEFEFEDCDCF05353B71717A01313A11414A41414A61515
        A81717AA1818AB1515A91414A71414A51313A21414A04141B0CBCBE9FCFCFEFF
        FFFFFFFFFFD6D6ED5555B615159F1313A11414A41515A81515A91919AE5757C8
        6464CD1D1DB01616AB1515A91414A61414A31313A04141B0C3C3E5FEFEFEF6F6
        FB7272C219199E13139F1414A31414A61515AA1919AD5151C6D0D0F1DEDEF563
        63CD1C1CB01616AC1515A81414A51313A115159E5757B8EDEDF8EFEFF85B5BBB
        15159E1313A11414A51515A81A1AAE4E4EC5CACAEFFDFDFEFFFFFFDADAF45F5F
        CC1D1DB11515AA1414A71313A314149F4444B3E4E4F4FCFCFEAFAFE04040B515
        15A21414A61919AB5B5BC9CECEF0FDFDFEFFFFFFFFFFFFFFFFFFDDDDF56D6DD0
        1D1DAE1414A81414A43636B29D9DDAF9F9FCFFFFFFF4F4FAA9A9DF3A3AB72626
        B05252C4CCCCEFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFDBDBF46161CB29
        29B33333B69898D9F0F0F9FFFFFFFFFFFFFFFFFFF9F9FDB0B0E38585D5D3D3F0
        FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF48D8DD8A3A3
        DFF5F5FBFFFFFFFFFFFF}
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 5
    Width = 537
    Height = 81
    Caption = 'Colaborador'
    TabOrder = 1
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'MATRICULA'
      ListField = 'MATRICULA'
      ListSource = DataSource2
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 32
      Width = 313
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Nome'
      ListField = 'Nome'
      ListSource = DataSource2
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 430
      Top = 31
      Width = 89
      Height = 25
      Caption = 'Carregar ...'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFEFEEED
        C6C4C1B1A99ACDC8C1F6F6F5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5E2DABCA35AA784287D6D4D9C978EB5B1ABD9
        D7D4E2E0DEE6E4E2ECEBEAF5F4F3FBFBFBFFFFFFFFFFFFFFFFFFFAFAF9C3B38E
        CDA025D29F1E9B7B36988F7F817A6F918B82A6A19ABBB7B2D0CDCAE3E2E0F3F2
        F2FDFDFDFFFFFFFFFFFFF9F8F7C3BAA9A78844CD9B1EB38519937940BFB9AFC6
        C2BECAC6C2D4D1CEE1E0DDEEEDECF8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
        E3DCD1B9994ECA9A1FB38A1FBDAD86F8F7F6F9F7F2F4EEE3F3EFE8F9F8F6FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE5E0D2BC9F56B289208C6F2EBA
        AB8BBCA36CAC8E49A5894DB19E7BDAD4CAFBFBFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEEAE7DEA28F6A815F16AE8F26D8B731E5C337D7B730B08D228F72
        3BCAC1B4FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F5B2A078C19D24F8
        CF2FFDD231FED333FFD637F9D231C39515907441E6E2DCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2DCD0A4873DF1C72BF9CC29F9CC29FACD2AFCCF2DFED22FF7C5
        14A97D17C6B99FFFFFFEFFFFFFFFFFFFFFFFFFFEFEFECDC2ADB2913EF7CB2BF8
        CD2EF9D03FF9D03BF9CD2CFCCE26FFCB0ECE9E10C6AE80FFFEFEFFFFFFFFFFFF
        FFFFFFFEFEFECABFA8A38336F0C52CF9D348FADC75FAD868F9CF38FAC815FEC6
        07DBAC10D8C18DFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFDED6C4896E33C7A328FA
        D953FBDF7DFAD867F9CA27F8C005FBBF04DAAB1CEBDDBBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F3ECA68F5E7C601BCEA71FF8CA2AF9C81EF9C105F8BC01EDB3
        06DABB59F9F7EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE7DEC89A804375
        58159C770BC39505CB9902C69509D2AE3FF1E9CDFFFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFDEFE7D4C4AE759E8037947221A88733D1B973F5EE
        D5FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FCF9F1E4C2E3CA89F1E5C2FEFDF9FFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'mArKeYtOR'
    RequestLive = True
    SQL.Strings = (
      'Select * from MM_Diario;')
    Left = 360
    Top = 88
    object Query1Matricula: TStringField
      FieldName = 'Matricula'
      Origin = 'MARKEYTOR."MM_Diario.DB".Matricula'
      Size = 4
    end
    object Query1Seq: TIntegerField
      FieldName = 'Seq'
      Origin = 'MARKEYTOR."MM_Diario.DB".Seq'
    end
    object Query1DIA_MES_ANO: TDateField
      FieldName = 'DIA_MES_ANO'
      Origin = 'MARKEYTOR."MM_Diario.DB".DIA_MES_ANO'
    end
    object Query1ENTRADA: TStringField
      FieldName = 'ENTRADA'
      Origin = 'MARKEYTOR."MM_Diario.DB".ENTRADA'
      Size = 5
    end
    object Query1INICIO_INTERVALO: TStringField
      FieldName = 'INICIO_INTERVALO'
      Origin = 'MARKEYTOR."MM_Diario.DB".INICIO_INTERVALO'
      Size = 5
    end
    object Query1FIM_INTERVALO: TStringField
      FieldName = 'FIM_INTERVALO'
      Origin = 'MARKEYTOR."MM_Diario.DB".FIM_INTERVALO'
      Size = 5
    end
    object Query1SAIDA: TStringField
      FieldName = 'SAIDA'
      Origin = 'MARKEYTOR."MM_Diario.DB".SAIDA'
      Size = 5
    end
    object Query1TOTAL: TStringField
      FieldName = 'TOTAL'
      Origin = 'MARKEYTOR."MM_Diario.DB".TOTAL'
      Size = 6
    end
    object Query1TIPO_DIA: TStringField
      FieldName = 'TIPO_DIA'
      Origin = 'MARKEYTOR."MM_Diario.DB".TIPO_DIA'
      Size = 1
    end
    object Query1Total_intervalo: TStringField
      FieldName = 'Total_intervalo'
      Origin = 'MARKEYTOR."MM_Diario.DB".Total_intervalo'
      Size = 5
    end
    object Query1Dia_Mes_Ano1: TStringField
      FieldName = 'Dia_Mes_Ano1'
      Origin = 'MARKEYTOR."MM_Diario.DB".Dia_Mes_Ano1'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 400
    Top = 80
  end
  object Query2: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'Select * from Funcionario;')
    Left = 432
    object Query2MATRICULA: TStringField
      FieldName = 'MATRICULA'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".MATRICULA'
      Size = 4
    end
    object Query2FUNCAO: TStringField
      FieldName = 'FUNCAO'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".FUNCAO'
      Size = 2
    end
    object Query2OPERAVEICULO: TBooleanField
      FieldName = 'OPERAVEICULO'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".OPERAVEICULO'
    end
    object Query2Nome: TStringField
      FieldName = 'Nome'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".Nome'
      Size = 50
    end
    object Query2SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".SITUACAO'
      Size = 1
    end
    object Query2Inativo_inicio: TDateField
      FieldName = 'Inativo_inicio'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".Inativo_inicio'
    end
    object Query2Inativo_fim: TDateField
      FieldName = 'Inativo_fim'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".Inativo_fim'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 448
    Top = 80
  end
  object Table1: TTable
    DatabaseName = 'mArKeYtOR'
    IndexFieldNames = 'Matricula;Seq'
    MasterFields = 'Matricula;Seq'
    MasterSource = DataSource1
    TableName = 'MM_Diario.DB'
    Left = 416
    Top = 175
  end
end
