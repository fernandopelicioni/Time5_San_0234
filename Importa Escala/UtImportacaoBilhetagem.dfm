object FormImportaEmpresa1: TFormImportaEmpresa1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Genoma Software'
  ClientHeight = 474
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 577
    Height = 55
    Align = alTop
    Alignment = taLeftJustify
    Caption = '  Rob'#244' de importa'#231#227'o de dados | Empresa1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 526
      Top = 1
      Width = 50
      Height = 53
      Cursor = crHandPoint
      Hint = 'Sair'
      Align = alRight
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
        003208060000001E3F88B1000002F24944415478DADD9A8F55DB3010C6CF13D4
        1B349DA074029C0948363013B49D8064829209E80685097027804E50B34198A0
        D5179FC0716CE54E3EDB90EFBD7B7E019FA59FF5E74E9213B2D7B9B3191B94F2
        75CBD792EDB765A189C13350E10B670B6799D2B77076EBEC8EE1260141A5AF22
        2ADF25006D186E14106B80A600B2D60269405206F836104053D70CB495DC2C05
        397376C3D731F5E8EC92AFBD41160C910AEE1D426891251DE96AC7407286780B
        42CBFC8C01414BFC9ABAF60DCDA9A365BA403016EE69BAEED4A52DC31C8C9936
        909421C61ED8523D32CCDE6CD6068269EFEBD4B53D2204CEBD30D004C9A86A8D
        F7A02F54EB624D907BD247EC27AA6613BCA10F4ADF67AA7A40EEECA3D2B7A0AA
        8B1D8064A46F8D3FEC87FE7AC60F97C23CB32FDE6ACABE9F95E5BFCC6275106D
        6BD421BCA4307508AF181864CD8B3AC8CCD95FC5039EB8D26D79D0319836883A
        0CFEAEE9669F9C951E04FDFB87C219C9DC2AF0FF2E981084179E7BA5A8CB7767
        D71E04859E2B9C3B0353004602111388B1D2CC3CC83F85630C0C0D04E19524D4
        2F764861684008680E909CFA65B81298902CF2BA254056A41B5C963056C9E9DA
        0A2406C632C3DE815826895218EB65C2C61A4432C57A9082F4B959106445365D
        4B0A31048CD918D14258C3AC2DA6DF58084B9865DF80284D3B48704F1F98799F
        1445933BED0A1B1026894D1A6312C0984453A2BDA4718834BE2D4E4860F0DCE8
        347E46BA855549D5E2BF6B61150A762118F83CD0EB2191447B0B2BA8205DF76A
        DB5F9246EC369898FDB483A52E94917EF6AAC368D38E3A4CECA660EBE60391BE
        55A0925EB783B4B91360FC76D04CE9BB1BE4FEC7C96ED04127B1650AC56E968D
        A5B6FDB4E0B10260ACD26C2B7506E2D0410F1CDEDA78511FF478E57402476F5E
        195587F9537533742704BD227493E6781A6F63EC0900033B27A3E3692FCC662B
        1A6F6ADE7079A61F0CD4957101DA0C402A446CC408D58AB3EF473528F0C20800
        0920827111E36CF599D3824DDB4A78FBB76C659F4A5880349591ECC3B3C2B2D0
        FF7EB4DE733B0A549E0000000049454E44AE426082}
      ShowHint = True
      OnClick = Image1Click
      ExplicitLeft = 748
      ExplicitTop = 2
      ExplicitHeight = 63
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 61
    Width = 577
    Height = 405
    Margins.Top = 0
    ActivePage = TabEdicao
    Align = alTop
    TabOrder = 1
    object TabEdicao: TTabSheet
      Caption = 'Importa'#231#227'o'
      ImageIndex = 1
      object BtSalvar: TButton
        Left = 17
        Top = 299
        Width = 153
        Height = 65
        Caption = 'Processar Anterior'
        ImageIndex = 2
        Images = Pai.BcoImagens
        TabOrder = 0
        Visible = False
        OnClick = BtSalvarClick
      end
      object PnEdicao: TPanel
        Left = 0
        Top = 0
        Width = 569
        Height = 293
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 17
          Top = 93
          Width = 219
          Height = 17
          Caption = 'Qual arquivo voc'#234' quer que eu analise?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 328
          Top = 110
          Width = 23
          Height = 30
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Gauge1: TGauge
          Left = 15
          Top = 224
          Width = 538
          Height = 60
          Progress = 0
        end
        object Label2: TLabel
          Left = 17
          Top = 27
          Width = 113
          Height = 17
          Caption = 'Data do movimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 16
          Top = 111
          Width = 313
          Height = 27
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = 'Selecione o caminho...'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 17
          Top = 48
          Width = 186
          Height = 29
          Date = 42669.000000000000000000
          Time = 42669.000000000000000000
          TabOrder = 1
        end
      end
      object Button1: TButton
        Left = 382
        Top = 299
        Width = 171
        Height = 67
        Caption = 'Processar'
        ImageIndex = 2
        Images = Pai.BcoImagens
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Sql'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 3
        Top = 16
        Width = 502
        Height = 321
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 488
    Top = 144
  end
  object Q2: TFDQuery
    Connection = Pai.Fdgenoma
    Left = 16
    Top = 368
  end
end
