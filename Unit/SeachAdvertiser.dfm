object frSearch: TfrSearch
  Left = 462
  Top = 173
  BorderStyle = bsDialog
  ClientHeight = 350
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    734
    350)
  PixelsPerInch = 96
  TextHeight = 13
  object tSearch: TEdit
    Left = 8
    Top = 8
    Width = 433
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = tSearchChange
  end
  object cbCategory: TComboBox
    Left = 448
    Top = 8
    Width = 281
    Height = 21
    AutoCloseUp = True
    Style = csDropDownList
    Anchors = [akTop, akRight]
    ItemHeight = 13
    TabOrder = 1
  end
  object lvAdvertiser: TListView
    Left = 8
    Top = 32
    Width = 721
    Height = 314
    Align = alCustom
    Columns = <
      item
        Caption = 'No Identitas'
        Width = 100
      end
      item
        AutoSize = True
        Caption = 'Nama'
      end
      item
        Caption = 'Organisasi'
        Width = 100
      end
      item
        Caption = 'Jabatan'
        Width = 100
      end
      item
        Caption = 'No. Kontak'
        Width = 80
      end
      item
        AutoSize = True
        Caption = 'Email'
      end
      item
        AutoSize = True
        Caption = 'Alamat'
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
    OnDblClick = lvAdvertiserDblClick
  end
end
