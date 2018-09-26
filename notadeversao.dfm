object FmNovaVersao: TFmNovaVersao
  Left = 194
  Top = 118
  Width = 591
  Height = 480
  Caption = 'Notas de versao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 40
    Top = 88
    Width = 505
    Height = 297
    Lines.Strings = (
      'Reestruturar o banco de dados:'
      ''
      
        'alterar a tabela funcionario, incluindo datae fim do periodo de ' +
        'inatividade'
      'campos'
      'ativo, demitido e inativo provisoriamente')
    TabOrder = 0
  end
end
