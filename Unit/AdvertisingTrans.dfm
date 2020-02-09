object frAdvertisingTrans: TfrAdvertisingTrans
  Left = 605
  Top = 26
  Width = 1097
  Height = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1081
    Height = 645
    ActivePage = TabCommission
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabAdversiting_Trans: TTabSheet
      Caption = 'Advertising Transaction'
      DesignSize = (
        1073
        616)
      object bAdd: TSpeedButton
        Left = 0
        Top = 16
        Width = 65
        Height = 65
        Caption = 'Add'
        Flat = True
        OnClick = bAddClick
      end
      object bSave: TSpeedButton
        Left = 0
        Top = 88
        Width = 65
        Height = 65
        Caption = 'Save'
        Flat = True
        OnClick = bSaveClick
      end
      object Bevel1: TBevel
        Left = 72
        Top = 8
        Width = 337
        Height = 441
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 416
        Top = 8
        Width = 361
        Height = 441
        Shape = bsFrame
      end
      object bClose: TSpeedButton
        Left = 0
        Top = 146
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = 'Close'
        Flat = True
        OnClick = bCloseClick
      end
      object bReset: TSpeedButton
        Left = 72
        Top = 571
        Width = 57
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = 'Reset'
        Flat = True
        OnClick = bResetClick
      end
      object Bevel3: TBevel
        Left = 784
        Top = 8
        Width = 281
        Height = 417
        Shape = bsFrame
      end
      object Label22: TLabel
        Left = 880
        Top = 432
        Width = 111
        Height = 14
        Caption = 'Scale  1mm : 1 px'
      end
      object Label23: TLabel
        Left = 848
        Top = 16
        Width = 143
        Height = 14
        Caption = 'POSITION ADVERISING'
      end
      object pnlDetail: TPanel
        Left = 136
        Top = 571
        Width = 929
        Height = 41
        Anchors = [akLeft, akBottom]
        BevelInner = bvLowered
        Enabled = False
        TabOrder = 9
        object Label21: TLabel
          Left = 560
          Top = 11
          Width = 75
          Height = 16
          Caption = 'PAY TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tTotal_Pay: TMemo
          Left = 656
          Top = 8
          Width = 257
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          Lines.Strings = (
            'Memo1')
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlTrans: TPanel
        Left = 80
        Top = 16
        Width = 321
        Height = 97
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 113
          Height = 16
          Caption = 'NO ADVERTISING'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 64
          Width = 135
          Height = 16
          Caption = 'TRANSACTION DATE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object dtDate_Trans: TDateTimePicker
          Left = 184
          Top = 56
          Width = 129
          Height = 24
          Date = 40974.325295173610000000
          Time = 40974.325295173610000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object tNo_Trans: TEdit
          Left = 128
          Top = 20
          Width = 185
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = 'tNo_Trans'
        end
      end
      object pnlSales: TPanel
        Left = 80
        Top = 120
        Width = 321
        Height = 153
        TabOrder = 3
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 42
          Height = 16
          Caption = 'SALES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 64
          Width = 54
          Height = 16
          Caption = 'REG NO.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 88
          Width = 37
          Height = 16
          Caption = 'NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblReg_No: TLabel
          Tag = 1
          Left = 80
          Top = 64
          Width = 63
          Height = 16
          Caption = 'lblReg_No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblName_Sls: TLabel
          Tag = 1
          Left = 80
          Top = 88
          Width = 77
          Height = 16
          Caption = 'lblName_Sls'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 16
          Top = 120
          Width = 88
          Height = 16
          Caption = 'COMMISSION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblPercent_wage: TLabel
          Tag = 1
          Left = 168
          Top = 120
          Width = 13
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object bClear: TSpeedButton
          Left = 256
          Top = 120
          Width = 57
          Height = 25
          Caption = 'Clear'
          Flat = True
          OnClick = bClearClick
        end
        object tFind_Sls: TEdit
          Left = 8
          Top = 32
          Width = 281
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'tFind_Sls'
          OnChange = tFind_SlsChange
          OnEnter = tFind_SlsEnter
          OnExit = tFind_SlsExit
          OnKeyPress = tFind_SlsKeyPress
        end
        object tWage: TEdit
          Left = 112
          Top = 112
          Width = 49
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'tWage'
          OnKeyPress = tWageKeyPress
        end
      end
      object pnlAdsr: TPanel
        Left = 80
        Top = 280
        Width = 321
        Height = 161
        TabOrder = 5
        object Label6: TLabel
          Left = 8
          Top = 8
          Width = 82
          Height = 16
          Caption = 'ADVERTISER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 56
          Width = 38
          Height = 16
          Caption = 'NO ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 72
          Width = 37
          Height = 16
          Caption = 'NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblNo_Id: TLabel
          Tag = 1
          Left = 120
          Top = 56
          Width = 52
          Height = 16
          Caption = 'lblNo_Id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblName_Adsr: TLabel
          Tag = 1
          Left = 120
          Top = 72
          Width = 87
          Height = 16
          Caption = 'lblName_Adsr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 8
          Top = 88
          Width = 107
          Height = 32
          Caption = 'ORGANIZATION/'#13#10'COMPANY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 8
          Top = 128
          Width = 65
          Height = 16
          Caption = 'POSITION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblOrganization: TLabel
          Tag = 1
          Left = 120
          Top = 88
          Width = 96
          Height = 16
          Caption = 'lblOrganization'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblPosition: TLabel
          Tag = 1
          Left = 120
          Top = 128
          Width = 65
          Height = 16
          Caption = 'lblPosition'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 264
          Top = 24
          Width = 49
          Height = 25
          Caption = 'advance'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object tFind_Adsr: TEdit
          Left = 8
          Top = 24
          Width = 249
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'tFind_Adsr'
          OnChange = tFind_AdsrChange
          OnEnter = tFind_AdsrEnter
          OnExit = tFind_AdsrExit
          OnKeyPress = tFind_AdsrKeyPress
        end
      end
      object pnlEdition: TPanel
        Left = 424
        Top = 176
        Width = 345
        Height = 121
        TabOrder = 4
        object Label12: TLabel
          Left = 8
          Top = 16
          Width = 55
          Height = 16
          Caption = 'EDITION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 48
          Width = 34
          Height = 16
          Caption = 'PAGE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 192
          Top = 8
          Width = 70
          Height = 16
          Caption = 'FIRST COL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 184
          Top = 40
          Width = 77
          Height = 16
          Caption = 'COL COUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 192
          Top = 72
          Width = 71
          Height = 16
          Caption = 'FISRT POS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 184
          Top = 96
          Width = 80
          Height = 16
          Caption = 'COL HEIGHT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tHeight: TEdit
          Left = 278
          Top = 92
          Width = 40
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 8
          OnChange = tHeightChange
          OnContextPopup = tHeightContextPopup
          OnExit = tHeightExit
          OnKeyPress = tHeightKeyPress
        end
        object tFirstPost: TEdit
          Left = 278
          Top = 66
          Width = 40
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 6
          OnChange = tFirstPostChange
          OnContextPopup = tFirstPostContextPopup
          OnKeyPress = tFirstPostKeyPress
        end
        object tLastColumn: TEdit
          Left = 278
          Top = 35
          Width = 40
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 1
          ParentFont = False
          TabOrder = 4
          OnChange = tLastColumnChange
          OnContextPopup = tLastColumnContextPopup
          OnKeyPress = tLastColumnKeyPress
        end
        object tFirstColumn: TEdit
          Left = 278
          Top = 8
          Width = 40
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 1
          ParentFont = False
          TabOrder = 1
          OnChange = tFirstColumnChange
          OnContextPopup = tFirstColumnContextPopup
          OnKeyPress = tFirstColumnKeyPress
        end
        object tPage: TEdit
          Left = 80
          Top = 40
          Width = 49
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 5
          OnChange = tPageChange
          OnContextPopup = tPageContextPopup
          OnKeyPress = tPageKeyPress
        end
        object tEdition: TEdit
          Left = 80
          Top = 8
          Width = 49
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 0
          OnChange = tEditionChange
          OnContextPopup = tEditionContextPopup
          OnKeyPress = tEditionKeyPress
        end
        object UpDown1: TUpDown
          Left = 320
          Top = 8
          Width = 17
          Height = 23
          Position = 1
          TabOrder = 2
          OnClick = UpDown1Click
        end
        object UpDown2: TUpDown
          Left = 320
          Top = 32
          Width = 17
          Height = 23
          TabOrder = 3
          OnClick = UpDown2Click
        end
        object UpDown3: TUpDown
          Left = 320
          Top = 66
          Width = 17
          Height = 23
          TabOrder = 7
          OnClick = UpDown3Click
        end
        object UpDown4: TUpDown
          Left = 320
          Top = 92
          Width = 17
          Height = 23
          TabOrder = 9
          OnClick = UpDown4Click
        end
      end
      object pnlPrice: TPanel
        Left = 424
        Top = 304
        Width = 345
        Height = 137
        TabOrder = 6
        object Label18: TLabel
          Left = 8
          Top = 16
          Width = 97
          Height = 16
          Caption = 'SELLING PRICE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 8
          Top = 48
          Width = 69
          Height = 16
          Caption = 'DISCOUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 8
          Top = 80
          Width = 87
          Height = 16
          Caption = 'TOTAL PRICE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbNextEditionCount: TLabel
          Left = 74
          Top = 113
          Width = 146
          Height = 16
          Caption = 'NEXT EDITION COUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tSelling_Price: TEdit
          Left = 144
          Top = 12
          Width = 193
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnChange = tSelling_PriceChange
          OnKeyPress = tSelling_PriceKeyPress
        end
        object tTot_Price: TEdit
          Left = 144
          Top = 76
          Width = 193
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object tDisc: TEdit
          Left = 144
          Top = 44
          Width = 41
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 1
          OnChange = tDiscChange
          OnContextPopup = tDiscContextPopup
          OnKeyPress = tDiscKeyPress
        end
        object tNominal_Disc: TEdit
          Left = 192
          Top = 44
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object tNext_EdCount: TEdit
          Left = 232
          Top = 105
          Width = 41
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 1
          ParentFont = False
          TabOrder = 5
          Text = 'tNext_EdCount'
          OnContextPopup = tNext_EdCountContextPopup
          OnKeyPress = tNext_EdCountKeyPress
        end
        object bINSERT: TBitBtn
          Left = 280
          Top = 104
          Width = 57
          Height = 25
          Caption = 'INSERT'
          TabOrder = 4
          OnClick = bINSERTClick
        end
      end
      object pnlAdvt: TPanel
        Left = 424
        Top = 16
        Width = 345
        Height = 153
        TabOrder = 1
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 111
          Height = 16
          Caption = 'ADVERTISEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblcd: TLabel
          Left = 8
          Top = 56
          Width = 36
          Height = 16
          Caption = 'CODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 72
          Width = 34
          Height = 16
          Caption = 'TYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblKode: TLabel
          Tag = 1
          Left = 80
          Top = 56
          Width = 46
          Height = 16
          Caption = 'lblKode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblType_Advt: TLabel
          Tag = 1
          Left = 80
          Top = 72
          Width = 86
          Height = 16
          Caption = 'lblType_Advt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 8
          Top = 96
          Width = 66
          Height = 32
          Caption = 'CONTENT'#13#10'SUMMARY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 256
          Top = 56
          Width = 39
          Height = 12
          Caption = 'COLOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbl_Color: TLabel
          Tag = 1
          Left = 304
          Top = 56
          Width = 17
          Height = 13
          Caption = 'CR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tFind_Advt: TEdit
          Left = 8
          Top = 24
          Width = 329
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'tFind_Advt'
          OnChange = tFind_AdvtChange
          OnEnter = tFind_AdvtEnter
          OnExit = tFind_AdvtExit
          OnKeyPress = tFind_AdvtKeyPress
        end
        object tContent: TMemo
          Tag = 1
          Left = 80
          Top = 96
          Width = 257
          Height = 49
          TabOrder = 1
        end
      end
      object pnlBG: TPanel
        Left = 793
        Top = 30
        Width = 262
        Height = 375
        BevelOuter = bvNone
        Color = clGray
        Constraints.MaxHeight = 375
        Constraints.MaxWidth = 262
        Constraints.MinHeight = 375
        Constraints.MinWidth = 262
        TabOrder = 2
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 262
          Height = 375
          Align = alClient
          Brush.Color = clSkyBlue
        end
        object shpAdvt_new: TShape
          Left = 8
          Top = 24
          Width = 41
          Height = 33
          Visible = False
        end
      end
      object lvDetail: TListView
        Left = 72
        Top = 456
        Width = 993
        Height = 106
        Anchors = [akLeft, akTop, akBottom]
        Columns = <
          item
            Caption = 'NO'
            Width = 40
          end
          item
            Caption = 'CODE'
            Width = 100
          end
          item
            AutoSize = True
            Caption = 'CONTENT SUMMARY'
          end
          item
            Caption = 'EDITION'
          end
          item
            Caption = 'PAGE'
            Width = 40
          end
          item
            Caption = 'FIRST COL'
          end
          item
            Caption = 'COL COUNT'
            Width = 70
          end
          item
            Caption = 'FIRST POS'
          end
          item
            Caption = 'COL HEIGHT'
            Width = 70
          end
          item
            Caption = 'SELLING PRICE'
            Width = 150
          end
          item
            Caption = 'DISC'
            Width = 40
          end
          item
            Caption = 'PRICE TOTAL'
            Width = 100
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        ViewStyle = vsReport
      end
      object LvFind: TListView
        Left = 160
        Top = 488
        Width = 129
        Height = 65
        Columns = <
          item
            AutoSize = True
            Caption = 'REG NO'
          end
          item
            AutoSize = True
            Caption = 'NAME'
          end
          item
            MinWidth = 1
            Width = 1
          end
          item
            MinWidth = 1
            Width = 1
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 8
        ViewStyle = vsReport
        Visible = False
        OnCustomDrawItem = LvFindCustomDrawItem
        OnDblClick = LvFindDblClick
        OnEnter = LvFindEnter
        OnExit = LvFindExit
      end
    end
    object TabDataTransaction: TTabSheet
      Caption = 'Data Advertising Transaction'
      ImageIndex = 1
      DesignSize = (
        1073
        616)
      object lblinfo: TLabel
        Left = 856
        Top = 592
        Width = 37
        Height = 14
        Caption = 'lblinfo'
      end
      object lvAdvertising: TListView
        Left = 24
        Top = 40
        Width = 825
        Height = 563
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'Advertising Number'
            Width = 150
          end
          item
            Caption = 'Date Transaction'
            Width = 100
          end
          item
            Caption = 'Advertiser Id'
            Width = 150
          end
          item
            Caption = 'Advertiser Name'
            Width = 180
          end
          item
            Caption = 'Organization'
          end
          item
            Caption = 'Position'
          end
          item
            Caption = 'Payment Total'
            Width = 150
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 6
        ViewStyle = vsReport
        OnChange = lvAdvertisingChange
        OnDblClick = lvAdvertisingDblClick
      end
      object tSearch: TEdit
        Left = 360
        Top = 8
        Width = 235
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        OnChange = tSearchChange
      end
      object cbCategory: TComboBox
        Left = 600
        Top = 8
        Width = 243
        Height = 22
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 14
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 856
        Top = 208
        Width = 209
        Height = 377
        TabOrder = 7
        object Label28: TLabel
          Left = 8
          Top = 232
          Width = 43
          Height = 14
          Caption = 'Sales :'
        end
        object Label29: TLabel
          Left = 8
          Top = 248
          Width = 81
          Height = 14
          Caption = 'Reg. Number'
        end
        object Label30: TLabel
          Left = 8
          Top = 288
          Width = 36
          Height = 14
          Caption = 'Name'
        end
        object Label31: TLabel
          Left = 8
          Top = 336
          Width = 75
          Height = 14
          Caption = 'Commission'
        end
        object Label32: TLabel
          Left = 8
          Top = 24
          Width = 123
          Height = 14
          Caption = 'Advertising Number'
        end
        object Label36: TLabel
          Left = 8
          Top = 104
          Width = 85
          Height = 14
          Caption = 'Advertisier ID'
        end
        object Label37: TLabel
          Left = 8
          Top = 144
          Width = 36
          Height = 14
          Caption = 'Name'
        end
        object lbl_Adv_No: TLabel
          Left = 8
          Top = 40
          Width = 70
          Height = 14
          Caption = 'lbl_Adv_No'
        end
        object lbl_Adv_ID: TLabel
          Left = 8
          Top = 120
          Width = 67
          Height = 14
          Caption = 'lbl_Adv_ID'
        end
        object lbl_Adv_Name: TLabel
          Left = 8
          Top = 160
          Width = 89
          Height = 14
          Caption = 'lbl_Adv_Name'
        end
        object lbl_Regno: TLabel
          Left = 8
          Top = 264
          Width = 62
          Height = 14
          Caption = 'lbl_Regno'
        end
        object lbl_sls_name: TLabel
          Left = 8
          Top = 304
          Width = 82
          Height = 14
          Caption = 'lbl_sls_name'
        end
        object lbl_Commission: TLabel
          Left = 8
          Top = 352
          Width = 97
          Height = 14
          Caption = 'lbl_Commission'
        end
        object lbl_PayTot: TLabel
          Left = 8
          Top = 200
          Width = 65
          Height = 14
          Caption = 'lbl_TotPay'
        end
        object Label40: TLabel
          Left = 8
          Top = 184
          Width = 58
          Height = 14
          Caption = 'Pay Total'
        end
        object Label38: TLabel
          Left = 8
          Top = 64
          Width = 104
          Height = 14
          Caption = 'Advertising Date'
        end
        object lbl_date_trans: TLabel
          Left = 8
          Top = 80
          Width = 92
          Height = 14
          Caption = 'lbl_date_trans'
        end
      end
      object Panel2: TPanel
        Left = 856
        Top = 8
        Width = 209
        Height = 193
        TabOrder = 5
        object Label33: TLabel
          Left = 32
          Top = 72
          Width = 81
          Height = 14
          Caption = 'Input Edition'
        end
        object Label34: TLabel
          Left = 32
          Top = 136
          Width = 60
          Height = 14
          Caption = 'First date'
        end
        object Label35: TLabel
          Left = 32
          Top = 160
          Width = 60
          Height = 14
          Caption = 'Last date'
        end
        object rb_Filter_by_D: TRadioButton
          Left = 8
          Top = 104
          Width = 153
          Height = 25
          Caption = 'Enable Filter by  Date'
          TabOrder = 3
          OnClick = rb_Filter_by_DClick
        end
        object Rb_Filter_by_E: TRadioButton
          Left = 8
          Top = 40
          Width = 153
          Height = 17
          Caption = 'Enable Filter by Edition'
          TabOrder = 1
          OnClick = Rb_Filter_by_EClick
        end
        object tFilter_Edition: TEdit
          Left = 120
          Top = 64
          Width = 49
          Height = 22
          TabOrder = 2
          OnChange = tFilter_EditionChange
        end
        object dtFilter1: TDateTimePicker
          Left = 96
          Top = 128
          Width = 105
          Height = 22
          Date = 41094.804790694440000000
          Time = 41094.804790694440000000
          TabOrder = 4
          OnChange = dtFilter1Change
        end
        object dtFilter2: TDateTimePicker
          Left = 96
          Top = 160
          Width = 105
          Height = 22
          Date = 41094.804790694440000000
          Time = 41094.804790694440000000
          TabOrder = 5
          OnChange = dtFilter2Change
        end
        object rb_DisbleFilter: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Disable Filter'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rb_DisbleFilterClick
        end
      end
      object bMoreDetail: TBitBtn
        Left = 24
        Top = 8
        Width = 81
        Height = 21
        Caption = 'More Detail'
        TabOrder = 0
        OnClick = bMoreDetailClick
      end
      object bDelete: TBitBtn
        Left = 112
        Top = 8
        Width = 57
        Height = 21
        Caption = 'Delete'
        TabOrder = 1
        OnClick = bDeleteClick
      end
      object bPayment: TBitBtn
        Left = 176
        Top = 8
        Width = 161
        Height = 21
        Caption = 'Print Avidence Payment'
        TabOrder = 2
        OnClick = bPaymentClick
      end
    end
    object TabCommission: TTabSheet
      Caption = 'Sales Commission'
      ImageIndex = 2
      DesignSize = (
        1073
        616)
      object Panel3: TPanel
        Left = 8
        Top = 56
        Width = 705
        Height = 561
        TabOrder = 6
        object lblinfo2: TLabel
          Left = 8
          Top = 539
          Width = 37
          Height = 14
          Caption = 'lblinfo'
        end
        object lvCommission: TListView
          Left = 9
          Top = 72
          Width = 688
          Height = 457
          Align = alCustom
          Columns = <
            item
              Caption = 'Invoice Number'
              Width = 100
            end
            item
              Caption = 'Invoice Date'
              Width = 100
            end
            item
              Caption = 'Reg. Number'
              Width = 120
            end
            item
              Caption = 'Sales Name'
              Width = 160
            end
            item
              Alignment = taRightJustify
              AutoSize = True
              Caption = 'Comission Total'
            end
            item
              Caption = 'Status'
              Width = 100
            end>
          ReadOnly = True
          RowSelect = True
          TabOrder = 3
          ViewStyle = vsReport
          OnChange = lvCommissionChange
        end
        object grMakingCommission: TGroupBox
          Left = 16
          Top = 8
          Width = 393
          Height = 57
          Caption = 'Making Sales Commission'
          TabOrder = 0
          object Label39: TLabel
            Left = 8
            Top = 22
            Width = 110
            Height = 18
            Caption = 'Invoice Date '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object dtCreate_Commission: TDateTimePicker
            Left = 128
            Top = 20
            Width = 105
            Height = 24
            Date = 41095.275672337960000000
            Time = 41095.275672337960000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object bCreate: TBitBtn
            Left = 304
            Top = 16
            Width = 73
            Height = 33
            Caption = 'Create'
            TabOrder = 0
            OnClick = bCreateClick
          end
        end
        object rgStatus: TRadioGroup
          Left = 416
          Top = 8
          Width = 169
          Height = 57
          Caption = 'Status'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'All'
            'Already'
            'Not Yet')
          ParentFont = False
          TabOrder = 1
          OnClick = rgStatusClick
        end
        object BitBtn1: TBitBtn
          Left = 592
          Top = 14
          Width = 105
          Height = 49
          Caption = 'Chage '#13#10'Status'
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
      object Panel4: TPanel
        Left = 720
        Top = 176
        Width = 337
        Height = 257
        TabOrder = 7
        object Label41: TLabel
          Left = 8
          Top = 56
          Width = 98
          Height = 14
          Caption = 'Invoice Number'
        end
        object Label45: TLabel
          Left = 8
          Top = 88
          Width = 79
          Height = 14
          Caption = 'Invoice Date'
        end
        object Label47: TLabel
          Left = 8
          Top = 120
          Width = 81
          Height = 14
          Caption = 'Reg. Number'
        end
        object Label49: TLabel
          Left = 8
          Top = 152
          Width = 74
          Height = 14
          Caption = 'Sales Name'
        end
        object Label44: TLabel
          Left = 8
          Top = 200
          Width = 124
          Height = 28
          Caption = 'Taking Commission '#13#10'Status'
        end
        object Label46: TLabel
          Left = 8
          Top = 176
          Width = 106
          Height = 14
          Caption = 'CommissionTotal'
        end
        object lbl_Invoice_no: TLabel
          Left = 128
          Top = 56
          Width = 91
          Height = 14
          Caption = 'lbl_Invoice_no'
        end
        object lbl_invoice_date: TLabel
          Left = 128
          Top = 88
          Width = 102
          Height = 14
          Caption = 'lbl_invoice_date'
        end
        object lbl_sales_name: TLabel
          Left = 128
          Top = 152
          Width = 98
          Height = 14
          Caption = 'lbl_sales_name'
        end
        object lbl_sales_regno: TLabel
          Left = 128
          Top = 120
          Width = 100
          Height = 14
          Caption = 'lbl_sales_regno'
        end
        object lbl_Commission_total: TLabel
          Left = 128
          Top = 176
          Width = 134
          Height = 14
          Caption = 'lbl_Commission_total'
        end
        object lbl_Status: TLabel
          Left = 136
          Top = 200
          Width = 111
          Height = 23
          Caption = 'lbl_Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 8
          Top = 24
          Width = 267
          Height = 18
          Caption = 'DETAIL TAKING COMMISSION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object lvCommission_detail: TListView
        Left = 720
        Top = 440
        Width = 337
        Height = 169
        Align = alCustom
        Columns = <
          item
            Caption = 'No'
            Width = 29
          end
          item
            Caption = 'No Advertising'
            Width = 70
          end
          item
            Alignment = taRightJustify
            AutoSize = True
            Caption = 'Pay Total'
          end
          item
            Caption = '%'
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'Nominal'
            Width = 80
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 8
        ViewStyle = vsReport
      end
      object tSearch2: TEdit
        Left = 232
        Top = 24
        Width = 273
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        OnChange = tSearch2Change
      end
      object cbCategory2: TComboBox
        Left = 512
        Top = 24
        Width = 201
        Height = 26
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 4
      end
      object Panel5: TPanel
        Left = 720
        Top = 24
        Width = 337
        Height = 145
        TabOrder = 5
        object Label42: TLabel
          Left = 56
          Top = 80
          Width = 60
          Height = 14
          Caption = 'First date'
        end
        object Label43: TLabel
          Left = 56
          Top = 104
          Width = 60
          Height = 14
          Caption = 'Last date'
        end
        object rb_filterDate: TRadioButton
          Left = 8
          Top = 40
          Width = 153
          Height = 25
          Caption = 'Enable Filter by  Date'
          TabOrder = 1
          OnClick = rb_filterDateClick
        end
        object dtFilter3: TDateTimePicker
          Left = 160
          Top = 72
          Width = 113
          Height = 22
          Date = 41094.804790694440000000
          Time = 41094.804790694440000000
          TabOrder = 2
          OnChange = dtFilter3Change
        end
        object dtFilter4: TDateTimePicker
          Left = 160
          Top = 104
          Width = 113
          Height = 22
          Date = 41094.804790694440000000
          Time = 41094.804790694440000000
          TabOrder = 3
          OnChange = dtFilter4Change
        end
        object rb_disfilter: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Disable Filter'
          TabOrder = 0
          OnClick = rb_disfilterClick
        end
      end
      object bPrintInvoice: TBitBtn
        Left = 24
        Top = 24
        Width = 57
        Height = 25
        Caption = 'Print'#13#10'Invoice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bPrintInvoiceClick
      end
      object bDeleteInvoice: TBitBtn
        Left = 96
        Top = 24
        Width = 57
        Height = 25
        Caption = 'Delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bDeleteInvoiceClick
      end
      object bRemoveFromList: TBitBtn
        Left = 160
        Top = 24
        Width = 65
        Height = 25
        Caption = 'Remove'#13#10'From List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bRemoveFromListClick
      end
    end
  end
  object Qcomm: TADOQuery
    Connection = dm.AdoConn
    Parameters = <>
    Left = 4
    Top = 128
  end
  object QDetailComm: TADOQuery
    Connection = dm.AdoConn
    Parameters = <>
    Left = 4
    Top = 160
  end
end
