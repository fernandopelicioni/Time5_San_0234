object FormIndicadorGrafico: TFormIndicadorGrafico
  Left = 0
  Top = 0
  Caption = 'Mapa de utiliza'#231#227'o de M'#227'o de Obra'
  ClientHeight = 705
  ClientWidth = 1372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1372
    Height = 664
    Align = alClient
    DataSource = DtPlanilha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Chapa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 364
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '28'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '07'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '17'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '23'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '25'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Width = 30
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 664
    Width = 1372
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 92
      Height = 21
      Caption = '1 - NORMAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 114
      Top = 6
      Width = 77
      Height = 21
      Caption = '2 - FOLGA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 215
      Top = 6
      Width = 68
      Height = 21
      Caption = '3 - FALTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 303
      Top = 6
      Width = 105
      Height = 21
      Caption = '4 - ATESTADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 423
      Top = 6
      Width = 78
      Height = 21
      Caption = '5 - FERIAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 507
      Top = 6
      Width = 191
      Height = 21
      Caption = '6/14 - AFAST/INATO/DEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 966
      Top = 6
      Width = 128
      Height = 21
      Caption = '12 FORA ESCALA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388863
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 1223
      Top = 6
      Width = 137
      Height = 21
      Caption = '16 - FOLGA COMP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 720
      Top = 6
      Width = 108
      Height = 21
      Caption = '8 - ABONADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 834
      Top = 6
      Width = 126
      Height = 21
      Caption = '11 - LIC. REMUN.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 1100
      Top = 6
      Width = 101
      Height = 21
      Caption = '13 - FERIADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DtPlanilha: TDataSource
    DataSet = QrIndPlanilha1
    Left = 768
    Top = 48
  end
  object QrIndPlanilha1: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'periodo26'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo27'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo28'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo29'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo30'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo01'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo02'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo03'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo04'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo05'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo06'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo07'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo08'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo09'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo10'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo11'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo12'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo13'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo14'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo15'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo16'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo17'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo18'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo19'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo20'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo21'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo22'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo23'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo24'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodo25'
        Size = -1
        Value = Null
      end
      item
        Name = 'periodoT'
        Size = -1
        Value = Null
      end
      item
        Name = 'per'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select '
      '    Pro.Cod_pro as CodPro, '
      #9'Pro.Cha_pro as Chapa, '
      '    Pro.Nom_pro as Nome,'
      #9
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'26'#39 +
        '   and mov26.Pto_periodo =:periodo26) as '#39'26'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'27'#39 +
        '   and mov26.Pto_periodo =:periodo27) as '#39'27'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'28'#39 +
        '   and mov26.Pto_periodo =:periodo28) as '#39'28'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'29'#39 +
        '   and mov26.Pto_periodo =:periodo29) as '#39'29'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'30'#39 +
        '   and mov26.Pto_periodo =:periodo30) as '#39'30'#39','
      
        #9'--(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_' +
        'CHAPA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'3' +
        '1'#39' and mov26.Pto_periodo =:periodo31) as '#39'31'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'01'#39 +
        '   and mov26.Pto_periodo =:periodo01) as '#39'01'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'02'#39 +
        '   and mov26.Pto_periodo =:periodo02) as '#39'02'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'03'#39 +
        '   and mov26.Pto_periodo =:periodo03) as '#39'03'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'04'#39 +
        '   and mov26.Pto_periodo =:periodo04) as '#39'04'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'05'#39 +
        '   and mov26.Pto_periodo =:periodo05) as '#39'05'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'06'#39 +
        '   and mov26.Pto_periodo =:periodo06) as '#39'06'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'07'#39 +
        '   and mov26.Pto_periodo =:periodo07) as '#39'07'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'08'#39 +
        '   and mov26.Pto_periodo =:periodo08) as '#39'08'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'09'#39 +
        '   and mov26.Pto_periodo =:periodo09) as '#39'09'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'10'#39 +
        '   and mov26.Pto_periodo =:periodo10) as '#39'10'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'11'#39 +
        '   and mov26.Pto_periodo =:periodo11) as '#39'11'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'12'#39 +
        '   and mov26.Pto_periodo =:periodo12) as '#39'12'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'13'#39 +
        '   and mov26.Pto_periodo =:periodo13) as '#39'13'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'14'#39 +
        '   and mov26.Pto_periodo =:periodo14) as '#39'14'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'15'#39 +
        '   and mov26.Pto_periodo =:periodo15) as '#39'15'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'16'#39 +
        '   and mov26.Pto_periodo =:periodo16) as '#39'16'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'17'#39 +
        '   and mov26.Pto_periodo =:periodo17) as '#39'17'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'18'#39 +
        '   and mov26.Pto_periodo =:periodo18) as '#39'18'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'19'#39 +
        '   and mov26.Pto_periodo =:periodo19) as '#39'19'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'20'#39 +
        '   and mov26.Pto_periodo =:periodo20) as '#39'20'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'21'#39 +
        '   and mov26.Pto_periodo =:periodo21) as '#39'21'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'22'#39 +
        '   and mov26.Pto_periodo =:periodo22) as '#39'22'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'23'#39 +
        '   and mov26.Pto_periodo =:periodo23) as '#39'23'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'24'#39 +
        '   and mov26.Pto_periodo =:periodo24) as '#39'24'#39','
      
        #9'(select Avg(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO and Convert(char(2),Mov26.pto_data,103) = '#39'25'#39 +
        '   and mov26.Pto_periodo =:periodo25) as '#39'25'#39','
      ''
      
        #9'(select sum(Mov26.Pto_evento) from tb_ptoMov Mov26 where PTO_CH' +
        'APA = Pro.COD_PRO  and Mov26.Pto_evento is not null and mov26.Pt' +
        'o_periodo =:periodoT) as Total'
      ''
      #9'From TB_PROFISSIONAIS Pro'
      ''
      ''
      #9'where Pro.ATIVO_PRO = '#39'A'#39
      '--'#9'--and Pro.Cod_Coligada = 1'
      
        #9'and (select sum(Mov26.Pto_evento) from tb_ptoMov Mov26 where PT' +
        'O_CHAPA = Pro.COD_PRO  and mov26.Pto_periodo =:per)>1'
      ''
      ''
      ''
      'Group by Pro.Cod_pro,Pro.Cha_pro, Pro.NOM_PRO'
      'order by Nome'
      '')
    Left = 896
    Top = 136
  end
end
