object FormCriaArquivo: TFormCriaArquivo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Integra'#231#227'o TIME X TOTVS LABORE'
  ClientHeight = 435
  ClientWidth = 584
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
  object Gauge2: TGauge
    Left = 11
    Top = 349
    Width = 565
    Height = 78
    ForeColor = 16711808
    Progress = 0
  end
  object Label4: TLabel
    Left = 19
    Top = 335
    Width = 46
    Height = 13
    Caption = 'Grava'#231#227'o'
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 568
    Height = 113
    TabOrder = 0
    object Label2: TLabel
      Left = 33
      Top = 25
      Width = 40
      Height = 13
      Caption = 'Destino:'
    end
    object SpeedButton2: TSpeedButton
      Left = 360
      Top = 25
      Width = 65
      Height = 65
      Glyph.Data = {
        1E180000424D1E1800000000000036000000280000002D0000002D0000000100
        180000000000E8170000C40E0000C40E00000000000000000000E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6C4C3C2716F6F4D4B4B4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F
        4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D
        4F4D4D4F4D4D4F4D4D545252A5A3A3E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6646262807F7FBFBEBEBFBEBEBFBEBEBFBE
        BEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBF
        BEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEAAA9A95251518C8A8AE8E7E6E8E7E6
        E8E7E6E8E4DCE8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E65957577A7878ECECECFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE1E1E15F
        5D5DDDDCDBE8E7E6E8E7E6E0B759E7E1D2E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64D4B4BBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B4B3E8E7E6E7E1D2DB9A06E2C27BE8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B4B3E8E7E6E2C176DA9800DCA3
        1FE8E7E5E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFDFA
        F4F7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7
        EACAF7EACAFAF1DCFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B4B3E8E6E3
        DCA119DA9800DA9800E5D2A7E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFE
        FEFEFEFEFEFEF9EED6E2AD33E2AD33E2AD33E2AD33E2AD33E2AD33E2AD33E2AD
        33E2AD33E2AD33E2AD33E2AD33ECC979FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD51
        4F4FB5B4B3E4CD99DA9800DA9800DA9800DFB24BE8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B4B3DEAC3ADA9800DA9800DA9800DB9A04E7DFCFE8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B3B1DA9800DA9800DA9800DA98
        00DA9800E3C686E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFBF5
        E6EDCD82EDCD82EDCD82EDCD82EDCD82EDCD82EDCD82EDCD82EDCD82EDCD82ED
        CD82EDCD82F3DEADFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B2AFDA9800
        DA9800DA9800DA9800DA9800E2C581E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFE
        FEFEFEFEFEFEFBF4E4ECCA7BECCA7BECCA7BECCA7BECCA7BECCA7BECCA7BECCA
        7BECCA7BECCA7BECCA7BECCA7BF2DCA8FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD51
        4F4FB5B2AEDA9800DA9800DA9800DA9800DA9800E2C582E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B2AEDA9800DA9800DA9800DA9800DA9800E2C583E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B2AEDA9800DA9800DA9800DA98
        00DA9800E2C582E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEF8EC
        D1DEA217DEA217DEA217DEA217DEA217DEA217DEA217DEA217DEA217DEA217DE
        A217DEA217E9C267FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B2AEDA9800
        DA9800DA9800DA9800DA9800E2C582E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFE
        FEFEFEFEFEFEFEFCF9FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3
        E2FBF3E2FBF3E2FBF3E2FBF3E2FCF7ECFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD51
        4F4FB5B2AEDA9800DA9800DA9800DA9800DA9800E2C581E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B2AEDA9800DA9800DA9800DA9800DA9800E2C480E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFCF9FBF3E2FBF3E2FB
        F3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FBF3E2FCF7EC
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B3B0DA9800DA9800DA9800DA98
        00DA9800E2C47EE8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEF8EC
        D1DEA217DEA217DEA217DEA217DEA217DEA217DEA217DEA217DEA217DEA217DE
        A217DEA217E9C267FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B3B0DA9800
        DA9800DA9800DA9800DA9800E2C37DE8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD51
        4F4FB5B3B1DA9800DA9800DA9800DA9800DA9800E2C37CE8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B4B2DA9800DA9800DA9800DA9800DA9800E2C27BE8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFCF7EBF1D89EF1D89EF1
        D89EF1D89EF1D89EF1D89EF1D89EF1D89EF1D89EF1D89EF1D89EF1D89EF6E5BF
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B4B2DA9800DA9800DA9800DA98
        00DA9800E2C279E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFAF2
        DFE8BF5FE8BF5FE8BF5FE8BF5FE8BF5FE8BF5FE8BF5FE8BF5FE8BF5FE8BF5FE8
        BF5FE8BF5FF0D596FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B4B3DA9800
        DA9800DA9800DA9800DA9800E2C177E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD51
        4F4FB5B4B3DA9901DA9800DA9800DA9800DA9800E2C176E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B4B3DB9902DA9800DA9800DA9800DA9800E2C175E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEF9EED6E2AD33E2AD33E2
        AD33E2AD33E2AD33E2AD33E2AD33E2AD33E2AD33E2AD33E2AD33E2AD33ECC979
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B4B3DB9902DA9800DA9800DA98
        00DA9800E1C074E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFEFEFEFEFEFEFEFDFA
        F4F7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7EACAF7
        EACAF7EACAFAF1DCFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD514F4FB5B4B3DB9902
        DA9800DA9800DA9800DA9800E1C073E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64E4C4CBEBDBDFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD51
        4F4FB5B4B3DB9902DA9800DA9800DA9800DA9800E1C073E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E64D4B4BBE
        BDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFDFDFD514F4FB5B4B3DA9901DA9800DA9800DA9800DA9800E1C074E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6716F6F7E7D7DECECECFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEF1F0F0595757CDCCCBDA9800DA9800DA9800DA98
        00DA9800E2C175E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6C4C3C26462627B7979BEBEBEBFBEBEBFBEBEBFBE
        BEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBFBEBEBF
        BEBEBFBEBEBFBEBEBFBEBEBFBEBEBEBEBEB2B1B15C5A5AC5C3C3E8E7E6E6D7B7
        E6D7B7E6D7B7E6D7B7E6D7B7E7E0D0E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E65A58584D4B4B
        4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D
        4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D4F4D4D504E4EA5A4A3D1
        D0CFE8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E600E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8
        E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6
        E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7
        E600}
      OnClick = SpeedButton2Click
    end
    object Edit2: TEdit
      Left = 33
      Top = 39
      Width = 264
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'C:\Genoma\Exp.TXT'
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 127
    Width = 568
    Height = 202
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Left = 440
    Top = 48
  end
  object QrProventos: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      ''
      'CHA_PRO AS CHAPA,'
      'PPR_EXPORTACAO AS CODEXP,'
      'case'
      '    when PPR_EXPORTACAO IN ('#39'0070'#39','#39'0008'#39','#39'0157'#39') then'
      '        case when PREL01_ref = '#39'1'#39' then '#39'007:20'#39
      '             when PREL01_ref = '#39'2'#39' then '#39'014:40'#39
      '             when PREL01_ref = '#39'3'#39' then '#39'022:00'#39
      '             when PREL01_ref = '#39'4'#39' then '#39'029:20'#39
      '             when PREL01_ref = '#39'5'#39' then '#39'036:40'#39
      '             when PREL01_ref = '#39'6'#39' then '#39'044:00'#39
      '             when PREL01_ref = '#39'7'#39' then '#39'051:20'#39
      '             when PREL01_ref = '#39'8'#39' then '#39'058:40'#39
      '             when PREL01_ref = '#39'9'#39' then '#39'066:00'#39
      '             end'
      '    when Prel01_hora is null then '#39'00:00'#39' else PREL01_HORA'
      '    end AS HORA,'
      ''
      'PREL01_REF AS REFERENCIA'
      ''
      ''
      ''
      ' from TB_PTOREL01 A'
      ''
      ''
      ''
      ''
      'JOIN TB_PTOPROVENTOS B ON B.PPR_ID = PREL01_PROVENTO'
      'JOIN TB_PROFISSIONAIS C ON C.COD_PRO = PREL01_CHAPA'
      ''
      ''
      'where PPR_GERA = 1'
      ''
      'order by CHAPA, PREL01_PROVENTO'
      ''
      ''
      '')
    Left = 487
    Top = 40
  end
end
