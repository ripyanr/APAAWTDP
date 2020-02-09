object frAdvertisingTrans: TfrAdvertisingTrans
  Left = 281
  Top = 25
  Width = 958
  Height = 683
  Caption = 'Menu Transaksi'
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
    Width = 942
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
      Caption = 'Transaksi Periklanan'
      DesignSize = (
        934
        616)
      object bAdd: TSpeedButton
        Left = 8
        Top = 568
        Width = 49
        Height = 41
        Caption = 'Add'
        Flat = True
        OnClick = bAddClick
      end
      object bSave: TSpeedButton
        Left = 64
        Top = 568
        Width = 49
        Height = 41
        Caption = 'Save'
        Flat = True
        OnClick = bSaveClick
      end
      object Bevel1: TBevel
        Left = 8
        Top = 8
        Width = 313
        Height = 441
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 328
        Top = 8
        Width = 321
        Height = 441
        Shape = bsFrame
      end
      object bClose: TSpeedButton
        Left = 120
        Top = 570
        Width = 49
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = 'Close'
        Flat = True
        OnClick = bCloseClick
      end
      object bReset: TSpeedButton
        Left = 176
        Top = 571
        Width = 57
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = 'Reset'
        Flat = True
        OnClick = bResetClick
      end
      object Bevel3: TBevel
        Left = 656
        Top = 8
        Width = 281
        Height = 441
        Shape = bsFrame
      end
      object Label23: TLabel
        Left = 664
        Top = 24
        Width = 85
        Height = 14
        Alignment = taCenter
        Caption = 'POSISI IKLAN'
      end
      object Label22: TLabel
        Left = 736
        Top = 432
        Width = 117
        Height = 14
        Caption = 'SKALA  1mm : 1 px'
      end
      object pnlDetail: TPanel
        Left = 240
        Top = 571
        Width = 697
        Height = 41
        Anchors = [akLeft, akBottom]
        BevelInner = bvLowered
        Enabled = False
        TabOrder = 9
        object Label21: TLabel
          Left = 328
          Top = 11
          Width = 92
          Height = 16
          Caption = 'TOTAL BAYAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tTotal_Pay: TMemo
          Left = 432
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
        Left = 16
        Top = 16
        Width = 297
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
          Width = 141
          Height = 16
          Caption = 'TANGGAL TRANSAKSI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object dtDate_Trans: TDateTimePicker
          Left = 160
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
          Left = 136
          Top = 20
          Width = 153
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
        Left = 16
        Top = 120
        Width = 297
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
          Width = 38
          Height = 16
          Caption = 'NAMA'
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
          Width = 48
          Height = 16
          Caption = 'KOMISI'
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
          Left = 216
          Top = 120
          Width = 57
          Height = 25
          Caption = 'clear'
          Flat = True
          OnClick = bClearClick
        end
        object tFind_Sls: TEdit
          Left = 8
          Top = 32
          Width = 265
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
        Left = 16
        Top = 280
        Width = 297
        Height = 161
        TabOrder = 5
        object Label6: TLabel
          Left = 8
          Top = 8
          Width = 115
          Height = 16
          Caption = 'PEMASANG IKLAN'
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
          Width = 38
          Height = 16
          Caption = 'NAMA'
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
          Width = 88
          Height = 32
          Caption = 'ORGANISASI/'#13#10'PERUSAHAAN'
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
          Width = 59
          Height = 16
          Caption = 'JABATAN'
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
          Left = 240
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
          Width = 225
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
        Left = 336
        Top = 176
        Width = 305
        Height = 121
        TabOrder = 4
        object Label12: TLabel
          Left = 8
          Top = 16
          Width = 36
          Height = 16
          Caption = 'EDISI'
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
          Width = 63
          Height = 16
          Caption = 'HALAMAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 136
          Top = 8
          Width = 93
          Height = 16
          Caption = 'KLM PERTAMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 136
          Top = 40
          Width = 55
          Height = 16
          Caption = 'JML KLM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 136
          Top = 72
          Width = 94
          Height = 16
          Caption = 'POS PERTAMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 136
          Top = 96
          Width = 77
          Height = 16
          Caption = 'TINGGI KLM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tHeight: TEdit
          Left = 238
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
          Left = 238
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
          Left = 238
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
          Left = 238
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
          Left = 280
          Top = 8
          Width = 17
          Height = 23
          Position = 1
          TabOrder = 2
          OnClick = UpDown1Click
        end
        object UpDown2: TUpDown
          Left = 280
          Top = 32
          Width = 17
          Height = 23
          TabOrder = 3
          OnClick = UpDown2Click
        end
        object UpDown3: TUpDown
          Left = 280
          Top = 66
          Width = 17
          Height = 23
          TabOrder = 7
          OnClick = UpDown3Click
        end
        object UpDown4: TUpDown
          Left = 280
          Top = 92
          Width = 17
          Height = 23
          TabOrder = 9
          OnClick = UpDown4Click
        end
      end
      object pnlPrice: TPanel
        Left = 336
        Top = 304
        Width = 305
        Height = 137
        TabOrder = 6
        object Label18: TLabel
          Left = 8
          Top = 16
          Width = 80
          Height = 16
          Caption = 'HARGA JUAL'
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
          Width = 50
          Height = 16
          Caption = 'DISKON'
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
          Width = 92
          Height = 16
          Caption = 'TOTAL BAYAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbNextEditionCount: TLabel
          Left = 18
          Top = 113
          Width = 163
          Height = 16
          Caption = 'Jml utk Edisi Selanjutnya'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tSelling_Price: TEdit
          Left = 136
          Top = 12
          Width = 161
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
          Left = 136
          Top = 76
          Width = 161
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
          Left = 136
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
          Left = 184
          Top = 44
          Width = 113
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
          Left = 192
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
          Left = 240
          Top = 104
          Width = 57
          Height = 25
          Caption = 'INSERT'
          TabOrder = 4
          OnClick = bINSERTClick
        end
      end
      object pnlAdvt: TPanel
        Left = 336
        Top = 16
        Width = 305
        Height = 153
        TabOrder = 1
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 80
          Height = 16
          Caption = 'JENIS IKLAN'
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
          Width = 35
          Height = 16
          Caption = 'KODE'
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
          Width = 37
          Height = 16
          Caption = 'JENIS'
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
          Width = 40
          Height = 32
          Caption = 'JUDUL'#13#10'IKLAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 208
          Top = 56
          Width = 49
          Height = 12
          Caption = 'Jns warna'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbl_Color: TLabel
          Tag = 1
          Left = 264
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
          Width = 281
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
          Width = 209
          Height = 49
          TabOrder = 1
        end
      end
      object pnlBG: TPanel
        Left = 665
        Top = 54
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
        Left = 8
        Top = 456
        Width = 929
        Height = 106
        Anchors = [akLeft, akTop, akBottom]
        Columns = <
          item
            Caption = 'NO'
            Width = 40
          end
          item
            Caption = 'KODE'
            Width = 100
          end
          item
            AutoSize = True
            Caption = 'JUDUL IKLAN'
          end
          item
            Caption = 'EDISI'
          end
          item
            Caption = 'HALAMAN'
            Width = 40
          end
          item
            Caption = 'KLM PERTAMA'
          end
          item
            Caption = 'JML KLM'
            Width = 70
          end
          item
            Caption = 'POS PERTAMA'
          end
          item
            Caption = 'TINGGI KLM'
            Width = 70
          end
          item
            Caption = 'HARGA JUAL'
            Width = 150
          end
          item
            Caption = 'DISKON'
            Width = 40
          end
          item
            Caption = 'TOTAL BAYAR'
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
            Caption = 'NAMA'
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
      Caption = 'Data Transaksi Periklanan'
      ImageIndex = 1
      DesignSize = (
        934
        616)
      object lblinfo: TLabel
        Left = 728
        Top = 592
        Width = 37
        Height = 14
        Caption = 'lblinfo'
      end
      object lvAdvertising: TListView
        Left = 8
        Top = 40
        Width = 713
        Height = 563
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'No. Advertising'
            Width = 150
          end
          item
            Caption = 'Tgl Transaksi'
            Width = 100
          end
          item
            Caption = 'No Id Advertiser'
            Width = 150
          end
          item
            Caption = 'Nama Advertiser'
            Width = 180
          end
          item
            Caption = 'Organisasi/ Perusahaan'
          end
          item
            Caption = 'Jabatan'
          end
          item
            Caption = 'Total Pembayaran'
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
        Left = 336
        Top = 8
        Width = 201
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        OnChange = tSearchChange
      end
      object cbCategory: TComboBox
        Left = 546
        Top = 8
        Width = 171
        Height = 22
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 14
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 728
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
          Width = 45
          Height = 14
          Caption = 'No.Reg'
        end
        object Label30: TLabel
          Left = 8
          Top = 288
          Width = 74
          Height = 14
          Caption = 'Nama Sales'
        end
        object Label31: TLabel
          Left = 8
          Top = 336
          Width = 75
          Height = 14
          Caption = 'Komisi Iklan'
        end
        object Label32: TLabel
          Left = 8
          Top = 24
          Width = 95
          Height = 14
          Caption = 'No. Advertising'
        end
        object Label36: TLabel
          Left = 8
          Top = 104
          Width = 100
          Height = 14
          Caption = 'No id Advertiser'
        end
        object Label37: TLabel
          Left = 8
          Top = 144
          Width = 104
          Height = 14
          Caption = 'Nama Advertiser'
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
          Width = 71
          Height = 14
          Caption = 'Total Bayar'
        end
        object Label38: TLabel
          Left = 8
          Top = 64
          Width = 82
          Height = 14
          Caption = 'Tgl Transaksi'
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
        Left = 728
        Top = 8
        Width = 209
        Height = 193
        TabOrder = 5
        object Label33: TLabel
          Left = 40
          Top = 80
          Width = 67
          Height = 14
          Caption = 'Input Edisi'
        end
        object Label34: TLabel
          Left = 0
          Top = 136
          Width = 84
          Height = 14
          Caption = 'Tanggal Awal'
        end
        object Label35: TLabel
          Left = 0
          Top = 160
          Width = 85
          Height = 14
          Caption = 'Tanggal Akhir'
        end
        object rb_Filter_by_D: TRadioButton
          Left = 0
          Top = 104
          Width = 201
          Height = 25
          Caption = 'Filter Berdasarkan Tanggal'
          TabOrder = 3
          OnClick = rb_Filter_by_DClick
        end
        object Rb_Filter_by_E: TRadioButton
          Left = 8
          Top = 40
          Width = 153
          Height = 17
          Caption = 'Filter Berdasarkan Edisi'
          TabOrder = 1
          OnClick = Rb_Filter_by_EClick
        end
        object tFilter_Edition: TEdit
          Left = 120
          Top = 72
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
          Caption = 'Tanpa Filter'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rb_DisbleFilterClick
        end
      end
      object bMoreDetail: TBitBtn
        Left = 8
        Top = 8
        Width = 81
        Height = 21
        Caption = 'Rincian'
        TabOrder = 0
        OnClick = bMoreDetailClick
      end
      object bDelete: TBitBtn
        Left = 96
        Top = 8
        Width = 57
        Height = 21
        Caption = 'Delete'
        TabOrder = 1
        OnClick = bDeleteClick
      end
      object bPayment: TBitBtn
        Left = 160
        Top = 8
        Width = 161
        Height = 21
        Caption = 'Cetak Bukti Pembayaran'
        TabOrder = 2
        OnClick = bPaymentClick
      end
    end
    object TabCommission: TTabSheet
      Caption = 'Komisi Iklan'
      ImageIndex = 2
      DesignSize = (
        934
        616)
      object Panel3: TPanel
        Left = 8
        Top = 56
        Width = 665
        Height = 561
        TabOrder = 6
        object lblinfo2: TLabel
          Left = 16
          Top = 539
          Width = 37
          Height = 14
          Caption = 'lblinfo'
        end
        object lvCommission: TListView
          Left = 9
          Top = 72
          Width = 640
          Height = 457
          Align = alCustom
          Columns = <
            item
              Caption = 'No Bukti'
              Width = 100
            end
            item
              Caption = 'Tanggal Pengambilan'
              Width = 100
            end
            item
              Caption = 'No. Reg'
              Width = 120
            end
            item
              Caption = 'Nama Sales'
              Width = 160
            end
            item
              Alignment = taRightJustify
              AutoSize = True
              Caption = 'Total Komisi'
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
          Width = 345
          Height = 57
          Caption = 'Buat Komisi Iklan'
          TabOrder = 0
          object Label39: TLabel
            Left = 8
            Top = 14
            Width = 65
            Height = 36
            Caption = 'Tanggal'#13#10'Bukti'
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
            Left = 264
            Top = 16
            Width = 73
            Height = 33
            Caption = 'Buat'
            TabOrder = 0
            OnClick = bCreateClick
          end
        end
        object rgStatus: TRadioGroup
          Left = 368
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
            'Semua'
            'Diambil'
            'Blm diambil')
          ParentFont = False
          TabOrder = 1
          OnClick = rgStatusClick
        end
        object BitBtn1: TBitBtn
          Left = 544
          Top = 14
          Width = 105
          Height = 49
          Caption = 'Ganti'#13#10'Status'
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
      object Panel4: TPanel
        Left = 680
        Top = 176
        Width = 249
        Height = 257
        TabOrder = 7
        object Label41: TLabel
          Left = 16
          Top = 32
          Width = 52
          Height = 14
          Caption = 'No Bukti'
        end
        object Label45: TLabel
          Left = 16
          Top = 64
          Width = 50
          Height = 14
          Caption = 'Tanggal'
        end
        object Label47: TLabel
          Left = 16
          Top = 112
          Width = 45
          Height = 14
          Caption = 'No.Reg'
        end
        object Label49: TLabel
          Left = 16
          Top = 144
          Width = 36
          Height = 14
          Caption = 'Nama'
        end
        object Label44: TLabel
          Left = 16
          Top = 232
          Width = 41
          Height = 14
          Caption = 'Status'
        end
        object Label46: TLabel
          Left = 16
          Top = 176
          Width = 75
          Height = 14
          Caption = 'Total Komisi'
        end
        object lbl_Invoice_no: TLabel
          Left = 16
          Top = 48
          Width = 91
          Height = 14
          Caption = 'lbl_Invoice_no'
        end
        object lbl_invoice_date: TLabel
          Left = 16
          Top = 80
          Width = 102
          Height = 14
          Caption = 'lbl_invoice_date'
        end
        object lbl_sales_name: TLabel
          Left = 16
          Top = 160
          Width = 98
          Height = 14
          Caption = 'lbl_sales_name'
        end
        object lbl_sales_regno: TLabel
          Left = 16
          Top = 128
          Width = 100
          Height = 14
          Caption = 'lbl_sales_regno'
        end
        object lbl_Commission_total: TLabel
          Left = 16
          Top = 192
          Width = 134
          Height = 14
          Caption = 'lbl_Commission_total'
        end
        object lbl_Status: TLabel
          Left = 128
          Top = 224
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
          Left = 16
          Top = 8
          Width = 63
          Height = 18
          Alignment = taCenter
          Caption = 'Rincian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object lvCommission_detail: TListView
        Left = 680
        Top = 440
        Width = 249
        Height = 177
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
            Caption = 'Total Bayar'
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
        Width = 233
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        OnChange = tSearch2Change
      end
      object cbCategory2: TComboBox
        Left = 472
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
        Left = 680
        Top = 24
        Width = 249
        Height = 145
        TabOrder = 5
        object Label42: TLabel
          Left = 16
          Top = 80
          Width = 84
          Height = 14
          Caption = 'Tanggal Awal'
        end
        object Label43: TLabel
          Left = 16
          Top = 104
          Width = 85
          Height = 14
          Caption = 'Tanggal Akhir'
        end
        object rb_filterDate: TRadioButton
          Left = 8
          Top = 40
          Width = 209
          Height = 25
          Caption = 'Filter Berdasarkan Tanggal'
          TabOrder = 1
          OnClick = rb_filterDateClick
        end
        object dtFilter3: TDateTimePicker
          Left = 120
          Top = 72
          Width = 113
          Height = 22
          Date = 41094.804790694440000000
          Time = 41094.804790694440000000
          TabOrder = 2
          OnChange = dtFilter3Change
        end
        object dtFilter4: TDateTimePicker
          Left = 120
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
          Caption = 'Tanpa Filter'
          TabOrder = 0
          OnClick = rb_disfilterClick
        end
      end
      object bPrintInvoice: TBitBtn
        Left = 8
        Top = 24
        Width = 65
        Height = 25
        Caption = 'Cetak Nota'
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
        Left = 80
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
        Left = 144
        Top = 24
        Width = 73
        Height = 25
        Caption = 'Batal'
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
    Left = 12
    Top = 264
  end
  object QDetailComm: TADOQuery
    Connection = dm.AdoConn
    Parameters = <>
    Left = 12
    Top = 224
  end
end
