object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'To Do List in Delphi'
  ClientHeight = 444
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object tGroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 612
    Height = 426
    Caption = 'TO DO LIST'
    TabOrder = 0
    object ListBox1: TListBox
      Left = 16
      Top = 32
      Width = 289
      Height = 377
      ItemHeight = 15
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object GroupBox1: TGroupBox
      Left = 336
      Top = 104
      Width = 257
      Height = 305
      Caption = 'ITEM DETAILS'
      TabOrder = 1
      object Label1: TLabel
        Left = 104
        Top = 40
        Width = 39
        Height = 30
        Caption = 'Task'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object ShownTitle: TLabel
        Left = 35
        Top = 88
        Width = 3
        Height = 15
        Alignment = taCenter
      end
      object Label2: TLabel
        Left = 80
        Top = 160
        Width = 88
        Height = 30
        Caption = 'Due Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object ShownDateDue: TLabel
        Left = 43
        Top = 208
        Width = 3
        Height = 15
        Alignment = taCenter
      end
    end
    object tbRightButton: TButton
      Left = 336
      Top = 33
      Width = 257
      Height = 25
      Caption = 'Add Item'
      TabOrder = 2
      OnClick = tbRightButtonClick
    end
    object DeleteCurrentEntry: TButton
      Left = 336
      Top = 73
      Width = 257
      Height = 25
      Caption = 'Delete Current Entry'
      TabOrder = 3
      OnClick = DeleteCurrentEntryClick
    end
  end
end
