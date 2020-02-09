object frUser: TfrUser
  Left = 494
  Top = 156
  Width = 393
  Height = 420
  BorderStyle = bsSizeToolWin
  Caption = 'ADMINISTRATOR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 153
    Height = 29
    Caption = 'DATA USER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 40
    Width = 369
    Height = 337
    ActivePage = tabDataUser
    TabOrder = 0
    object tabInputData: TTabSheet
      Caption = 'Input User'
      object GroupBox1: TGroupBox
        Left = 32
        Top = 56
        Width = 297
        Height = 129
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 96
          Width = 54
          Height = 13
          Caption = 'Password'
        end
        object Label5: TLabel
          Left = 24
          Top = 72
          Width = 68
          Height = 13
          Caption = 'Level Akses'
        end
        object Label3: TLabel
          Left = 24
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Nama'
        end
        object Label2: TLabel
          Left = 24
          Top = 24
          Width = 40
          Height = 13
          Caption = 'UserID'
        end
        object tUserID: TEdit
          Left = 144
          Top = 16
          Width = 129
          Height = 21
          TabOrder = 0
        end
        object tUsername: TEdit
          Left = 144
          Top = 40
          Width = 129
          Height = 21
          TabOrder = 1
        end
        object tAccessID: TComboBox
          Left = 144
          Top = 64
          Width = 129
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            'USER'
            'GUEST')
        end
        object tPassword: TEdit
          Left = 144
          Top = 88
          Width = 129
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
        end
      end
      object bSave: TBitBtn
        Left = 248
        Top = 256
        Width = 81
        Height = 25
        Caption = '&Save'
        TabOrder = 2
        OnClick = bSaveClick
      end
      object bAdd: TBitBtn
        Left = 152
        Top = 256
        Width = 81
        Height = 25
        Caption = '&Add'
        TabOrder = 1
        OnClick = bAddClick
      end
    end
    object tabDataUser: TTabSheet
      Caption = 'Data User'
      ImageIndex = 1
      object lvUser: TListView
        Left = 8
        Top = 40
        Width = 345
        Height = 265
        Columns = <
          item
            Caption = 'No'
          end
          item
            Caption = 'UserID'
          end
          item
            AutoSize = True
            Caption = 'Nama Pengguna'
          end
          item
            Caption = 'Level Akses'
            Width = 90
          end
          item
            Caption = 'Password'
            MaxWidth = 1
            Width = 0
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 2
        ViewStyle = vsReport
        OnDblClick = lvUserDblClick
      end
      object bEdit: TBitBtn
        Left = 288
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Edit'
        TabOrder = 1
        OnClick = bEditClick
      end
      object bDelete: TBitBtn
        Left = 232
        Top = 8
        Width = 49
        Height = 25
        Caption = 'Delete'
        TabOrder = 0
        OnClick = bDeleteClick
      end
    end
  end
end
