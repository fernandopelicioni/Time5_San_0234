object formEmpresa: TformEmpresa
  Left = 326
  Top = 228
  Width = 374
  Height = 269
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Empresas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 235
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 23
      Width = 73
      Height = 15
      Caption = 'Raz'#227'o Social:'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 72
      Width = 29
      Height = 15
      Caption = 'CNPJ:'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 120
      Width = 49
      Height = 15
      Caption = 'Telefone:'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 88
      Width = 185
      Height = 27
      AutoSize = False
      Color = 12124017
      DataField = 'Cnpj'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 40
      Width = 321
      Height = 27
      AutoSize = False
      Color = 12124017
      DataField = 'RazaoSocial'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 136
      Width = 119
      Height = 27
      AutoSize = False
      Color = 12124017
      DataField = 'Telefone'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 2
    end
    object btsalva: TBitBtn
      Left = 59
      Top = 179
      Width = 128
      Height = 48
      TabOrder = 3
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
      Left = 191
      Top = 179
      Width = 128
      Height = 48
      Hint = 'Cancela ou Insere novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF015603FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF015603015603FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156030258
        04FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF025804056A0B025704FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF025A040D7919025904FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025A041C9932036307FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF005001005001FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01590428B0
        470D7818015303FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01560305
        6209005001FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0158042FBD541FA139025704FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF015503037909056209005001FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF01550328AD4735CA5F0D7618015303FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF00510122A03C037909056209005001FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01530316892742E27627AF4505
        620A015503FF00FFFF00FFFF00FFFF00FFFF00FF0050011F9C37068F0F037909
        056209005101FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A6E
        133BD1683CD76A27B144096D11036006015603015202005102005101004F011C
        9934089612058E0D037208086A0F005001FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0154031C983341DC7238D3642DBF4F18952C0A74130A7D130A7B
        140F831B16952807790E0A961406900E058E0D0379090C7417005001FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF01550328AC463CD86A36D05F2DC452
        27BC4822B63E1CAF3518A92D13A3270F9D1F0B9617079010058C0D058F0D047D
        0A178C2A015503FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01540321
        A13B35CC5F35D05E2CC44F25BB431FB43B1CAD3316A62A12A0220D991B099313
        068E0E058C0D06910D047A0A015503FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF01540311812023AA402CC14E2CC64F25BD441FB43919AB2F14
        A4260F9D1F0C9717079111058F0D138323015302FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156030153030F7E1C1692291A9F
        2F1BA5311AAA3118AA2D119F220E9A1C0A96150D7818005001FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        015603015403015303015503025C0513982315A728109F1F076A0E005001FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025703108B1D16A72B035F07
        005202FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0259040E
        841B025B05015303FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF015703015603015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF015603015603FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'mArKeYtOR'
    TableName = 'TAB_EMPRESA.db'
    Left = 264
    object Table1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object Table1RazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 50
    end
    object Table1Telefone: TStringField
      FieldName = 'Telefone'
      EditMask = '0000-9999;1;_'
      Size = 9
    end
    object Table1Cnpj: TStringField
      FieldName = 'Cnpj'
      Size = 17
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 296
    Top = 136
  end
end