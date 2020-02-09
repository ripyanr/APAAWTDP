object frMonthReport: TfrMonthReport
  Left = 633
  Top = 158
  BorderStyle = bsDialog
  Caption = 'Monthly Report'
  ClientHeight = 265
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 10
    Top = 72
    Width = 295
    Height = 145
    TabOrder = 1
    object Label42: TLabel
      Left = 56
      Top = 80
      Width = 53
      Height = 13
      Caption = 'First date'
    end
    object Label43: TLabel
      Left = 56
      Top = 104
      Width = 52
      Height = 13
      Caption = 'Last date'
    end
    object rb_filterDate: TRadioButton
      Left = 8
      Top = 40
      Width = 153
      Height = 25
      Caption = 'Period'
      TabOrder = 1
      OnClick = rb_filterDateClick
    end
    object dtFilter3: TDateTimePicker
      Left = 160
      Top = 72
      Width = 113
      Height = 21
      Date = 41094.804790694440000000
      Time = 41094.804790694440000000
      TabOrder = 2
    end
    object dtFilter4: TDateTimePicker
      Left = 160
      Top = 104
      Width = 113
      Height = 21
      Date = 41094.804790694440000000
      Time = 41094.804790694440000000
      TabOrder = 3
    end
    object rb_all: TRadioButton
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = 'All'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rb_allClick
    end
  end
  object RgOption: TRadioGroup
    Left = 8
    Top = 8
    Width = 297
    Height = 57
    Caption = 'Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Advertising Transaction'
      'Taiking Commission')
    ParentFont = False
    TabOrder = 0
  end
  object bPrintPriview: TBitBtn
    Left = 104
    Top = 224
    Width = 105
    Height = 33
    Caption = 'Print Priview'
    TabOrder = 2
    OnClick = bPrintPriviewClick
  end
  object bPrint: TBitBtn
    Left = 225
    Top = 224
    Width = 81
    Height = 33
    Caption = 'Print'
    TabOrder = 3
    OnClick = bPrintClick
  end
end
