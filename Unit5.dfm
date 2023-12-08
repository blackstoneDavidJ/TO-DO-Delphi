object ADTForm: TADTForm
  Left = 0
  Top = 0
  Caption = 'Add to Form'
  ClientHeight = 245
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 358
    Height = 229
    Caption = 'Add TO DO'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 22
      Height = 15
      Caption = 'Title'
    end
    object Label2: TLabel
      Left = 16
      Top = 83
      Width = 48
      Height = 15
      Caption = 'Date Due'
    end
    object EntryTitleTextBox: TEdit
      Left = 16
      Top = 45
      Width = 193
      Height = 23
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 224
      Top = 24
      Width = 122
      Height = 103
      Caption = 'Text Settings'
      TabOrder = 1
      object FontDialog: TButton
        Left = 16
        Top = 29
        Width = 89
        Height = 49
        Caption = 'Font'
        TabOrder = 0
        OnClick = FontDialogClick
      end
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 104
      Width = 193
      Height = 23
      Date = 45267.000000000000000000
      Time = 0.598341168981278300
      TabOrder = 2
    end
    object EntrySubmitBtn: TButton
      Left = 16
      Top = 160
      Width = 193
      Height = 33
      Caption = 'Save'
      TabOrder = 3
      OnClick = EntrySubmitBtnClick
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 320
    Top = 216
  end
end
