object FormAcompanhamento: TFormAcompanhamento
  Left = 2
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Clock'
  ClientHeight = 721
  ClientWidth = 346
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 69
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Viagens Programas '
    Color = 16079481
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 69
    Width = 346
    Height = 652
    Align = alClient
    DataSource = DataSource1
    PanelHeight = 54
    PanelWidth = 329
    TabOrder = 1
    RowCount = 12
    object DBText1: TDBText
      Left = 7
      Top = 6
      Width = 97
      Height = 43
      DataField = 'Hora'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -32
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 128
      Top = 6
      Width = 97
      Height = 19
      DataField = 'Linha'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = 9633865
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 128
      Top = 31
      Width = 73
      Height = 19
      DataField = 'Veiculo'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = 16737457
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 235
      Top = 20
      Width = 73
      Height = 19
      DataField = 'Tabela'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
  end
  object QrHora: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'dia'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'coligada'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'select top 20 Substring(Convert(char,Ass_Hora ,108),1,5) as Hora' +
        ', Ass_Vei as Veiculo, Ass_Linha as Linha,'
      'Ass_Tabela as Tabela'
      ' from tb_escAssociacao'
      'where Ass_Hora > Substring(Convert(char,GetDate() ,108),1,5)'
      'and Ass_Data =:dia'
      'and ass_coligada=:coligada'
      'Order by Ass_hora, Ass_linha')
    Left = 296
    Top = 120
  end
  object Timer1: TTimer
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 160
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = QrHora
    Left = 296
    Top = 216
  end
end
