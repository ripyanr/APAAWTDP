object frReportMaster: TfrReportMaster
  Left = 436
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Master Report'
  ClientHeight = 231
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 120
    Width = 53
    Height = 13
    Caption = 'Category'
  end
  object Label2: TLabel
    Left = 32
    Top = 152
    Width = 40
    Height = 13
    Caption = 'Search'
  end
  object rgReportMaster: TRadioGroup
    Left = 16
    Top = 8
    Width = 305
    Height = 73
    Caption = 'Laporan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Advertiser'
      'Sales'
      'Advertisement')
    ParentFont = False
    TabOrder = 0
    OnClick = rgReportMasterClick
  end
  object bPrint: TBitBtn
    Left = 240
    Top = 184
    Width = 81
    Height = 33
    Caption = 'Print'
    TabOrder = 5
    OnClick = bPrintClick
  end
  object cekFilter: TCheckBox
    Left = 24
    Top = 88
    Width = 169
    Height = 17
    Caption = 'Filter berdasarkan'
    TabOrder = 1
    OnClick = cekFilterClick
  end
  object cbCategory: TComboBox
    Left = 120
    Top = 112
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbCategoryChange
  end
  object cbSearch: TComboBox
    Left = 120
    Top = 144
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnChange = cbSearchChange
  end
  object bPrintPriview: TBitBtn
    Left = 120
    Top = 184
    Width = 105
    Height = 33
    Caption = 'Print Priview'
    TabOrder = 4
    OnClick = bPrintPriviewClick
  end
end
