object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 744
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 128
    Top = 12
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object edtName: TEdit
    Left = 176
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Delphi 12'
  end
  object Button1: TButton
    Left = 318
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Say Hello'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 294
    Top = 76
    Width = 275
    Height = 105
    Caption = 'RadioGroup1'
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 318
    Top = 100
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 3
    OnClick = btnCheckClick
  end
  object RadioButton2: TRadioButton
    Left = 318
    Top = 123
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 4
    OnClick = btnCheckClick
  end
  object RadioButton3: TRadioButton
    Left = 318
    Top = 146
    Width = 113
    Height = 17
    Caption = 'RadioButton3'
    TabOrder = 5
    OnClick = btnCheckClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 76
    Width = 257
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 6
    object CheckBox1: TCheckBox
      Left = 24
      Top = 24
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 47
      Width = 97
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 24
      Top = 70
      Width = 97
      Height = 17
      Caption = 'CheckBox3'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
  object ListBox1: TListBox
    Left = 8
    Top = 201
    Width = 457
    Height = 104
    ItemHeight = 15
    TabOrder = 7
  end
  object Button2: TButton
    Left = 480
    Top = 201
    Width = 89
    Height = 25
    Caption = 'Show list item'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 480
    Top = 240
    Width = 89
    Height = 25
    Caption = 'Add item'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 480
    Top = 280
    Width = 91
    Height = 25
    Caption = 'Delete'
    TabOrder = 10
    OnClick = Button4Click
  end
  object VirtualStringTree1: TVirtualStringTree
    Left = 24
    Top = 376
    Width = 200
    Height = 100
    Colors.BorderColor = 15987699
    Colors.DisabledColor = clGray
    Colors.DropMarkColor = 15385233
    Colors.DropTargetColor = 15385233
    Colors.DropTargetBorderColor = 15385233
    Colors.FocusedSelectionColor = 15385233
    Colors.FocusedSelectionBorderColor = 15385233
    Colors.GridLineColor = 15987699
    Colors.HeaderHotColor = clBlack
    Colors.HotColor = clBlack
    Colors.SelectionRectangleBlendColor = 15385233
    Colors.SelectionRectangleBorderColor = 15385233
    Colors.SelectionTextColor = clBlack
    Colors.TreeLineColor = 9471874
    Colors.UnfocusedColor = clGray
    Colors.UnfocusedSelectionColor = clWhite
    Colors.UnfocusedSelectionBorderColor = clWhite
    Header.AutoSizeIndex = 0
    Header.MainColumn = -1
    TabOrder = 11
    TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toEditOnClick]
    OnGetText = VirtualStringTree1GetText
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    Columns = <>
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 8
    object File1: TMenuItem
      Caption = 'File'
      object miFileOpen: TMenuItem
        Caption = 'Open'
        OnClick = miFileOpenClick
      end
      object miFileSave: TMenuItem
        Caption = 'Save'
      end
      object miFileExit: TMenuItem
        Caption = 'Close'
        OnClick = miFileExitClick
      end
    end
    object File2: TMenuItem
      Caption = 'Edit'
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
