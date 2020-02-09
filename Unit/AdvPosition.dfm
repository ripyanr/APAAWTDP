object frAdvPosition: TfrAdvPosition
  Left = 362
  Top = 80
  BorderStyle = bsDialog
  Caption = 'Pengaturan Posisi Iklan'
  ClientHeight = 433
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 558
    Top = 24
    Width = 281
    Height = 401
    Shape = bsFrame
  end
  object bSave: TSpeedButton
    Left = 416
    Top = 384
    Width = 129
    Height = 33
    Caption = 'Save'
    OnClick = bSaveClick
  end
  object bAdd: TSpeedButton
    Left = 280
    Top = 384
    Width = 121
    Height = 33
    Caption = 'New'
    OnClick = bAddClick
  end
  object Panel3: TPanel
    Left = 16
    Top = 25
    Width = 537
    Height = 336
    Caption = 'Panel3'
    TabOrder = 0
    object Label9: TLabel
      Left = 440
      Top = 32
      Width = 20
      Height = 16
      Caption = 'Hal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 328
      Top = 32
      Width = 29
      Height = 16
      Caption = 'Edisi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 8
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Isi Iklan'
    end
    object tEdition_advt: TEdit
      Tag = 2
      Left = 384
      Top = 24
      Width = 41
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 1
      OnChange = tEdition_advtChange
    end
    object tPage_advt: TEdit
      Tag = 2
      Left = 480
      Top = 24
      Width = 41
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
      OnChange = tPage_advtChange
    end
    object pnlPos2: TPanel
      Left = 152
      Top = 232
      Width = 377
      Height = 73
      TabOrder = 4
      object Label10: TLabel
        Left = 184
        Top = 16
        Width = 81
        Height = 16
        Caption = 'Klm Pertama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 184
        Top = 40
        Width = 95
        Height = 16
        Caption = 'Posisi Pertama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 29
        Height = 16
        Caption = 'Edisi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 40
        Width = 20
        Height = 16
        Caption = 'Hal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object tEdition_edit: TEdit
        Tag = 2
        Left = 64
        Top = 8
        Width = 49
        Height = 21
        MaxLength = 3
        TabOrder = 0
        Text = 'tEdition_edit'
        OnChange = tEdition_editChange
      end
      object tPage_edit: TEdit
        Tag = 2
        Left = 64
        Top = 40
        Width = 49
        Height = 21
        MaxLength = 2
        TabOrder = 5
        Text = 'tPage_edit'
        OnChange = tPage_editChange
      end
      object tFirst_Column_Edit: TEdit
        Tag = 2
        Left = 294
        Top = 8
        Width = 40
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        OnChange = tFirst_Column_EditChange
      end
      object tFirst_Pos_Edit: TEdit
        Tag = 2
        Left = 294
        Top = 34
        Width = 40
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 3
        OnChange = tFirst_Pos_EditChange
      end
      object UpDown5: TUpDown
        Left = 334
        Top = 8
        Width = 17
        Height = 24
        Position = 1
        TabOrder = 2
        OnClick = UpDown5Click
      end
      object UpDown6: TUpDown
        Left = 334
        Top = 34
        Width = 17
        Height = 24
        TabOrder = 4
        OnClick = UpDown6Click
      end
    end
    object lvAdvertisment: TListView
      Left = 8
      Top = 56
      Width = 521
      Height = 169
      Columns = <
        item
          Caption = 'No'
          Width = 30
        end
        item
          Caption = 'No Advertising'
          Width = 150
        end
        item
          Caption = 'Kode'
          Width = 80
        end
        item
          Caption = 'Jns Iklan'
          Width = 150
        end
        item
          Caption = 'Klm Pertama'
        end
        item
          Caption = 'Posisi Pertama'
        end
        item
          Caption = 'Jml. Klm'
          MaxWidth = 1
          Width = 0
        end
        item
          Caption = 'Tinggi Klm'
          MaxWidth = 1
          Width = 0
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 3
      ViewStyle = vsReport
      OnDblClick = lvAdvertismentDblClick
    end
    object tContent: TEdit
      Tag = 2
      Left = 8
      Top = 24
      Width = 313
      Height = 21
      TabOrder = 0
      Text = 'tContent'
    end
  end
  object pnlBG: TPanel
    Left = 569
    Top = 35
    Width = 262
    Height = 375
    BevelOuter = bvNone
    Color = clGray
    Constraints.MaxHeight = 375
    Constraints.MaxWidth = 262
    Constraints.MinHeight = 375
    Constraints.MinWidth = 262
    ParentBackground = False
    TabOrder = 1
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 262
      Height = 375
      Align = alClient
      Brush.Color = clSkyBlue
    end
    object shpAdvt_new: TShape
      Left = 16
      Top = 24
      Width = 89
      Height = 129
      Visible = False
    end
  end
end
