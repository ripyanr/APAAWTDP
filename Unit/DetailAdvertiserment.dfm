object frDetailTransaction: TfrDetailTransaction
  Left = 470
  Top = 320
  BorderStyle = bsDialog
  Caption = 'Detail Transaction'
  ClientHeight = 491
  ClientWidth = 1031
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
  DesignSize = (
    1031
    491)
  PixelsPerInch = 96
  TextHeight = 13
  object bEdit_Advt: TSpeedButton
    Left = 8
    Top = 8
    Width = 177
    Height = 33
    Caption = 'Edit Position / '#13#10'Content Summary'
    Flat = True
    OnClick = bEdit_AdvtClick
  end
  object lbl1: TLabel
    Left = 744
    Top = 472
    Width = 280
    Height = 13
    Caption = 'Double Click The List for edit position advertising'
  end
  object lvAdvertisment: TListView
    Left = 8
    Top = 48
    Width = 1017
    Height = 409
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Advertising No'
        Width = 80
      end
      item
        Caption = 'Adv Code'
        Width = 80
      end
      item
        Caption = 'Type Advertising'
        Width = 100
      end
      item
        Caption = 'Summary of Advertisement'
        Width = 250
      end
      item
        Caption = 'Edition'
      end
      item
        Caption = 'Page'
      end
      item
        Caption = 'First Col'
      end
      item
        Caption = 'Col Count'
      end
      item
        Caption = 'First Pos'
      end
      item
        Caption = 'Col Height'
      end
      item
        Caption = 'Selling Price'
      end
      item
        Caption = 'Disc'
      end
      item
        Caption = 'Price Total'
        Width = 100
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
    OnDblClick = lvAdvertismentDblClick
  end
  object cbCategory: TComboBox
    Left = 768
    Top = 16
    Width = 257
    Height = 21
    Anchors = [akTop, akRight]
    ItemHeight = 13
    TabOrder = 1
  end
  object tSearch: TEdit
    Left = 189
    Top = 16
    Width = 564
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 0
    OnChange = tSearchChange
  end
end
