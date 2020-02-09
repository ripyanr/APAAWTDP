object frDatabaseOption: TfrDatabaseOption
  Left = 214
  Top = 140
  AlphaBlend = True
  AlphaBlendValue = 200
  BorderStyle = bsDialog
  Caption = 'Database Connection'
  ClientHeight = 46
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tPath: TEdit
    Left = 16
    Top = 8
    Width = 425
    Height = 31
    BorderStyle = bsNone
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bBrowse: TBitBtn
    Left = 448
    Top = 7
    Width = 25
    Height = 34
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bBrowseClick
  end
  object bConnection: TButton
    Left = 480
    Top = 8
    Width = 73
    Height = 33
    Caption = 'Connect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bConnectionClick
  end
  object odlg_DBOption: TOpenDialog
    Filter = 'Database Access (*.accdb)|*.accdb'
    Left = 16
    Top = 8
  end
end
