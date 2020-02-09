object frDetailTransaction: TfrDetailTransaction
  Left = 139
  Top = 138
  BorderStyle = bsDialog
  Caption = 'Detail Transaksi'
  ClientHeight = 488
  ClientWidth = 863
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
    863
    488)
  PixelsPerInch = 96
  TextHeight = 13
  object bEdit_Advt: TSpeedButton
    Left = 8
    Top = 8
    Width = 177
    Height = 33
    Caption = 'Edit Posisi / '#13#10'Judul Iklan'
    Flat = True
    OnClick = bEdit_AdvtClick
  end
  object lbl1: TLabel
    Left = 8
    Top = 464
    Width = 242
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Double Click untuk melakukan pengeditan'
  end
  object lvAdvertisment: TListView
    Left = 8
    Top = 48
    Width = 848
    Height = 406
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'No Advertising'
        Width = 80
      end
      item
        Caption = 'Kode Iklan'
        Width = 80
      end
      item
        Caption = 'Jenis Iklan'
        Width = 100
      end
      item
        Caption = 'Isi Iklan'
        Width = 250
      end
      item
        Caption = 'Edisi'
      end
      item
        Caption = 'Halaman'
      end
      item
        Caption = 'Kolom Pertama'
      end
      item
        Caption = 'Jml Kolom'
      end
      item
        Caption = 'Posisi Pertama'
      end
      item
        Caption = 'Tinggi Kolom'
      end
      item
        Caption = 'Harga Jual'
      end
      item
        Caption = 'Diskon'
      end
      item
        Caption = 'Total Harga'
        Width = 100
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
    OnDblClick = lvAdvertismentDblClick
  end
  object cbCategory: TComboBox
    Left = 603
    Top = 16
    Width = 257
    Height = 21
    Anchors = [akTop, akRight]
    ItemHeight = 13
    TabOrder = 1
  end
  object tSearch: TEdit
    Left = 200
    Top = 16
    Width = 388
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = tSearchChange
  end
end
