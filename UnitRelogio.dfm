object FormRelogio: TFormRelogio
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormRelogio'
  ClientHeight = 737
  ClientWidth = 1255
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelHora: TLabel
    Left = 80
    Top = 476
    Width = 102
    Height = 75
    Caption = '3:03'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -64
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object LabelData: TLabel
    Left = 80
    Top = 545
    Width = 277
    Height = 40
    Caption = 'Monday, November 12'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -33
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 1255
    Height = 65
    Align = alTop
    Brush.Color = 1507328
  end
  object LabelColigada: TLabel
    Left = 8
    Top = 8
    Width = 196
    Height = 43
    Caption = 'LabelColigada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 0
    Top = 608
    Width = 1255
    Height = 129
    Align = alBottom
    Brush.Color = 1507328
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 784
    Top = 40
  end
  object DtColigada: TDataSource
    DataSet = Pai.QrColigadas
    Left = 136
    Top = 88
  end
  object QrTemp: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select case DATEPART(DW, GETDATE())'
      '    when 1 Then '#39'Domingo'#39
      '    when 2 Then '#39'Segunda'#39
      '    when 3 Then '#39'Ter'#231'a'#39
      '    when 4 Then '#39'Quarta'#39
      '    when 5 Then '#39'Quinta'#39
      '    when 6 Then '#39'Sexta'#39
      '    when 7 Then '#39'Sabado'#39
      '    End DiaSemana,'
      'case DATEPART(MONTH, GETDATE())'
      '    when 1 Then '#39'Janeiro'#39
      '    when 2 Then '#39'Fevereiro'#39
      '    when 3 Then '#39'Mar'#231'o'#39
      '    when 4 Then '#39'Abril'#39
      '    when 5 Then '#39'Maio'#39
      '    when 6 Then '#39'Junho'#39
      '    when 7 Then '#39'Julho'#39
      '    when 8 Then '#39'Agosto'#39
      '    when 9 Then '#39'Setembro'#39
      '    when 10 Then '#39'Outubro'#39
      '    when 11 Then '#39'Novembro'#39
      '    when 12 Then '#39'Dezembro'#39
      '    End Mes,'
      '    '
      
        'CONVERT(varchar(5), GETDATE(),114) as Hora, CONVERT(varchar(2), ' +
        'GETDATE(),103) Dia, CONVERT(varchar(4), GETDATE(),102) ano')
    Left = 104
    Top = 88
  end
  object QrPro: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'chapa'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Tb_profissionais A'
      'Join Tb_Funcao B on B.cod_funcao =a.fun_pro'
      'where '
      'Cod_Coligada=:coligada'
      'and cha_pro=:chapa')
    Left = 168
    Top = 88
  end
end
