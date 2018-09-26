object FormDispEnvelope: TFormDispEnvelope
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Envelope (Resumo)'
  ClientHeight = 602
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 655
    Height = 464
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 653
      Height = 448
      Align = alTop
      Color = 14024703
      DataSource = DtEnvelope
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Evento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'SaldoGeral'
          Title.Caption = 'Saldo Geral'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 572
    Top = 567
    Width = 75
    Height = 25
    Caption = 'Ok'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 97
    Align = alTop
    Enabled = False
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 104
      Top = 42
      Width = 417
      Height = 49
      Caption = 'Per'#237'odo Ativo'
      TabOrder = 0
      object DBText1: TDBText
        Left = 24
        Top = 21
        Width = 145
        Height = 17
        DataField = 'Periodo'
        DataSource = DtEnvelope
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 216
        Top = 21
        Width = 73
        Height = 17
        DataField = 'PeriodoInicial'
        DataSource = DtEnvelope
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 328
        Top = 21
        Width = 73
        Height = 17
        DataField = 'PeriodoFinal'
        DataSource = DtEnvelope
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 290
        Top = 21
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object Label4: TLabel
        Left = 189
        Top = 21
        Width = 17
        Height = 13
        Caption = 'De:'
      end
    end
  end
  object DtEnvelope: TDataSource
    DataSet = QrEnvelope
    Left = 550
    Top = 51
  end
  object QrEnvelope: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'chapa'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'select D.Tpe_Des as Periodo, A.Pto_Data as Data, B.Tve_Des as Ev' +
        'ento, convert(char(5),A.Pto_SaldoGeral,108) as SaldoGeral,'
      'D.Tpe_Inicio as PeriodoInicial, D.Tpe_Fim as PeriodoFinal,'
      
        ' C.Cha_Pro As Chapa, C.Nom_Pro as Nome, E.Des_Funcao as Funcao f' +
        'rom Tb_PtoMov A'
      'Left Join Tb_PtoEventos B On B.Tve_Cod = A.Pto_Evento'
      'Join Tb_Profissionais C On C.Cod_Pro = A.Pto_Chapa'
      
        'Join TB_PtoPeriodos D On D.Tpe_Cod = A.Pto_Periodo And Tpe_Ativo' +
        ' = '#39'1'#39
      'Join Tb_Funcao E On E.Cod_Funcao = C.FUn_Pro'
      'Where C.Cod_pro=:chapa'
      'And (A.Pto_Data >=D.Tpe_Inicio and A.Pto_Data <= D.Tpe_FIm)')
    Left = 609
    Top = 51
  end
end
