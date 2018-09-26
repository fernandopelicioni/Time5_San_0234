object FormLancamento: TFormLancamento
  Left = 225
  Top = 111
  VertScrollBar.Visible = False
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amentos de Colaboradores EXTERNOS - BSE - v 1.1'
  ClientHeight = 454
  ClientWidth = 599
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 454
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 23
      Top = 6
      Width = 537
      Height = 123
      Caption = '  Dados do Colaborador  '
      TabOrder = 0
      object S: TLabel
        Left = 224
        Top = 48
        Width = 3
        Height = 15
        Caption = #39
        Visible = False
      end
      object Label11: TLabel
        Left = 11
        Top = 27
        Width = 70
        Height = 14
        Caption = 'Per. Apura'#231#227'o:'
        FocusControl = BitBtn2
        Font.Charset = ANSI_CHARSET
        Font.Color = clInfoText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 216
        Top = 27
        Width = 7
        Height = 14
        Caption = #193
        FocusControl = BitBtn2
        Font.Charset = ANSI_CHARSET
        Font.Color = clInfoText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 357
        Top = 9
        Width = 50
        Height = 14
        Caption = 'Apurando:'
        FocusControl = BitBtn2
        Font.Charset = ANSI_CHARSET
        Font.Color = clInfoText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object EditData: TLabel
        Left = 380
        Top = 25
        Width = 5
        Height = 26
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = 16711808
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 56
        Width = 523
        Height = 63
        TabOrder = 0
        DesignSize = (
          523
          63)
        object DBText1: TDBText
          Left = 128
          Top = 10
          Width = 72
          Height = 26
          AutoSize = True
          DataField = 'Nome'
          DataSource = dtfuncionario
          Font.Charset = ANSI_CHARSET
          Font.Color = 16384
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label14: TLabel
          Left = 90
          Top = 17
          Width = 33
          Height = 14
          Caption = 'Nome:'
          FocusControl = BitBtn2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 85
          Top = 37
          Width = 38
          Height = 14
          Caption = 'Fun'#231#227'o:'
          FocusControl = BitBtn2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 21
          Top = 7
          Width = 44
          Height = 14
          Caption = '&Registro:'
          FocusControl = EditMatricula
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 129
          Top = 35
          Width = 60
          Height = 21
          AutoSize = True
          DataField = 'DESCRICAO'
          DataSource = dtfuncionario
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object EditMatricula: TMaskEdit
          Left = 6
          Top = 21
          Width = 74
          Height = 38
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          BevelOuter = bvRaised
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 14286796
          Ctl3D = False
          EditMask = '0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = 16384
          Font.Height = -27
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '    '
          OnEnter = EditMatriculaEnter
          OnKeyPress = EditMatriculaKeyPress
        end
        object busca: TBitBtn
          Left = 368
          Top = 16
          Width = 75
          Height = 25
          Caption = 'busca'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          Visible = False
          OnClick = buscaClick
        end
      end
    end
    object Panel2: TPanel
      Left = 16
      Top = 143
      Width = 569
      Height = 234
      Cursor = crCross
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = 5395026
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 65
        Top = 7
        Width = 41
        Height = 14
        Caption = '&Entrada:'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 147
        Top = 7
        Width = 30
        Height = 14
        Caption = '&Sa'#237'da:'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 325
        Top = 29
        Width = 70
        Height = 30
        DataField = 'TOTAL_1'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -24
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 228
        Top = 7
        Width = 38
        Height = 14
        Caption = '&Ve'#237'culo:'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 339
        Top = 6
        Width = 27
        Height = 14
        Caption = 'Total:'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 11
        Top = 34
        Width = 32
        Height = 14
        Caption = '1'#186' Lto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 324
        Top = 71
        Width = 70
        Height = 28
        DataField = 'TOTAL_2'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -24
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 324
        Top = 111
        Width = 70
        Height = 29
        DataField = 'TOTAL_3'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -24
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 324
        Top = 152
        Width = 70
        Height = 26
        DataField = 'TOTAL_4'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -24
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object status: TLabel
        Left = 92
        Top = 189
        Width = 3
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 4
        Top = 217
        Width = 3
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 436
        Top = 17
        Width = 96
        Height = 14
        Caption = 'Intervalo calculado:'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 11
        Top = 74
        Width = 32
        Height = 14
        Caption = '2'#186' Lto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 114
        Width = 32
        Height = 14
        Caption = '3'#186' Lto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 162
        Width = 32
        Height = 14
        Caption = '4'#186' Lto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 63
        Top = 23
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'ENTRADA_1'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyDown = DBEdit1KeyDown
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 145
        Top = 23
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'SAIDA_1'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEdit2KeyDown
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 227
        Top = 23
        Width = 80
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'VEICULO_1'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744448
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnKeyDown = DBEdit3KeyDown
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 63
        Top = 64
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'ENTRADA_2'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEdit4KeyDown
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 145
        Top = 64
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'SAIDA_2'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEdit5KeyDown
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 227
        Top = 64
        Width = 80
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'VEICULO_2'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744448
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEdit6KeyDown
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 63
        Top = 105
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'ENTRADA_3'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEdit7KeyDown
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 145
        Top = 105
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'SAIDA_3'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEdit8KeyDown
        OnKeyPress = DBEdit8KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 227
        Top = 105
        Width = 80
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'VEICULO_3'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744448
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEdit9KeyDown
        OnKeyPress = DBEdit9KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 63
        Top = 148
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'ENTRADA_4'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        OnKeyDown = DBEdit10KeyDown
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 145
        Top = 148
        Width = 76
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'SAIDA_4'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        OnKeyDown = DBEdit11KeyDown
        OnKeyPress = DBEdit11KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 227
        Top = 148
        Width = 80
        Height = 38
        AutoSelect = False
        AutoSize = False
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Ctl3D = False
        DataField = 'VEICULO_4'
        DataSource = dtlanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744448
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        OnKeyDown = DBEdit12KeyDown
        OnKeyPress = DBEdit12KeyPress
      end
      object Panel3: TPanel
        Left = 434
        Top = 144
        Width = 109
        Height = 69
        BevelWidth = 3
        BorderStyle = bsSingle
        Color = clInactiveCaptionText
        TabOrder = 15
        object Label10: TLabel
          Left = 21
          Top = 4
          Width = 72
          Height = 14
          Caption = ':. Total Geral .:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 7
          Top = 18
          Width = 90
          Height = 40
          Alignment = taCenter
          DataField = 'TOTAL_GERAL'
          DataSource = dtlanca
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -29
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 444
        Top = 82
        Width = 85
        Height = 60
        BevelInner = bvSpace
        BevelOuter = bvLowered
        TabOrder = 14
        object Label17: TLabel
          Left = 21
          Top = 1
          Width = 46
          Height = 14
          Caption = 'Intervalo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object EditIntervalo: TDBEdit
          Left = 2
          Top = 16
          Width = 80
          Height = 39
          AutoSelect = False
          AutoSize = False
          BevelInner = bvSpace
          BevelOuter = bvNone
          BevelKind = bkFlat
          Color = 16777170
          Ctl3D = False
          DataField = 'INTERVALO'
          DataSource = dtlanca
          Font.Charset = ANSI_CHARSET
          Font.Color = 16711808
          Font.Height = -27
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnKeyDown = EditIntervaloKeyDown
          OnKeyPress = EditIntervaloKeyPress
        end
      end
      object EditInicioIntervalo: TMaskEdit
        Left = 430
        Top = 32
        Width = 54
        Height = 29
        Ctl3D = False
        Enabled = False
        EditMask = '!00:00;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744448
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = '00:00'
        OnKeyDown = EditInicioIntervaloKeyDown
        OnKeyPress = EditInicioIntervaloKeyPress
      end
      object EditFinalIntervalo: TMaskEdit
        Left = 486
        Top = 32
        Width = 53
        Height = 29
        Ctl3D = False
        Enabled = False
        EditMask = '!00:00;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744448
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        Text = '00:00'
        OnKeyDown = EditFinalIntervaloKeyDown
        OnKeyPress = EditFinalIntervaloKeyPress
      end
    end
    object btsalva: TBitBtn
      Left = 120
      Top = 382
      Width = 128
      Height = 60
      Cursor = crHandPoint
      Hint = 'Salva Lan'#231'amento'
      DoubleBuffered = True
      Enabled = False
      Glyph.Data = {
        161F0000424D161F000000000000360000002800000032000000340000000100
        180000000000E01E000000000000000000000000000000000000F8F8F8F8F8F8
        F4F4F4FFFFFFFFFFFFFDFDFDF3F3F3F4F4F4F9F9F9FFFFFFFFFFFFFFFFFFFAFA
        FAFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9F8F8F8FAFAFAF2F2F2FFFFFFFEFEFEFAFAFAF1F1F1FFFF
        FFFDFDFDF7F7F7FDFDFDFEFEFEFFFFFF0000FFFFFFFFFFFFFEFEFEF7F7F7FFFF
        FFF5F5F5FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFDFDFDFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFB
        FBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFC
        FCFCFEFEFEFFFFFF0000FEFEFEFBFBFBF4F4F4FFFFFFFFFFFFC7C7C7C9C9C9BE
        BEBED1D1D1EAEAEADCDCDCE5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E4E4EBEBEBE5E5E5E1E1E1E2E2E2E9E9E9ECECECEBEBEBE8E8E8DF
        DFDFD6D6D6E1E1E1CFCFCFCBCBCBD2D2D2C8C8C8FAFAFAF9F9F9FEFEFEFFFFFF
        0000FAFAFAFFFFFFFFFFFFFEFEFEA1A1A11919190000000707076C6C6CD2D2D2
        BFBFBFBFBFBFBCBCBCBEBEBEC4C4C4C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
        C1C1C1C1C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B9
        B9B9BCBCBCBFBFBFC1C1C1BFBFBFBABABAB5B5B5B2B2B2BABABACBCBCBBDBDBD
        3030300000000B0B0B1A1A1A5C5C5CF3F3F3FCFCFCFFFFFF0000FFFFFFFFFFFF
        FDFDFDEFEFEF606060030303090909000000777777FFFFFFEAEAEAF4F4F4F5F5
        F5F0F0F0F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1ECECECF3F3F3F3F3F3
        E4E4E4D0D0D0CACACAD7D7D7E7E7E7B3B3B3E7E7E7FCFCFC5252520000000202
        02000000333333ECECECF9F9F9FFFFFF0000FFFFFFFBFBFBFFFFFFFFFFFF4646
        46000000000000101010878787FFFFFFE0E0E0F3F3F3F4F4F4EBEBEBEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDF1F1F1F2F2F2ECECECDCDCDCCCCCCCCDCD
        CDDEDEDEF0F0F0E0E0E0EEEEEEE6E6E62B2B2B0000001414140000002B2B2BE6
        E6E6F7F7F7FFFFFF0000FFFFFFF9F9F9F7F7F7FDFDFD3E3E3E505050A4A4A40D
        0D0D828282FFFFFFCFCFCFD5D5D5C8C8C8C3C3C3D7D7D7CECECECECECECECECE
        CECECECECECECECECECECECECECECECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
        CDCDCDCDCDCDCDCACACACACACACDCDCDD1D1D1D5D5D5D5D5D5D1D1D1CCCCCCC5
        C5C5E7E7E7EFEFEF3F3F3F4A4A4A959595474747212121E2E2E2F5F5F5FFFFFF
        0000FCFCFCFFFFFFFFFFFFECECEC535353717171FFFFFF1C1C1C939393FAFAFA
        EDEDEDF4F4F4F9F9F9F7F7F7F6F6F6F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F2F2
        F2F1F1F1F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F7F7F7F6F6F6EAEAEA
        3030307E7E7EF8F8F85C5C5C1D1D1DE2E2E2FEFEFEFDFDFD0000FCFCFCF7F7F7
        FFFFFFFFFFFF5454541818184848480D0D0D8A8A8AF7F7F7E4E4E4E1E1E1DEDE
        DEDBDBDBDBDBDBE1E1E1E1E1E1E1E1E1E0E0E0E0E0E0E0E0E0DFDFDFDFDFDFE0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DEDEDEDEDEDEDEDEDE
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDED7D7D7E7E7E7F4F4F43636362424245757
        570909092C2C2CE2E2E2FEFEFEFDFDFD0000FFFFFFFCFCFCFFFFFFFFFFFF5353
        53000000000000000000808080F8F8F8E8E8E8E2E2E2DFDFDFE1E1E1E5E5E5DF
        DFDFDFDFDFDEDEDEDEDEDEDEDEDEDDDDDDDDDDDDDDDDDDDEDEDEDEDEDEDEDEDE
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
        DCDCDCDCDCDCDCDDDDDDEAEAEAF5F5F5404040000000000000000000333333E2
        E2E2FEFEFEFDFDFD0000FFFFFFFFFFFFFFFFFFFAFAFA5454540303030F0F0F04
        0404919191FFFFFFFAFAFAF5F5F5F5F5F5F8F8F8FCFCFCF9F9F9F9F9F9F9F9F9
        F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7EA
        EAEAF2F2F2EEEEEE4545450000000D0D0D0707072D2D2DE2E2E2FEFEFEFDFDFD
        0000FFFFFFFBFBFBFFFFFFFFFFFF545454000000020202000000838383F5F5F5
        DEDEDED8D8D8D7D7D7D5D5D5D4D4D4D7D7D7D6D6D6D6D6D6D6D6D6D5D5D5D5D5
        D5D5D5D5D4D4D4D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5
        D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5DEDEDEEDEDEDECECEC
        4646460000000808080D0D0D2B2B2BE2E2E2FEFEFEFDFDFD0000FCFCFCF8F8F8
        FFFFFFFFFFFF515151000000050505090909909090FFFFFFECECECEBEBEBF1F1
        F1F1F1F1EEEEEEEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9EA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE8E8E8EDEDEDEDEDED4B4B4B0000000000
        00000000323232E2E2E2FEFEFEFDFDFD0000FEFEFEFDFDFDFFFFFFFEFEFE5353
        530303031717170000008B8B8BFFFFFFEBEBEBEBEBEBF3F3F3F5F5F5F2F2F2F6
        F6F6F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F4F4F4F3F3F3F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F0F0F0EEEEEEEFEFEF4949490202020A0A0A000000343434E2
        E2E2FEFEFEFDFDFD0000FFFFFFFBFBFBFCFCFCFFFFFF5B5B5B00000000000000
        00008C8C8CFEFEFEE1E1E1D6D6D6D4D4D4D0D0D0CBCBCBCCCCCCCCCCCCCCCCCC
        CBCBCBCBCBCBCBCBCBCACACACACACACBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCB
        CBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBD4
        D4D4E5E5E5F3F3F33F3F3F0000001111110000002F2F2FE2E2E2FEFEFEFDFDFD
        0000FFFFFFFFFFFFFFFFFFFFFFFF5454540000000A0A0A0000008A8A8AFFFFFF
        F6F6F6F7F7F7FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBFCFCFCF2F2F2
        414141000000080808000000333333E2E2E2FEFEFEFDFDFD0000FFFFFFFFFFFF
        FFFFFFFFFFFF5454540000000A0A0A0303038B8B8BFEFEFEE9E9E9E2E2E2E0E0
        E0DEDEDEDDDDDDE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D8D8D8E4E4E4ECECEC4949490404040F0F
        0F000000272727E2E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFFFFFF5454
        540000000C0C0C000000858585F9F9F9E6E6E6E2E2E2E4E4E4E4E4E4E5E5E5E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E3E3E3EBEBEBECECEC4545450000000C0C0C0000002C2C2CE2
        E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFFFFFF5555550000000D0D0D0B
        0B0B959595FFFFFFFAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF6
        F6F6F8F8F8EFEFEF3F3F3F000000080808010101343434E2E2E2FEFEFEFDFDFD
        0000FFFFFFFEFEFEFFFFFFFFFFFF5555550101010F0F0F000000858585F8F8F8
        E3E3E3DDDDDDDCDCDCDBDBDBDADADADFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDE
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEE4E4E4ECECECEDEDED
        4646460000000E0E0E0000002D2D2DE2E2E2FEFEFEFDFDFD0000FFFFFFFEFEFE
        FFFFFFFEFEFE5656560303031010100404048E8E8EFFFFFFF2F2F2EEEEEEEEEE
        EEEDEDEDECECECEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE7E7E7EFEFEFF0F0F04848480202020E0E
        0E0000002D2D2DE2E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFEFEFE5656
        56030303111111000000878787FFFFFFF8F8F8FAFAFAFEFEFEFFFFFFFFFFFFFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFEFEFEFFFFFFF6F6F64646460000000B0B0B020202333333E2
        E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFEFEFE56565604040412121203
        03038F8F8FFFFFFFFDFDFDFDFDFDFEFEFEFDFDFDFCFCFCFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFC
        FCFCFEFEFEF8F8F84949490000000D0D0D020202323232E2E2E2FEFEFEFDFDFD
        0000FCFCFCFFFFFFFEFEFEFEFEFE5858580000001313130C0C0C848484E6E6E6
        EBEBEBD6D6D6DFDFDFE7E7E7DCDCDCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDEDEDEDEDEDEDEDEDEDFDFDFDFDFDFE0E0E0E0E0E0E1E1E1E2
        E2E2DFDFDFDBDBDBD9D9D9D8D8D8DADADADCDCDCDDDDDDD7D7D7E9E9E9C5C5C5
        5151510303030A0A0A000000393939E4E4E4FFFFFFFDFDFD0000FCFCFCFFFFFF
        FEFEFEFEFEFE5858580000001313130505052828283B3B3B3232322F2F2F3B3B
        3B39393928282833333333333333333333333333333333333333333333333333
        33333333333434343434343535353535353535353636362B2B2B3333333A3A3A
        3B3B3B3838383636363838383B3B3B2727274848483333331111110505051616
        160C0C0C272727E4E4E4FFFFFFFDFDFD0000FCFCFCFFFFFFFFFFFFFEFEFE5959
        590000001414142626262727272626262222222121212121212121211E1E1E21
        2121212121212121212121212121212121212121212121212121212121212121
        2121212222222222222222222222222727273C3C3C5555556464646969696D6D
        6D7676767F7F7F7D7D7D7F7F7F3535351515150B0B0B0F0F0F0F0F0F212121E4
        E4E4FFFFFFFDFDFD0000FCFCFCFFFFFFFFFFFFFFFFFF59595900000015151510
        10101D1D1D2E2E2E3737373232322B2B2B2E2E2E363636313131313131313131
        3131313131313131313131313131313030303030303030303030303030303030
        303030303030301F1F1F3030304242424A4A4A4747474545454848484E4E4E45
        45454848481B1B1B0E0E0E0B0B0B1010100F0F0F343434E4E4E4FFFFFFFDFDFD
        0000FCFCFCFFFFFFFFFFFFFFFFFF5A5A5A0000001616161818181B1B1B1E1E1E
        2020202323232626262424241F1F1F2323232323232323232323232323232323
        2323232323232322222222222222222222222221212121212121212121212121
        21212525252727272525251E1E1E1818181616161616161717171A1A1A1B1B1B
        141414121212181818000000313131E4E4E4FFFFFFFDFDFD0000FCFCFCFFFFFF
        FFFFFFFFFFFF5B5B5B0000001717171515151616161313130D0D0D0F0F0F1414
        141212120B0B0B10101010101010101010101010101010101010101010101010
        10101010100F0F0F0F0F0F0F0F0F0F0F0F0E0E0E0E0E0E1111110F0F0F0D0D0D
        0D0D0D0F0F0F1212121313131313131212120909090E0E0E0606060D0D0D2020
        20000000383838E4E4E4FFFFFFFDFDFD0000FBFBFBFFFFFFFFFFFFFFFFFF5B5B
        5B0000001717171212121717171E1E1E1F1F1F1B1B1B1818181A1A1A1E1E1E19
        1919191919191919191919191919191919191919191919191919191919191919
        1818181818181717171717171717171919191717171414141313131313131313
        131313131212121010101717171414141919191F1F1F2222220303032B2B2BE4
        E4E4FFFFFFFDFDFD0000FCFCFCFFFFFFFFFFFFFFFFFF5C5C5C01010118181821
        21211515151111111A1A1A1C1C1C1515151414141B1B1B121212121212121212
        1212121212121212121212121212121414141313131313131313131212121111
        111111111111111010101313131616161818181818181818181818181919190E
        0E0E2525250C0C0C1414141414140D0D0D0D0D0D313131E4E4E4FFFFFFFEFEFE
        0000FDFDFDFFFFFFFEFEFEFFFFFF5E5E5E040404191919151515212121252525
        2626262626261F1F1F2222221717171616162828282E2E2E2020201717171E1E
        1E2727272828281F1F1F2424241E1E1E2525251818181E1E1E2A2A2A2323232A
        2A2A1C1C1C1111111414141616161E1E1E1515151818181717171B1B1B141414
        1919191515151919190A0A0A313131E3E3E3FEFEFEFDFDFD0000FDFDFDFFFFFF
        FEFEFEFFFFFF5E5E5E0505051A1A1A1B1B1B2121212121212323232121211B1B
        1B2020202525258686869B9B9BAEAEAEB3B3B3B1B1B1B0B0B0AAAAAAA2A2A2B1
        B1B1ACACACB8B8B8BDBDBDC7C7C7C7C7C7CACACAC8C8C8BBBBBBA8A8A86D6D6D
        1818180D0D0D1C1C1C1B1B1B1515151818181B1B1B1515151919191515151919
        190A0A0A313131E3E3E3FEFEFEFDFDFD0000FDFDFDFFFFFFFEFEFEFFFFFF5F5F
        5F0606061B1B1B2222222121211C1C1C2020201C1C1C1616161C1C1C383838F2
        F2F2EFEFEFEBEBEBEBEBEBF0F0F0F7F7F7FEFEFEFFFFFFFFFFFFE8E8E8C5C5C5
        5656564141413C3C3C424242454545DBDBDBFCFCFCCBCBCB2626260A0A0A1313
        131D1D1D1A1A1A1919191C1C1C1616161A1A1A1616161A1A1A0B0B0B323232E3
        E3E3FEFEFEFDFDFD0000FEFEFEFFFFFFFDFDFDFFFFFF5F5F5F0707071C1C1C26
        2626202020191919202020191919151515161616484848E9E9E9E0E0E0D9D9D9
        D6D6D6CCCCCCB6B6B69D9D9D8E8E8E7E7E7E9D9D9DAAAAAA1414140F0F0F1919
        19111111000000A7A7A7F8F8F8EAEAEA2727271313131515151D1D1D1919191A
        1A1A1D1D1D1717171B1B1B1717171B1B1B0C0C0C333333E3E3E3FEFEFEFDFDFD
        0000FEFEFEFFFFFFFDFDFDFFFFFF6060600808081E1E1E252525202020181818
        2323231B1B1B1A1A1A0F0F0F4F4F4FE3E3E3DDDDDDDDDDDDE1E1E1D9D9D9BDBD
        BD9A9A9A828282BCBCBCD8D8D8C2C2C20000000606061E1E1E2222220C0C0CAF
        AFAFF4F4F4E3E3E31919191C1C1C2020201C1C1C1313131B1B1B1E1E1E181818
        1C1C1C1818181C1C1C0D0D0D353535E3E3E3FEFEFEFDFDFD0000FEFEFEFFFFFF
        FDFDFDFFFFFF6060600909092020202424242222221919192424241C1C1C2222
        22090909515151F5F5F5EAEAEADFDFDFDDDDDDE5E5E5EDEDEDEEEEEEECECECEB
        EBEBFAFAFAC6C6C6141414252525252525181818010101B2B2B2EFEFEFE5E5E5
        1E1E1E1818181E1E1E1919191D1D1D1C1C1C2020201919191E1E1E1A1A1A1E1E
        1E0F0F0F363636E3E3E3FEFEFEFDFDFD0000FEFEFEFFFFFFFDFDFDFFFFFF6060
        600A0A0A2121212424242525251A1A1A2222221B1B1B292929050505505050E1
        E1E1DBDBDBCDCDCDBEBEBEBCBCBCC5C5C5C7C7C7C2C2C2BABABAE1E1E1A2A2A2
        0A0A0A2222221F1F1F181818050505A6A6A6E7E7E7E9E9E92929291010101C1C
        1C1818182424241D1D1D2020201A1A1A1F1F1F1A1A1A1F1F1F101010373737E3
        E3E3FEFEFEFDFDFD0000FEFEFEFFFFFFFCFCFCFFFFFF6161610A0A0A21212124
        24242727271A1A1A2020201A1A1A2D2D2D0505054F4F4FECECECE7E7E7D1D1D1
        B2B2B2A5A5A5ABABABADADADA6A6A6A0A0A0F1F1F1B3B3B31616161F1F1F1F1F
        1F1F1F1F070707C3C3C3F1F1F1E4E4E42626260D0D0D2828281A1A1A1919191E
        1E1E2121211B1B1B1F1F1F1B1B1B1F1F1F101010373737E3E3E3FEFEFEFDFDFD
        0000FFFFFFFFFFFFFFFFFFFFFFFF5A5A5A0F0F0F2222222A2A2A1D1D1D212121
        232323191919242424161616494949E4E4E4E5E5E5B3B3B3A1A1A1818181D4D4
        D4C8C8C8767676878787D1D1D1BABABA0D0D0D1B1B1B272727242424040404B1
        B1B1EEEEEEE6E6E62525251E1E1E2222221A1A1A2222221F1F1F1E1E1E202020
        1B1B1B2222221B1B1B121212353535E5E5E5FDFDFDFFFFFF0000FFFFFFFEFEFE
        FFFFFFFFFFFF5C5C5C1111112525252A2A2A2323232424242424242020202626
        261313134B4B4BEDEDEDEAEAEAC7C7C7A9A9A98A8A8ABCBCBCB3B3B3949494B9
        B9B9D1D1D1ACACAC2222221C1C1C1919191B1B1B131313B1B1B1EBEBEBE2E2E2
        2121211C1C1C2828282222222525251D1D1D2222222727271F1F1F2323231C1C
        1C151515383838E3E3E3FCFCFCFFFFFF0000FFFFFFFCFCFCFEFEFEFFFFFF5F5F
        5F1414142929292828282929292424242222222626262727270E0E0E515151FE
        FEFEEBEBEBF6F6F6F1F1F1EFEFEFFEFEFEEDEDEDF1F1F1FDFDFDFCFCFCB6B6B6
        161616181818303030282828000000B1B1B1EAEAEAE1E1E11F1F1F1919192B2B
        2B2828282525252020202626262929291C1C1C1F1F1F1C1C1C161616373737E0
        E0E0FBFBFBFFFFFF0000FFFFFFFBFBFBFDFDFDFFFFFF6161611717172A2A2A26
        26262C2C2C2121211D1D1D2727272626260C0C0C5A5A5A9A9A9A3B3B3B434343
        3E3E3E4242424444443E3E3E484848262626A5A5A5C3C3C31515151212121919
        192B2B2B121212B1B1B1E9E9E9E5E5E523232317171728282829292923232322
        22222424242323231919192222222424241C1C1C383838E0E0E0FAFAFAFFFFFF
        0000FFFFFFFBFBFBFDFDFDFFFFFF6262621616162828282828282B2B2B1F1F1F
        1C1C1C262626272727111111646464AAAAAA2626263B3B3B4848484949494C4C
        4C5656564F4F4F1D1D1DA8A8A8CECECE1B1B1B3F3F3F1D1D1D191919050505B1
        B1B1E5E5E5E8E8E82B2B2B161616242424292929252525252525222222212121
        1E1E1E2C2C2C2929291B1B1B353535E5E5E5FBFBFBFFFFFF0000FFFFFFFBFBFB
        FEFEFEFFFFFF6161611313132323232C2C2C2929292121212121212525252626
        261616166666669999993939396161617C7C7C7676767474748282826F6F6F33
        3333A7A7A7B0B0B00000002626261A1A1A2020200D0D0DB9B9B9E0E0E0E5E5E5
        3030301717172020202828282727272B2B2B2525252626262222222626261919
        191414143F3F3FEDEDEDFDFDFDFFFFFF0000FFFFFFFCFCFCFFFFFFFFFFFF6060
        600F0F0F1C1C1C2D2D2D2121212323232828282020202121211515155C5C5C6B
        6B6B3838383030302B2B2B1E1E1E1616162222221A1A1A0C0C0C999999D3D3D3
        3C3C3C1717170909093232324F4F4FD0D0D0E3E3E3DFDFDF3030301717171B1B
        1B2222222121212626262222222525251E1E1E1818181515153B3B3B949494F6
        F6F6FFFFFFFEFEFE0000FFFFFFFDFCFEFFFFFFFFFEFF5F5F5F0C0B0D1818182A
        2A2A1A1A1A2222222B2B2B1B1B1B1A1A1A1010104F4F4FEEEEEEF1F2F0DADBD9
        DADBD9ECEDEBEAEBE9E9EAE8E6E6E6E4E4E4E7E7E7F4F1F3DBDBDBE8E5E7F1F1
        F1F6F3F5F8F8F8E9E6E8E9E9E9DDDADC2E2E2E1815171717171D1A1C18181816
        16161315151B1D1D151717151515272929828282FFFFFFFCFCFCFFFFFEFDFDFD
        0000FFFEFFF5F4F8FCFBFDFFFEFFABAAAC58575B5D5C5E464646A4A4A4FFFFFF
        FEFEFEA9A9A95F5F5F616260888987E9EAE8E9EAE6E8E9E5E7E8E4E6E7E3E5E6
        E2E4E5E1E3E4E2E0DDDFE1DEE0E4DEE3E3E0E2E7E1E6E6E3E5EAE4E9E8E5E7EB
        E5EAF3F0F2FFFDFFE3E0E29F999E7774767D777C7D7A7C7A7C7C676C6B5C615F
        4D52505A5D5BAAAFADF7FAF8FDFFFEFAFDFBFBFFFAFCFFFD0000FFFEFFF7F6FA
        F8F7FBFFFEFFFBFAFEE3E2E6F5F4F6F9F9F9F6F6F6FAFAFAFFFFFFFFFFFFFFFF
        FFF6F7F5F0F1EFFAFBF7F9FAF6F9FAF6F8FAF4F7F8F4F7F9F3F6F7F3F6F7F3F6
        F4F4F8F3F5F9F4F6FAF5F7FBF6F8FCF7F9FDF8FAFDF8FAFBF6F8FDF8FAFFFEFF
        FFFEFFFBF6F8F9F4F6FDF8FAFAF7F9FBFFFFF8FEFDFBFFFEF0F5F3E0E5E3FAFF
        FDFBFFFEF7FCFAFAFDFBFBFFFAFCFFFB0000FFFEFFFFFEFFF5F4F6FFFEFFFFFE
        FFFFFEFFFFFEFFFFFFFFFAFAFAF4F4F4F4F4F4F7F7F7FAFAFAFFFFFEFFFFFEFF
        FFFEFFFFFEFFFFFEFFFFFCFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F8FCFAFAFFFFFFFFFF
        FFFFFFFFFFFFFFFCFEFEF6FBFAFBFFFFFBFFFFF4F9F8FAFFFEFDFFFFEBEEECFA
        FDFBFBFEFCFCFFFD0000FEFDFFFFFEFFFFFEFFFDFCFEFFFEFFFDFCFEEFEEF0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF8F9F7F9FAF8FDFEFCFDFEFCFDFDFD
        FEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFDFEFCFDFEFAFFFEFAFDFEFAFFFEFAFDFE
        FAFFFEFAFDFEFAFBFAF6FFFFFCF9F8F4F1F2EEFEFDF9F8F9F5F3F2EEFCFDFBFD
        FFFFF5FAF9F8FDFCFAFFFEF3F8F7F7FCFBFDFFFFFDFFFFFBFDFDFCFFFDFDFFFF
        0000FBFAFCFFFEFFFFFEFFFCFBFDFEFDFFFFFEFFFFFEFFFBFBFBFBFCFAFBFBFB
        FAFAFAFBFBFBFDFDFDFBFBFBF9F9F9FDFDFDFDFDFDFEFDFFFFFEFFFFFEFFFFFE
        FFFFFEFFFFFFFFFFFFFCFDFFFBFFFFFBFCFFFAFEFFFAFCFFFAFDFFF9FBFFF9F6
        F8F2FDFFFBFFFFFBFCFFFAFFFFFBFCFFFAFBFDF7FDFFFCFDFFFFF9FBFCFBFDFD
        FDFFFFFDFFFFF7F9FAF8FAFBF9FBFCFBFDFEFCFEFEFDFFFF0000}
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btsalvaClick
      OnKeyDown = btsalvaKeyDown
    end
    object BitBtn2: TBitBtn
      Left = 252
      Top = 382
      Width = 128
      Height = 61
      Cursor = crHandPoint
      Hint = 'Inclui Novo Lan'#231'amento !'
      DoubleBuffered = True
      Glyph.Data = {
        4E240000424D4E24000000000000360000002800000037000000370000000100
        1800000000001824000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFF
        FDFFFEFDFFFEFFFFFFFFF8FEFDEDF5F4EBF0EFF0F0F0E9EEEFE5EAEBE6E8E9ED
        EAECF4EFF1FBF2F5FFF2F6FFF2F4F8F2F3F3EDEEEBE6E7E7E2E4E2DFE1E3E0E2
        E7E6E8E9E8EAF4F1F3FFFCFEFFFFFFFDFFFFFDFDFDFFFFFEFFFEFFFFFDFEFEFE
        FEFEFEFEFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
        FEFEFEFDFDFDFFFFF9FFFDF8FEFAF9F6F5F7EBF0F1E7EFEFECF0F1F2F2F2FFFB
        FDFFFDFFFDFFFFF9FFFEF5FFFDF4FFFCF2FEF8F4FEF8F0FFF5F6FFF7FAFEF8FF
        FFFCFFFFFEF9F4F5ECE9EBE0DFE1DEDBDDE2DFE1F2EDEEFFFAFBFFFFFEFFFEFD
        FFFFFBFFFFFCFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFFFAF4F9F7F0F2F2F0ECF1F8EEF4FFF9FC
        FFFFFEF5FFF8F5FDF3EBFCEFD4F1E2B9E3D1A6DEC79EDDC39CDFC29FE2C59BDE
        BEA6E2C4B3E6CBCDF2DEE4FDEFF1FFF4FAFEF8FFFFFBF2F2F2E5E2E4DBD8DAE1
        E0E2F2F2F2FCFEFEFDFFFEF8FDFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEFEFEFEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFBFBFBEFF0F4EDEEF2F5F4F8FF
        FDFFFFFFFEF5FDF6DAF5E5C3EDD697DDB98FDCB67CD4AC6CCEA263D0A05DCE9C
        58CA9556C8935ACC9760CF9D64CE9F73D3AA89D7B29DD9BBBDE7CED7F6E1F3FA
        F5FAFFFCF0F5F4DCDEDFD8D7DBE5E4E8F5F4F6FFFEFFFEFEFEFFFFFFFEFEFEFD
        FDFDFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFDFDFDF7F7F7F2F2F2F1EF
        F5FCF8FDFFFFFFF0FFF7CDF4DFA5E5C786D6B173CBA34BCC9346C9903BC68934
        C38531C38331C3822FC1802EC07F35BE8035C28335C4863CC88D43C58E51C290
        69CB9D7FD6AAA3DABFC7F0DBEFFFF5FFFCFBF7E9EDE1D5DBDCDBDFEDF2F5FFFF
        FFFFFFFFFFFFFFFCFCFCFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFCFCFCF7F7F7
        F4F4F4F3F3F3FDFFFFF7FFFAD7F7E4A4E3C374D3A656CC9747C88F40C38A2AC1
        8227C08125C18024C2801FBF7D1DBF7D1FC17F1EC38028C07F25BF7E20BE7C23
        C08026BF802CBF8139C48742C68A58CD966ECDA09FDBBCDAF5E5FBFFFBF7F5F4
        DEE0E0D0D8D8F0F0F0FBFBFBFFFFFFFDFDFDFEFEFEFFFFFFFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFC
        FCFCF6F6F6F2F2F2F8F8F8FFFFFFF7FFF5C9ECD88DD5B15FCB9749CB8E38C887
        2BC17F25BF7E1FC0821FBE8023BF8228C48727C38626C28624C2861FBF831FC2
        8420C38521C38223C28222C07E24BE7D28C07F26BC7A33C37B45CA8B5BCA9876
        CAA8ACE4CFEAFFF9FCFFFDEBE3E3D4D4D4ECECECFDFDFDFDFDFDFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFEFEFEFEFEFEFDFDFDFFFF
        FEFFFDFFFFF9FEFAFBF7EFF0ECFFF9FFFEFDFFE3FBF19CE3B873D1A24ACA9331
        C58924BF8223BF7F22C07E21C3811CC0892ABE8827C28920C28819C38835C289
        2DC18128C67F26C38A24C58123C87F20C08422C0842AC7871CBB7D22BE8728BF
        8026B97D40C18651C88B5EC88D9ADFB4E7FAE7FFFDFDE3E3EFCED6CFEEEAE9FF
        FBFFF6FBFAFBFFFCFCFCFCF6FFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FEFEFEFEFEFEF9FFF4FCF8FDFDF6FDF0F7F0F4FFF7FFFDFFE1F4EB8ED6AC6ECD
        9B4DC18C32BF8625C08322BE8125C18125C28225C48423C2822EC38323C48020
        BF7F12BE7E20BF8115C37D10C57A24BE7D1EBC7A1DBE802AC68A2DC38D2DBF88
        31C6872AC5801FC48129BE7F25BA7A2EC17D4AC8875EC38C8BD1ACD4F3DEF2FD
        FBEAE6EBD8D1D4EBEFEAFBFFFCFBFFFEFDFFFFFDFCFEFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFEFEFEFEFEFEF5FFF5FFF8F9F2F3F7F1FFFBFBFFF9E2F8EC
        87D2AC58C98643C48B31BF8425C18421C28423C28428C38628C38626C2851DC7
        7F21C78019C27D3BC58B3AC38F39C08E31C38D2EC48932C48A33C08D37C38E26
        BF7420C58217BE8522C58720C57A1FC17F25C78524C2801EBB7823BF7837C07C
        56C48A76D29FD3F6DCFFFDFFE2DBDED1DBCFF1F7F2FDFFFFFAFDFBFFFCFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFEFEFEFBFDFDF9F5F4F4FAF9FA
        FFFFEBF7EB90D5AA45C38243C8892CC18224C08021C38222C38526C2852AC287
        27C18624C08424C18127C0833DC791AFEACBDDF8E8DFF3E7E2F4E7EBF4E7D9F6
        E7E3FAECCDEAC94EA24321B15820C68923C18B29BF832AC38424C38529C48729
        C3821DC17A2AC17B42C47D43C07A8ACF9DE2F8E6FFFFFED7DAD8D7D9D9FAFBF9
        FDFEFCFFFEFFFEFEFEFEFEFEFFFFFF000000FFFFFFFFFFFFFEFEFEFCFCFCFAF2
        F9F0F7FAFFFEFFF7FCF39EDBB54EBF7C45C98726BC8625C18025C28223C28225
        C18425C08328C08527C18622BF8628C18424BB8339C394CAF2E0FDFFFFFAFFFF
        F8FFFFFDFFFFFBFBFFFFFEFFF2F4D7519B2321B24921CB8921BC892FC18B26BF
        872CBE8726C08523C3872BC28327BD7B29BD753CC27954BA798FD4A1F0FFF4FB
        F3FDD0CFD3E7E5E4FFFFFEF4FEF8FEFEFEFEFEFEFEFEFE000000FFFFFFFFFFFF
        FDFDFDF9F9F9F4F3F5FFFBFFFFFFFFBCE8C354C37F3DC07D36BF871EBE8428C4
        8429C58528C48429C28528C18426C08527C38725C18524C6841FC0822DC590C3
        EED9FFFDFCF8FBFFF9FEFFFBFFFEFFFDFFFEFDFFE7EFD852A32523B4511FC487
        25BF882AC68923BF8827C28921C18520C08426C28628C18427BF7D2ABE763CBD
        724BBD70A3DAB3FBFFFFE9E8EAD0CECDF7F5F5F5FFFAFEFEFEFEFEFEFEFEFE00
        0000FFFFFFFFFFFFFBFBFBF7F7F7F7FEFBFFFBFDDAF6DF65C6863BC27630BE83
        24BB8328C78124C08326C28525C08326C18426C18424C08328C38627C28526C1
        7E25BE7F32C893CBF2DDFFFEFEFDFFFFFDFFFFF9FFFBF7FDFCF3FFFCE2F4DD4C
        A2261CAD5125C48C33C68A29BF7D2CC58D1BC18222C2802AC68622C58827C289
        2CC18220BE7B30C17331BB6D58BB7DC4EBCBFBFFF7D5D4D6D9DADEFCFDFBFEFE
        FEFEFEFEFEFEFE000000FFFFFFFFFFFFFBFBFBF5F5F5FFFDFCF7FFF19CD5A843
        B97229BF7926BF8728C58526C77721C28426C58725C18427C38625C48625C184
        27C28528C18423C5841EBE822CC695C6F0DFFFFCFFFFFCFFFFFDFFFFFFFEFFFD
        FFFFFFFBEDEEDA56A2251BB15818C58B20C28126C78324BF822CC48327C68022
        C37F29BF8428BF8726C28625C1802BBF732CBE7636B66986CD8EF8FFEFEBEEF3
        C7CDD2FBEDF3FEFEFEFEFEFEFEFEFE000000FFFDFFFDFFFBF5FBF0FDFBFAFFFE
        FFC1F4D94EC06D3DBF721DBE8624C38524C08328C18422C38522C38524C38524
        C38525C18425C18426C18426C18426C28523C17F37C792C6F2E1FFFEFFFFFDFF
        FFFFFEFFFEFFFFFEFFFFFDFDEFEDDB4CA0241EAE5522C58D28C48827C38326C2
        8626C28626C28625C18525C18525C18526C28626C28626C48226BA7A2CB6694B
        C162ABE2B5FCF8FFE0D7DAD8E0D9FBFBFBFFFFFFFDFDFD000000FFFCFFFAFBF7
        F7F9F3FFFFFFF1FAF788D0A13DB66130BE7722BE871EC2812BC58427C18625C1
        8425C18426C28526C18426C18427C28528C3862AC38624C38520C07E33C58FC0
        F0DEFCFEFFFFFDFEFAFFFDFAFFFFF8FFFFFFFFFEEBF1DE49A4271CB25521C68D
        25C38726C28225C28226C38326C38325C28225C28225C28225C28226C38322C0
        7D29BE7E31BF7435B1577EC78FF2FFFAEFEAECC7CBC6F0F0F0FEFEFEFDFDFD00
        0000FCFBFFF8F6F5FCF8F7FFFEFFD8F4E055BA6F32B86527C18028C18A1DC180
        2FC68127C28926C18427C28527C28526C18426C18427C28527C28526C18425C4
        8620C07E35C590C2F2E0FBFFFFFFFFFFF9FFFDFAFFFFF5FFFEFEFFFBE9F0DB49
        A2231CAF5323C58B27C38627C38226C48226C48226C48226C48225C38125C381
        26C48226C48224C27F25BC7D2DC2782FB76550B069BAE6C2F1F5F6D6D4D4E5E5
        E5FFFFFFFFFFFF000000FAFCFDFAF5F7FFFAFBFBFDFEA3DDAD3BB65C2CC07225
        C18425C18422C0842BC17F23C28426C18427C28526C28525C18425C18426C285
        26C28525C18424C38522BE7D37C38EC6F0DFFFFEFFFFFEFFFFFFFEFFFEFFFDFF
        FFFFFFFCEDEFDB4CA02223B05328C58C2AC38626C28126C38326C38326C38326
        C38326C38326C38326C38326C38326C48126C28225BC762CBB7232AC5485D28F
        EFFFF9E5DCDFD5D5D5F8F8F8FFFFFF000000FAFCFCFCF2F8FFFEFEF2FFF767C2
        7732B85E2AC5822FC58920C2802BC18B28C18227C58222C18324C38522C38521
        C28422C38523C48623C48622C38520C68722C2803AC691C4F0DFFDFFFFFFFDFE
        FEFFFDFFFEFFFDFDFDFFFEFBEAEFDA4AA12223AF5425C58B23C2841EC38025C1
        8525C18525C18525C18525C18525C18525C18525C18523C38128C38627BC7C32
        C07D29B2565DC56ED4F8E0F0E5EDCECECEF0F0F0FEFEFE000000FAFCFCFDF2FA
        FDFFFED8F8E045B75D31BA6933C68C44CD9524C4822BC08826C28524C27F21C4
        8621C48623C48623C48622C38523C28423C28424C3851CC28322C2803DC994C6
        F2E1FAFFFFFAFFFEFAFFFEFEFDFFFAFFFFFDFFFEE5F0DC45A02320AF5322C38B
        1FC2851BC58324C28624C28624C28625C38725C38725C38724C28624C28624C3
        8329BF8339C48B3FC88A29B85C38B14FA7DDB2FFF7FFD3D3D3E8E8E8FEFEFE00
        0000F9F8FAFFF6FEF7FFF8ACDCB833B55630B97544C99150CF9C32C48D22C07E
        24C1811FBE7E1DBE801CBD7F1EBD7F21BD8020BB7E1FBA7D22BB7E27BD812CBF
        8335C2834FCA98D1F2E3FDFFFFFBFFFFF8FFFEFDFFFFFAFFFFFDFFFFE2ECDB48
        9D2328AD562EC18D28BD851FBE801EBD7F1EBD7F1EBD7F1FBE801FBE801FBE80
        1EBD7F1EBD7F25C48631C5894BCC9948C68B2CB86528AB4A8CD293FFFAFFD4D4
        D4DADADAF8F8F8000000F6F5F7FFFBFFF2FFF582C0922CB45630BC7D55CD9653
        CEA242CA9A1EC67A29C78126C38A26C58725C48628C4872DC6892EC48830C488
        34C78B3BCB9057D29A5ED49970D6A7E5F6E9FFFDFFFFFCFDFDFFFFFFFEFFFDFE
        FFFFFEFFEEEFDF5DA72F47BD6A52D2A147C99438C48926C68426C68426C68426
        C68427C78527C78526C68425C58324C28639C98E56D0A055CD9335BD6F1EA444
        81CE84FFFBFFDBDBDBD6D6D6F7F7F7000000F7F5F5FBFFFFFDFFFF61C0692AB1
        4F33BF8453CC9A4AD1A149C99F41C49279D4B3C6EDD8B9ECD8B9ECD8BBECD8BB
        ECD8BCEAD7BDEBD8C1EEDBC3F0DDDCEFE6DCEDE4E0F0E9EEFAF4F7FFFDFAFFFF
        FBFFFFFDFFFFFFFFFEFFFFFBF2FDEDCBDFC8CCE7CDD5F5DCD1F4E0C7ECDCB9EC
        D8B8E9DBB8ECD5B8ECDAB7ECD8B8ECDBBBEFDE92D59739AB3053CA9759D1A153
        C89138BF7920AB4964BE5EE2F0EAE4E3E7D0CFD1F8F8F8000000F7F5F5FBFFFF
        FCFEFF5CBB6424AF4D34C28758CF9C4FD2A04ECDA050CD9C96E6C9EDFFF6FCFF
        FDFDFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFAFFFCF9FFFBF9FEFCFD
        FFFEFFFFFEFFFFFFFFFDFDFFFDFEFFFBFFFFFDFFFFFFFEF8FAF4FBFFF9FAFFFB
        F7FFFDF3FDFDFFFFFEFFFEFFFFFFFCFFFFFEFFFFFCFEFDFFFCFEFECFE1B2339A
        214CC28D52D19E55CD963EC27F22AA4A4FB24CC6E6D3EAE9EDD2D1D3F8F8F800
        0000F7F5F5FBFFFFFCFCFC56B45B20B14E34C4895ACD9B50CF9C50CD9F56D19F
        A7E7D1FDFFFEFBFDFEFBFDFEFCFEFFFEFDFFFEFDFFFFFDFFFFFCFEFFFCFEFCFE
        FEFBFDFDFCFCFCFEFEFEFFFFFFFFFFFFFFFEFEFFFFFFFFFDFFFFFBFFFFFDFFFF
        FDFFFFFEFFFEF8FDFFFAFFFFFCFFFEFCFCFFFBFFFFFDFCFFFDFFFFFEFEFFFCFF
        FCFBFFCCDAB03D9B2453C8914FD49C51CD973EC18223AB4D41AC3FB7E9C7EEED
        F1D3D2D4F7F7F7000000F6F4F4FDFFFFFDFBFB52AF5421B14B33C68A5CCD9B50
        CE9A4DD09D58D4A0ABE6D2FFFAFCFAFFFEFAFFFEFAFFFEFBFFFFFDFFFFFDFFFF
        FCFEFEFBFDFDF8FCFDF9FDFEFAFEFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFAFF
        FCFAFFFBF9FEFCFBFDFDFEFDFFFBF9F9FFFFFFFFFDFEFAFEF9FBFDFEFBFFF9FA
        FEF9FCFFFBFBFFFFFAFFFEC9DDAE3B9C2453CA934FD49C52CE983EC38525AD4D
        39A632B4E7BBEFEEF2D3D2D4F7F7F7000000F6F4F4FDFFFFFDFBFA51AC4F24AE
        4835C88C5CCF9D50CF9B47D09A53D29BACE7D2FDFEFFFFFEFEFFFEFEFFFEFEFF
        FEFEFFFFFFFFFFFFFFFEFEFFFDFDFCFEFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFF
        FBFFFFFBFFFFF9FFF7FBFFFBF9FFFAF9FEFCFAFFFEF8FDFBFBFFFCF8FEF9FEFF
        FBFFFEFFFEFFFAFCFDFBFDFEFAFDFFFFFBFDFDCADCAD319B2050C8914FD19C53
        CD9740C58624AD4B3BA32CBBE4B7F0EFF3D4D3D5F7F7F7000000F3F2F4FDFFFF
        FFFEFA54AE4F2BAB4233C68858CE9D4FD09D48D19955D096ADE6CDF9FFFDFEFD
        FFFDFCFFFDFCFFFDFCFFFEFDFFFEFDFFFEFDFFFEFDFFFFFDFEFFFEFEFFFDFDFF
        FDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFEFCFCFFFCFEFEFDFFF9FBFC
        FBFDFDF9FBFBF9FDFEFBFEFFFAFFFEF9FDFEFAFFFEFBFEFFF9FCFFC6DAAF33A0
        2051C99252D09F55CB9841C48122A94245A52FC5E4BFF0EFF3D4D3D5F7F7F700
        0000F4F3F5FDFFFFFFFEFB57B0502DA5392EC38352CC9C51D1A04ED39B5DCE92
        B3E3C6F8FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFFFFFCFFFFFEFFFFFEFFFFFEFFFFFFFFFDFEFFFDFEFFFBFFFFFEFFFFFDFFFF
        FFFFFFFFFFFEFEFEFDFDFDFDFFFFFFFEFDFFFDFFFFFFFEFFFFFFFFFFFEFFFEFF
        FFFEFFD0DFB3379D1A50C69151CFA555CA9946C37B25A5364CA734C6E4C7EDEC
        F0D3D2D4F8F8F8000000F4F3F5FDFFFFFFFFFC59B2522DA0322DC28250CE9D52
        CFA14ECA945AC184B3DABAFBFDF1F0FAEEEEFAEEEEFAEEEFFBEFEFFBEFEEFAEE
        EEFAEEEEFAEEECF7EFECF7EFF0F7F2F5FCF7FBFFFEFBFFFFFDFFFFFDFFFFFCFE
        FFFDFFFFF8FBF9F1F5EFEFF4EBEEF6ECEDF4EDF1F7F2F2FAEFF2F8F3F2FAEFF1
        F9EFF0FAEEF0F7F2F0F8F1C2DAA4409A1852C3914DCEA753C79848C27628A230
        55B03DCCEDD8E8E7EBD1D0D2F8F8F8000000F6F9F0FFF8FFF2FFF96CB7612DA0
        2739BC834DCF9856CF9D52C27C60BA677AD07C8BD5998FCF8D90D08E92D29193
        D29494D29692D29690D0948DCE9086D0907DCF8284D090E1F7DFFFFEFFFAFFFD
        FFFEFDFFFCFFF9FEFFFFFCFDF3F7EC85C25479C57381CC8E86D28B8AD49293D1
        9593D19591D1958FD0928ED08F93D48F90CF8982C27A4DAC445FC57356D18F4E
        CD9528B96F32A21F76AE61EBF9F3E0E0E0CFCFCFF9F9F9000000F9FCF3FFFBFF
        F7FFFB8DC88436A3232BB06742C99B5CC99153BA5F58B65F63B46B64BB6B5CBB
        6B5EBC6F61BE7360BE7763C17A64C17C65C27D63C17A66BE7C5FBD7069C07ECF
        EDD4FDFCFEF8FFFFFDFFFEFDFEFFFAFEFFFFFEFFE5ECDF599E2B4EA44C68C17C
        6DC77E66BF7A60BE7760BE7760BE775EBD735BB86D5DB96A5DB96659B45F5CBA
        5553B35554C57B4FCB9733B66624960D8CC47DFBFFFBD9D9D9D6D6D6FBFBFB00
        0000F4F9F0FFF9FAFDFFFFC4E9C33CA21B29AB4C3BC2905ABE725DB44C5DBA5F
        63B2685CBF5D56BE6658C0695AC06E5BC2715CC2755DC5785EC57A5EC57A64C7
        8361C77971CB8AD7F4DDFFFEFFF8FFFFFDFFFEFBFEFFFDFFFFFFFFFEE6F1DD54
        A1274BAC4C66CB8060C87B59BF785CC3725BC2715AC17059BF6D57BC6755B961
        58B85E5AB95E5EB8585DB34D53B75F4AC08535AC4A2696089ECD95FDFDF7D1D1
        D1E2E2E2FDFDFD000000F3F7F1FEF8F3FFFEFFEFFDF247A32629A5333FB96B54
        B14E61B04F5CB3575CB35957BC5A5CBC615EBE645EBF695FBE6D5EBF6F5FBF72
        5FC17560C27659BF785BC07270C686DAF0DDFFFCFFFDFDFDFFFFFCFFFEFFFDFF
        FFFFFEFAE4F2DA54A6254AB04A60C97A55C07157BF785FC16D5DBF6B5CBD675E
        BC675FBB625FB75D5FB55761B5565BAE5266B84F5DB14B43B15F32A3243FA521
        C5E1C4F9F4F3CCCCCCEDEDEDFFFFFF000000F8FCF7FDFAF5FDF8FAFAFBFF76BE
        6422951040A83150AA395FB1585EAF505BB5515CB75A56B75956B95D59BA635A
        BC685BBD6B5ABD6D59BE705BC0725AC17659BF6D6CC381D8EFD9FFFCFFFFFFFF
        FFFFFEFFFDFFFBFFFFFFFFFBE4F4DC51A11E47AA4261C5735BBD6B5DBC7159BC
        6658BB6557B86157B65F5AB65D5CB5585CB3535BB04E64AE565CAD4661AF3C39
        9E2B2B960461B34AF2F7F5E7E4E6D0D0D0F5F5F5FFFFFF000000FCFDFBFAF9F5
        FBF6F8FFFCFFC1E9BF2F90103A960750A6305AB14F62B24D5CB3515EB15559B5
        565AB5585BB75E5CBA635CBA665DBB675CBB6A5EBD6C59C06F55BF6667C37CD2
        F0D7FFFDFFF8FFFFFCFFFDFBFEFFF9FDFEFFFEFAE5F2DC55A2224CAB4367C370
        61BA6462B7675BB9605BB9605BB75E5AB45A5AB1555EB25460B15060B04D66AD
        505BAC4557A8293291072F8F039CCE8EFDF8FFD2D1D5DDDDDDFBFBFBFFFFFF00
        0000FFFDFDF6F5F7F8F8F8FFFFFCEBF3E861A64F298B00459B1955AC3A5EB34A
        60B04B5EAD4C60B35161B35460B45660B45B5FB65C5EB55D5FB65E5FB95F5AB9
        6257BB5C67C076D1F0D5FEFDFFF6FEFEFCFFFDFDFEFFFDFFFFFFFFFCE4F0DC56
        A2254CA84361BC675FB85B62B65E63B65A61B45861B45861B2555EAF5061AE4C
        64B04B63AD475DA84060AD3E3E9A11348E005BA436E1F3DCECEBEFCDCFD0EDED
        EDFDFDFDFFFFFF000000FFFFFFF6F6FCF5F7F7FDFEF4FFFEFCABD9AF26920438
        8F004F9F2653AE4161B04360AD4C5DB34F5CB24E5AB14F5AB3535AB45559B556
        59B8575CBB5A66B85F5DB6566CBB71D6EDD1FFFDFFFBFFFFFFFEFFFFFCFFFBFD
        FEFFFFFEE5F1DF549F2544A13E5CB9645FB95A5DB4585FB6565BB2525CB3535C
        B3515CAF4C5BAE475DAF445AAA3F59AB3B549E282B9000348F0489BF6CFFFEFF
        D9E0D9D0D0D0F8F8F8FFFFFFFFFFFF000000FDFDFDFDFDFDFAFAFAF4F4F4FFFB
        FFDFF2DD65AA412B870038940B55A62B61AF3E62AD435DAC4461B34A5DB04A5D
        B04D5DB2505EB35160B5535EB35161B55750B34F69B96CD5EDD5FFFDFFFDFDFD
        F8FFFAFFFDFFFFFFFBFFFFF9E4EFDF549F2548A43B5CBA555EB94C5DB1525DB5
        4B5CAD4E5FAE4D59AF4159B34257AC445AA9415EA93562A72E37970A278A0054
        9430E7F9DCF1F0F9CDD0CEE5E2E4FFFFFFFFFFFFFFFFFF000000FFFFFFFEFEFE
        F9F9F9F2F2F2FFF8FEF8FFF5B2DDB235890B2E8D0045991562A93B65A83B5CAB
        3E5EAC415EAD4660B04B5EB04D5CAF4C60B44E60B44E5FB25052B5496BB965D6
        EDD1FFFCFFFFFEFFFBFFFEFFF8FFFDFCFFFFFEFFE3EDE1549C2447A03358B24F
        61B94F5DB04E5DB04E5CAA4C62B04B5DAD3C5EAE3D5EA83E5EA53763AB334998
        192F8F00328D029EC78DF9FFFDD7D8DCD0D1D5FAF9F5FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFBFBFBF4F4F4FDF5F6FDFCFFEBFCF87EB86A2B8600389106
        4D961C6AA83663AB405DA83C5EAA3B61AE3F5EAD405CAB435FB0495CAF4960AD
        4C55B23F6BB759D4ECCCFFF9FFFFFFFEFDFFF8FFFEFDFFFFFEFFFEFFE5F1DD5A
        A3254EA72F5CB1495FB1485AAB4460AC4660AC465AA63A61AC3864A83961A137
        68AA3951991D338F022E870072AF4FE7F7E5F0ECF7CACCCDE7EAEFFDFFF7FFFF
        FFFFFFFFFFFFFF000000FEFEFEFFFFFFFFFFFFFCFCFCF1EFEFFCF5FFFAFEF9D7
        EFD75FA13C288100378C0453A0205EA4395EA5375FA8345FAB355FAD3760AE3D
        5FAC445BA84665AC4F58AD396CB353D8F0D2FFFBFFFEFCFFFCFEFEFFFCFFFDFF
        FFFEFAFFE6F4E2589F27499F2361B1465FAA405DAC3D61AA3661AC3860AC365E
        A53166A43867A539559C243E8E0B238500519530CDE4C8FFFFFFD7D5D4D2D2D8
        F8FDFCFEFFFBFFFFFFFFFFFFFFFFFF000000FEFEFEFFFFFFFFFFFFFEFEFEF3F9
        F8F2EFF1FFFFFEF8FFF2C6E5C4418C20298601319303529C265EA53063AA3560
        A73360A63460A8385DA9395DAA3B61A9455AA83371B24FCDEDC4F5FDFCF4FDFA
        F2FDF5F5F9FAF4FDFAF6FBFEDEF4DC5C9E3448982161AB4160A83D5DAB3664AA
        355AA12C62A93560A5365CA2305BA42A3E910C2C85003B8916ACD2A2FDFCFFE5
        E0DFD0D1C8EFEEF2FCFFFBFDFFFEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FEFEFEFAFAFAF7FFFDF1F2F0F7EFF0FFFFF8F8FFFAB5DAB24290251E7D00398C
        074C9B1C5FA63262A43A61A33A5FA3365CA6305EAC2F5DA6385CA62E67AB3C93
        C774A3CD8CA2CB87A4CD82A3CB84A1CA86A8CA8E97C57C59A32B52A32462A738
        64A63C5CA43261A43760A13461A1375DA4364C9C23368E052C81003B880E9AC8
        8DF8FFF9EFEBEAD0CCCBE3E2E4FFFFFEFEFCFCFBFFFAFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFEFEFEFBFBFBFAFEF8FBFDFEF5F6F4F3EFEEFFFEFAF8FEFF
        ADD59E4C8C2D2B830132840648951C5CA23061A63462A7355FA6315DA72F5CA5
        315DA4305EA3305CA12E5CA32B589E225EA2255DA4265EA2255F9D2B599E2B56
        A7285CAD2E60A53261A3345DA233579F3466A73A63A23448911D358D0B2A8500
        42852298C184F4FFF3F4F2F2D2CDCADFE1E2F9FDFEFFFFFCFEF9FBFBFFFFFFFF
        FFFFFFFFFFFFFF000000FEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFAFCFDF6FBFEED
        EFEFF5EEF5FFFCFFFDFFFFC1E0A3409521297E04308102479310529C1C5EA32A
        62A63762A53C5BA4305EA03662A43B569E2C5AA72E59A32D5EA3345AA1335DA4
        2F5B9F305AA03559A43A55A22F61A33261A13062A73459A932549B234B8B133D
        8709227E003E951D9ECC91F6FBFCF7F2F4D6CDCAE0D5E5F1F4FCFAFFF9FFFAFB
        FFFDFFFAFCFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFBFD
        FDFAFCFCFDFFFFF8FAFAECEEEEEFF1F1FBFDFDFDFFFFBCEDB76AA8542B7B0225
        7F00318A0541911A54992A5EA03161A53A5FA4355EA53160A72F61A7325FA432
        5EA1345EA0375BA3335EA23560A13464A23868A43866A33560A02F599A274D8C
        18438E0A2E8600267D00599D46BDE3B9F8FFFBF5EDF8CFCFCFDCDCDCF6F6F6FF
        FFFFFEFEFEFCFCFCFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFFFFFFFDFDFDF2F2F2EFEFEFFBFBFBFFFF
        FCEAFBE09FCC8D47902E247B03288200368A063E8E0B489417519B235BA12F5D
        A1365EA03762A23864A53864A63768A13864A03464A3355DA12C519A204B9819
        439310378A062A8402277A0040832089B677DCF3D7FAFFFCE9EAE8D6D3CEDEDE
        DEF5F5F5FEFEFEFAFAFAFCFCFCFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFCFCFCFCFCFCFFFFFFF8F8F8
        EEEEEEEFEFEFFFF6F9FFFAFFF9FDFED0E9CD87B971438C1E297E002A81013681
        013C84084288134A8C1B51912055942057961B55951752971E4B93174794143D
        8F0E3389072D820228790029790035881475B367C2DFC5F5FAFDFFFAFFE5E0DD
        D6D2D1E4E1E3F6F6F6FFFFFFFFFFFFFBFBFBFEFEFEFEFEFEFBFBFBFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFD
        FDFDFDFDFDFFFFFFFDFDFDF0F0F0E9EAEEE7EAE8F9FBF5FFFFFCF0F9EFD5ECD0
        A1CC8D6199403486152C8009277E00298100298200277F00277D012B7F082F83
        05277E00247D00257C022F7F0E377D1959933B96C979CEE6C3EDFDEBFAFFFFE7
        E6EFD4D3D7D9D7D6EBECEAFEFDFFFFFFFFFCFCFCFDFDFDFFFFFFFFFFFFFBFBFB
        FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFCFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFBFBFBF8FBF9E9EFEAE4EBE4EC
        F1EFF8FAFBFDFFFFFBFCF8F0F2E6C4EFC49BCD936EA8575597314A952145931D
        43911C418F1E41881A49912754993866A35398C88EC9E7C4E0EFE1FAFFFEFFF9
        FFF2EAF1DFDCDED8D9D7DFE3DDF1F5F0FCFFFDFFFEFFFFFFFFFBFBFBFFFFFFFF
        FFFFFCFCFCFDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFCFCFCFDFDFDFFFFFFFAF9
        FFFFFEFFF9F9F3EBE9E8E6E0EBEFE8F7F6F4FAF9FAF6FFFBFFFFFCFFFDFBF3F3
        F8E9ECF4E3E9F3E3E8F1E7E6F0EAEBF7E3E5F4DFE9F8E3EFFDEBF9FFF6FDFFF9
        F5F3F2EFEAECD8DAD4D7D8D6DEDBDDEEEBEDFEFCFCFFFFFEFFFDFDFFFDFFFCFC
        FCFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
        FEFEFEFFFFFFFBFFFEFBFAFEFFFAFFFFFAFFFEF7FCEDEBEBE2E7E5DCE7E4EBE9
        E9F0EEEEF4F2F1F4F5F3F7F7F7FAF9FBFCFBFFF8F9FDFEF4FFF9F1FBF8F0FAF0
        ECF2E5E1E6E1DEE0DCDCDCD5D5D5DDE5E4F1F8F1FDFFF8FFFFFFFFFBFFFFFAFF
        FFFDFFFFFFF8FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFCFCFCFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFF
        FFFFFFFFFFFFFEFEFFFEFEFFFEFEFFFDFDFFFFFCFDFFF9FAFFFAF9FEFDFDFEFF
        FBFAFEF7F4F6E4E9ECDFE2E6DBDFE0DFE1E1E4E4E4E6E4E3E6E2E1E4E0DFDBE3
        D9D9E0D9D8DCD7DDDDDDE0DFE1E2E3E7EDF1F2F7FCFDFDFDFFFCFCFFFCFDFFFC
        FEFFFBFEFCFBFFFEFBFFFEFBFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 456
    Top = 117
  end
  object StandardColorMap1: TStandardColorMap
    HighlightColor = clBtnHighlight
    UnusedColor = 15988985
    DisabledFontColor = clMoneyGreen
    MenuColor = clMenu
    FrameBottomRightOuter = clGray
    SelectedColor = clInactiveCaptionText
    Left = 512
    Top = 16
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clTeal
    FrameBottomRightInner = clInactiveCaptionText
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 544
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 496
    Top = 102
  end
  object Query1: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'select * from MK_diario;')
    Left = 384
    Top = 110
    object Query1Matricula: TStringField
      FieldName = 'Matricula'
      Origin = 'MARKEYTOR."MK_diario.DB".Matricula'
      Size = 4
    end
    object Query1VEICULO_1: TStringField
      FieldName = 'VEICULO_1'
      Origin = 'MARKEYTOR."MK_diario.DB".VEICULO_1'
      Size = 5
    end
    object Query1TIPO_DIA: TStringField
      FieldName = 'TIPO_DIA'
      Origin = 'MARKEYTOR."MK_diario.DB".TIPO_DIA'
      Size = 1
    end
    object Query1Sequencial: TIntegerField
      FieldName = 'Sequencial'
      Origin = 'MARKEYTOR."MK_diario.DB".Sequencial'
    end
    object Query1DIA_MES_ANO: TDateField
      FieldName = 'DIA_MES_ANO'
      Origin = 'MARKEYTOR."MK_diario.DB".DIA_MES_ANO'
    end
    object Query1ENTRADA_1: TStringField
      FieldName = 'ENTRADA_1'
      Origin = 'MARKEYTOR."MK_diario.DB".ENTRADA_1'
      Size = 5
    end
    object Query1ENTRADA_2: TStringField
      FieldName = 'ENTRADA_2'
      Origin = 'MARKEYTOR."MK_diario.DB".ENTRADA_2'
      Size = 5
    end
    object Query1ENTRADA_3: TStringField
      FieldName = 'ENTRADA_3'
      Origin = 'MARKEYTOR."MK_diario.DB".ENTRADA_3'
      Size = 5
    end
    object Query1ENTRADA_4: TStringField
      FieldName = 'ENTRADA_4'
      Origin = 'MARKEYTOR."MK_diario.DB".ENTRADA_4'
      Size = 5
    end
    object Query1SAIDA_1: TStringField
      FieldName = 'SAIDA_1'
      Origin = 'MARKEYTOR."MK_diario.DB".SAIDA_1'
      Size = 5
    end
    object Query1SAIDA_2: TStringField
      FieldName = 'SAIDA_2'
      Origin = 'MARKEYTOR."MK_diario.DB".SAIDA_2'
      Size = 5
    end
    object Query1SAIDA_3: TStringField
      FieldName = 'SAIDA_3'
      Origin = 'MARKEYTOR."MK_diario.DB".SAIDA_3'
      Size = 5
    end
    object Query1SAIDA_4: TStringField
      FieldName = 'SAIDA_4'
      Origin = 'MARKEYTOR."MK_diario.DB".SAIDA_4'
      Size = 5
    end
    object Query1VEICULO_2: TStringField
      FieldName = 'VEICULO_2'
      Origin = 'MARKEYTOR."MK_diario.DB".VEICULO_2'
      Size = 5
    end
    object Query1VEICULO_3: TStringField
      FieldName = 'VEICULO_3'
      Origin = 'MARKEYTOR."MK_diario.DB".VEICULO_3'
      Size = 5
    end
    object Query1VEICULO_4: TStringField
      FieldName = 'VEICULO_4'
      Origin = 'MARKEYTOR."MK_diario.DB".VEICULO_4'
      Size = 5
    end
    object Query1TOTAL_1: TStringField
      FieldName = 'TOTAL_1'
      Origin = 'MARKEYTOR."MK_diario.DB".TOTAL_1'
      Size = 6
    end
    object Query1TOTAL_2: TStringField
      FieldName = 'TOTAL_2'
      Origin = 'MARKEYTOR."MK_diario.DB".TOTAL_2'
      Size = 6
    end
    object Query1TOTAL_3: TStringField
      FieldName = 'TOTAL_3'
      Origin = 'MARKEYTOR."MK_diario.DB".TOTAL_3'
      Size = 6
    end
    object Query1TOTAL_4: TStringField
      FieldName = 'TOTAL_4'
      Origin = 'MARKEYTOR."MK_diario.DB".TOTAL_4'
      Size = 6
    end
    object Query1TOTAL_GERAL: TStringField
      FieldName = 'TOTAL_GERAL'
      Origin = 'MARKEYTOR."MK_diario.DB".TOTAL_GERAL'
      Size = 6
    end
    object Query1INTERVALO: TStringField
      FieldName = 'INTERVALO'
      Origin = 'MARKEYTOR."MK_diario.DB".INTERVALO'
      Size = 5
    end
  end
  object QrVeiculo: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'Select * from Veiculo'
      'Order by numero;')
    Left = 527
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = QrVeiculo
    Left = 423
    Top = 128
  end
  object qrFuncionario: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'select * from Funcionario F, MK_funcao E'
      'where f.funcao = e.codigo'
      'order by f.matricula;')
    Left = 40
    Top = 126
    object qrFuncionarioMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Origin = 'MARKEYTOR."Funcionario.DB".MATRICULA'
      Size = 4
    end
    object qrFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Origin = 'MARKEYTOR."Funcionario.DB".FUNCAO'
      Size = 2
    end
    object qrFuncionarioOPERAVEICULO: TBooleanField
      FieldName = 'OPERAVEICULO'
      Origin = 'MARKEYTOR."Funcionario.DB".OPERAVEICULO'
    end
    object qrFuncionarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'MARKEYTOR."Funcionario.DB".Nome'
      Size = 50
    end
    object qrFuncionarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'MARKEYTOR."Funcionario.DB".SITUACAO'
      Size = 1
    end
    object qrFuncionarioINATIVO_INICIO: TDateField
      FieldName = 'INATIVO_INICIO'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_INICIO'
    end
    object qrFuncionarioINATIVO_FIM: TDateField
      FieldName = 'INATIVO_FIM'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
    end
    object qrFuncionarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
      Size = 2
    end
    object qrFuncionarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
      Size = 25
    end
    object qrFuncionarioHORA_DIARIA: TStringField
      FieldName = 'HORA_DIARIA'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
      Size = 5
    end
    object qrFuncionarioCOMPESA: TBooleanField
      FieldName = 'COMPESA'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
    end
    object qrFuncionarioOPERA_VEICULO: TBooleanField
      FieldName = 'OPERA_VEICULO'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
    end
    object qrFuncionarioREDUCAO_INTERVALO: TStringField
      FieldName = 'REDUCAO_INTERVALO'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
      Size = 5
    end
    object qrFuncionarioLIMITE_HORAS: TStringField
      FieldName = 'LIMITE_HORAS'
      Origin = 'MARKEYTOR."Funcionario.DB".INATIVO_FIM'
      Size = 5
    end
  end
  object dtfuncionario: TDataSource
    DataSet = qrFuncionario
    Left = 76
    Top = 126
  end
  object qrdiretriz: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'select * from diretriz;')
    Left = 310
    Top = 114
    object qrdiretrizSequencial: TIntegerField
      FieldName = 'Sequencial'
      Origin = 'MARKEYTOR."diretriz.DB".Sequencial'
    end
    object qrdiretrizCOM_PRIMEIRA: TDateField
      FieldName = 'COM_PRIMEIRA'
      Origin = 'MARKEYTOR."diretriz.DB".COM_PRIMEIRA'
    end
    object qrdiretrizCOM_SEGUNDA: TDateField
      FieldName = 'COM_SEGUNDA'
      Origin = 'MARKEYTOR."diretriz.DB".COM_SEGUNDA'
    end
    object qrdiretrizCOM_TERCEIRA: TDateField
      FieldName = 'COM_TERCEIRA'
      Origin = 'MARKEYTOR."diretriz.DB".COM_TERCEIRA'
    end
    object qrdiretrizCOM_QUARTA: TDateField
      FieldName = 'COM_QUARTA'
      Origin = 'MARKEYTOR."diretriz.DB".COM_QUARTA'
    end
    object qrdiretrizCOM_QUINTA: TDateField
      FieldName = 'COM_QUINTA'
      Origin = 'MARKEYTOR."diretriz.DB".COM_QUINTA'
    end
    object qrdiretrizJORNADA_MAXIMA: TStringField
      FieldName = 'JORNADA_MAXIMA'
      Origin = 'MARKEYTOR."diretriz.DB".JORNADA_MAXIMA'
      Size = 5
    end
    object qrdiretrizINICIO_ADCIONAL: TStringField
      FieldName = 'INICIO_ADCIONAL'
      Origin = 'MARKEYTOR."diretriz.DB".INICIO_ADCIONAL'
      Size = 5
    end
    object qrdiretrizFIM_ADCIONAL: TStringField
      FieldName = 'FIM_ADCIONAL'
      Origin = 'MARKEYTOR."diretriz.DB".FIM_ADCIONAL'
      Size = 5
    end
    object qrdiretrizINTERVALO_TIPO: TStringField
      FieldName = 'INTERVALO_TIPO'
      Origin = 'MARKEYTOR."diretriz.DB".INTERVALO_TIPO'
      Size = 1
    end
    object qrdiretrizPERIODO_INICIAL: TDateField
      FieldName = 'PERIODO_INICIAL'
      Origin = 'MARKEYTOR."diretriz.DB".PERIODO_INICIAL'
    end
    object qrdiretrizPERIODO_FINAL: TDateField
      FieldName = 'PERIODO_FINAL'
      Origin = 'MARKEYTOR."diretriz.DB".PERIODO_FINAL'
    end
    object qrdiretrizFERIADO: TStringField
      FieldName = 'FERIADO'
      Origin = 'MARKEYTOR."diretriz.DB".FERIADO'
      Size = 3
    end
    object qrdiretrizFALTA: TStringField
      FieldName = 'FALTA'
      Origin = 'MARKEYTOR."diretriz.DB".FALTA'
      Size = 3
    end
    object qrdiretrizSUSPENSAO: TStringField
      FieldName = 'SUSPENSAO'
      Origin = 'MARKEYTOR."diretriz.DB".SUSPENSAO'
      Size = 3
    end
    object qrdiretrizHORAEXTRA: TStringField
      FieldName = 'HORAEXTRA'
      Origin = 'MARKEYTOR."diretriz.DB".HORAEXTRA'
      Size = 3
    end
    object qrdiretrizREFLEXOEXTRA: TStringField
      FieldName = 'REFLEXOEXTRA'
      Origin = 'MARKEYTOR."diretriz.DB".REFLEXOEXTRA'
      Size = 3
    end
    object qrdiretrizADICIONAL: TStringField
      FieldName = 'ADICIONAL'
      Origin = 'MARKEYTOR."diretriz.DB".ADICIONAL'
      Size = 3
    end
  end
  object dtlanca: TDataSource
    DataSet = qrlanca
    Left = 238
    Top = 122
  end
  object qrlanca: TTable
    DatabaseName = 'mArKeYtOR'
    TableName = 'MK_Diario.DB'
    Left = 200
    Top = 128
    object qrlancaMatricula: TStringField
      FieldName = 'Matricula'
      Size = 4
    end
    object qrlancaSequencial: TAutoIncField
      FieldName = 'Sequencial'
      ReadOnly = True
    end
    object qrlancaDIA_MES_ANO: TDateField
      FieldName = 'DIA_MES_ANO'
    end
    object qrlancaENTRADA_1: TStringField
      FieldName = 'ENTRADA_1'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaENTRADA_2: TStringField
      FieldName = 'ENTRADA_2'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaENTRADA_3: TStringField
      FieldName = 'ENTRADA_3'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaENTRADA_4: TStringField
      FieldName = 'ENTRADA_4'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaSAIDA_1: TStringField
      FieldName = 'SAIDA_1'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaSAIDA_2: TStringField
      FieldName = 'SAIDA_2'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaSAIDA_3: TStringField
      FieldName = 'SAIDA_3'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaSAIDA_4: TStringField
      FieldName = 'SAIDA_4'
      EditMask = '!00:00;1;_'
      Size = 5
    end
    object qrlancaVEICULO_1: TStringField
      FieldName = 'VEICULO_1'
      Size = 5
    end
    object qrlancaVEICULO_2: TStringField
      FieldName = 'VEICULO_2'
      Size = 5
    end
    object qrlancaVEICULO_3: TStringField
      FieldName = 'VEICULO_3'
      Size = 5
    end
    object qrlancaVEICULO_4: TStringField
      FieldName = 'VEICULO_4'
      Size = 5
    end
    object qrlancaTOTAL_1: TStringField
      FieldName = 'TOTAL_1'
      EditMask = '!00:00;1;_'
      Size = 6
    end
    object qrlancaTOTAL_2: TStringField
      FieldName = 'TOTAL_2'
      EditMask = '!00:00;1;_'
      Size = 6
    end
    object qrlancaTOTAL_3: TStringField
      FieldName = 'TOTAL_3'
      EditMask = '!00:00;1;_'
      Size = 6
    end
    object qrlancaTOTAL_4: TStringField
      FieldName = 'TOTAL_4'
      EditMask = '!00:00;1;_'
      Size = 6
    end
    object qrlancaTOTAL_GERAL: TStringField
      FieldName = 'TOTAL_GERAL'
      EditMask = '!00:00;1;_'
      Size = 6
    end
    object qrlancaTIPO_DIA: TStringField
      FieldName = 'TIPO_DIA'
      Size = 1
    end
    object qrlancaINTERVALO: TStringField
      FieldName = 'INTERVALO'
      EditMask = '!00:00;1;_'
      Size = 5
    end
  end
end
