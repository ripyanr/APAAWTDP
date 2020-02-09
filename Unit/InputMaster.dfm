object frInputMaster: TfrInputMaster
  Left = 596
  Top = 96
  BorderStyle = bsToolWindow
  ClientHeight = 390
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bSave: TSpeedButton
    Left = 360
    Top = 352
    Width = 73
    Height = 33
    Caption = 'Save'
    OnClick = bSaveClick
  end
  object bAdd: TSpeedButton
    Left = 272
    Top = 352
    Width = 81
    Height = 33
    Caption = 'Add'
    OnClick = bAddClick
  end
  object lblInfo: TLabel
    Left = 8
    Top = 352
    Width = 225
    Height = 33
    AutoSize = False
    Transparent = True
    WordWrap = True
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 425
    Height = 337
    ActivePage = TabAdvertisment
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSeles: TTabSheet
      Caption = 'Seles'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 24
        Width = 393
        Height = 249
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 96
          Width = 44
          Height = 13
          Caption = 'Contact'
        end
        object Label3: TLabel
          Left = 16
          Top = 144
          Width = 46
          Height = 13
          Caption = 'Address'
        end
        object Label2: TLabel
          Left = 16
          Top = 72
          Width = 56
          Height = 13
          Caption = 'Full Name'
        end
        object Label1: TLabel
          Left = 16
          Top = 48
          Width = 71
          Height = 13
          Caption = 'Reg Number'
        end
        object Label19: TLabel
          Left = 16
          Top = 120
          Width = 31
          Height = 13
          Caption = 'Email'
        end
        object tRegNo: TEdit
          Left = 112
          Top = 32
          Width = 265
          Height = 21
          MaxLength = 26
          ReadOnly = True
          TabOrder = 0
          Text = 'tRegNo'
        end
        object tName_Sls: TEdit
          Left = 112
          Top = 64
          Width = 265
          Height = 21
          MaxLength = 35
          TabOrder = 1
          Text = 'tName_Sls'
        end
        object tTelp: TEdit
          Tag = -1
          Left = 112
          Top = 88
          Width = 265
          Height = 21
          MaxLength = 16
          TabOrder = 2
          Text = 'tTelp'
          OnKeyPress = tTelpKeyPress
        end
        object tEmail: TEdit
          Tag = -1
          Left = 112
          Top = 112
          Width = 265
          Height = 21
          MaxLength = 40
          TabOrder = 3
          Text = 'tEmail'
        end
        object tAddress_Sls: TMemo
          Left = 112
          Top = 136
          Width = 265
          Height = 89
          Lines.Strings = (
            'tAddress_Sls')
          MaxLength = 60
          TabOrder = 4
          OnKeyPress = tAddress_SlsKeyPress
        end
      end
    end
    object TabAdvertiser: TTabSheet
      Caption = 'Advertiser'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 305
        TabOrder = 0
        object Label20: TLabel
          Left = 32
          Top = 216
          Width = 46
          Height = 13
          Caption = 'Address'
        end
        object Label5: TLabel
          Left = 32
          Top = 152
          Width = 44
          Height = 13
          Caption = 'Contact'
        end
        object Label6: TLabel
          Left = 32
          Top = 128
          Width = 44
          Height = 13
          Caption = 'Position'
        end
        object Label7: TLabel
          Left = 32
          Top = 96
          Width = 69
          Height = 13
          Caption = 'Organizaton'
        end
        object Label8: TLabel
          Left = 32
          Top = 32
          Width = 63
          Height = 13
          Caption = 'No Identity'
        end
        object Label12: TLabel
          Left = 32
          Top = 64
          Width = 56
          Height = 13
          Caption = 'Full Name'
        end
        object Label13: TLabel
          Left = 32
          Top = 184
          Width = 31
          Height = 13
          Caption = 'Email'
        end
        object tNoID_Adsr: TEdit
          Tag = 1
          Left = 120
          Top = 24
          Width = 201
          Height = 21
          MaxLength = 19
          ReadOnly = True
          TabOrder = 0
          Text = 'tNoID_Adsr'
        end
        object tType_Adsr: TComboBox
          Tag = 1
          Left = 120
          Top = 88
          Width = 201
          Height = 21
          ItemHeight = 0
          MaxLength = 40
          TabOrder = 2
          Text = 'tType_Adsr'
          OnEnter = tType_AdsrEnter
        end
        object tName_Adsr: TEdit
          Tag = 1
          Left = 120
          Top = 56
          Width = 201
          Height = 21
          MaxLength = 35
          TabOrder = 1
          Text = 'tName_Adsr'
        end
        object tTelp_Adsr: TEdit
          Tag = -1
          Left = 120
          Top = 152
          Width = 201
          Height = 21
          MaxLength = 16
          TabOrder = 4
          Text = 'tTelp__Adsr'
          OnKeyPress = tTelp_AdsrKeyPress
        end
        object tAddress_Adsr: TMemo
          Tag = 1
          Left = 120
          Top = 216
          Width = 201
          Height = 73
          Lines.Strings = (
            'tAddress_Adsr')
          MaxLength = 60
          TabOrder = 6
          OnKeyPress = tAddress_AdsrKeyPress
        end
        object tPosition_Adsr: TEdit
          Tag = 1
          Left = 120
          Top = 120
          Width = 201
          Height = 21
          MaxLength = 30
          TabOrder = 3
          Text = 'tPosition_Adsr'
        end
        object tEmail_Adsr: TEdit
          Tag = -2
          Left = 120
          Top = 184
          Width = 201
          Height = 21
          MaxLength = 40
          TabOrder = 5
          Text = 'tEmail'
        end
      end
    end
    object TabAdvertisment: TTabSheet
      Caption = 'Advertisment'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 8
        Top = 8
        Width = 361
        Height = 273
        TabOrder = 0
        object Label17: TLabel
          Left = 40
          Top = 192
          Width = 60
          Height = 13
          Caption = 'Base Price'
        end
        object Label16: TLabel
          Left = 40
          Top = 160
          Width = 107
          Height = 13
          Caption = 'Min Column Height'
        end
        object Label14: TLabel
          Left = 40
          Top = 136
          Width = 105
          Height = 13
          Caption = 'Min Column Count'
        end
        object Label11: TLabel
          Left = 40
          Top = 80
          Width = 63
          Height = 13
          Caption = 'Color Type'
        end
        object Label10: TLabel
          Left = 40
          Top = 56
          Width = 32
          Height = 13
          Caption = 'Type '
        end
        object Label9: TLabel
          Left = 40
          Top = 32
          Width = 29
          Height = 13
          Caption = 'Kode'
        end
        object rbBW_Adv: TRadioButton
          Tag = 2
          Left = 160
          Top = 80
          Width = 89
          Height = 25
          Caption = 'Black White'
          TabOrder = 2
        end
        object rbFc_Adv: TRadioButton
          Tag = 2
          Left = 256
          Top = 80
          Width = 89
          Height = 25
          Caption = 'Full Color'
          TabOrder = 3
        end
        object tKd_adv: TEdit
          Tag = 2
          Left = 160
          Top = 32
          Width = 89
          Height = 21
          MaxLength = 6
          ReadOnly = True
          TabOrder = 0
          Text = 'tKd_adv'
        end
        object tJns_Adv: TEdit
          Tag = 2
          Left = 160
          Top = 56
          Width = 169
          Height = 21
          MaxLength = 35
          TabOrder = 1
          Text = 'tJns_Adv'
        end
        object tJml_Adv: TEdit
          Tag = 2
          Left = 152
          Top = 136
          Width = 49
          Height = 21
          MaxLength = 1
          TabOrder = 4
          Text = 'tJml_Adv'
          OnChange = tJml_AdvChange
          OnKeyPress = tJml_AdvKeyPress
        end
        object tTinggi_Adv: TEdit
          Tag = 2
          Left = 152
          Top = 160
          Width = 49
          Height = 21
          MaxLength = 3
          TabOrder = 5
          Text = 'tTinggi_Adv'
          OnChange = tTinggi_AdvChange
          OnKeyPress = tTinggi_AdvKeyPress
        end
        object tTarif_Adv: TEdit
          Tag = 2
          Left = 152
          Top = 192
          Width = 145
          Height = 21
          MaxLength = 7
          TabOrder = 6
          Text = 'tTarif_Adv'
          OnChange = tTarif_AdvChange
          OnKeyPress = tTarif_AdvKeyPress
        end
      end
    end
  end
end
