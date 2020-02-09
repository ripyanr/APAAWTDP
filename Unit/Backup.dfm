object frAdvance: TfrAdvance
  Left = 506
  Top = 186
  BorderStyle = bsDialog
  ClientHeight = 123
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 8
    Width = 337
    Height = 105
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lb_info: TLabel
      Left = 104
      Top = 24
      Width = 126
      Height = 16
      Caption = 'Backup Database'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 104
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Back UP'
    end
    object pbar: TsGauge
      Left = 16
      Top = 80
      Width = 305
      Height = 17
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clGreen
      Progress = 0
      Suffix = '%'
    end
    object BBU: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 65
      Caption = 'Back Up'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BBUClick
    end
    object b_res: TBitBtn
      Left = 264
      Top = 24
      Width = 57
      Height = 33
      Caption = 'Restore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_resClick
    end
  end
  object odlg_DBOption: TOpenDialog
    Filter = 'Database Access (*.accdb)|*.accdb'
    Left = 8
    Top = 8
  end
end
