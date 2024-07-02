object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1057#1082#1083#1072#1076' '#1080' '#1087#1086#1089#1090#1072#1074#1082#1072
  ClientHeight = 726
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 717
    Height = 726
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 177
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 143
          Height = 13
          Caption = #1042#1099#1073#1086#1088' '#1079#1072#1087#1080#1089#1077#1081' '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1093
        end
        object Label4: TLabel
          Left = 16
          Top = 54
          Width = 333
          Height = 13
          Caption = #1055#1086#1076#1089#1074#1090#1082#1072' '#1094#1074#1077#1090#1086#1084' '#1084#1072#1096#1080#1085' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1086#1090#1086#1088#1099#1093' '#1084#1077#1085#1100#1096#1077' '#1083#1080#1073#1086' '#1088#1072#1074#1085#1086
        end
        object E_Filter: TEdit
          Left = 200
          Top = 13
          Width = 259
          Height = 21
          TabOrder = 0
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1084#1086#1076#1077#1083#1080' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
          OnChange = E_FilterChange
        end
        object SpinEdit1: TSpinEdit
          Left = 392
          Top = 51
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnChange = SpinEdit1Change
        end
        object GroupBox1: TGroupBox
          Left = 32
          Top = 81
          Width = 273
          Height = 73
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1089#1074#1077#1090#1082#1080' '#1079#1072#1087#1080#1089#1077#1081
          TabOrder = 2
          object B_NA_ColorSel: TButton
            Left = 11
            Top = 24
            Width = 75
            Height = 25
            Caption = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072
            TabOrder = 0
            OnClick = B_NA_ColorSelClick
          end
          object B_NA_FontSel: TButton
            Left = 92
            Top = 24
            Width = 82
            Height = 25
            Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
            TabOrder = 1
            OnClick = B_NA_FontSelClick
          end
          object p_NA_record: TPanel
            Left = 180
            Top = 24
            Width = 73
            Height = 28
            BevelInner = bvLowered
            Caption = #1058#1077#1082#1089#1090' '#1079#1072#1087#1080#1089#1080
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 368
          Top = 79
          Width = 329
          Height = 74
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1089#1074#1077#1090#1082#1080' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1079#1072#1087#1080#1089#1080
          TabOrder = 3
          object B_A_ColorSel: TButton
            Left = 16
            Top = 32
            Width = 75
            Height = 25
            Caption = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072
            TabOrder = 0
            OnClick = B_A_ColorSelClick
          end
          object B_A_FontSel: TButton
            Left = 119
            Top = 32
            Width = 82
            Height = 25
            Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
            TabOrder = 1
            OnClick = B_A_FontSelClick
          end
          object p_A_record: TPanel
            Left = 216
            Top = 35
            Width = 81
            Height = 22
            BevelInner = bvLowered
            Caption = #1090#1077#1082#1089#1090' '#1079#1072#1087#1080#1089#1080
            Color = clMaroon
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 177
        Width = 709
        Height = 521
        Align = alClient
        DataSource = DataModule2.DS_Q_v_storage
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'brandName'
            Title.Caption = #1041#1088#1077#1085#1076
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sCount'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1082#1072
      ImageIndex = 1
      object Label2: TLabel
        Left = 0
        Top = 565
        Width = 709
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = #1057#1086#1089#1090#1072#1074' '#1087#1086#1089#1090#1072#1074#1082#1080
        ExplicitWidth = 86
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 97
        Width = 709
        Height = 468
        Align = alClient
        DataSource = DataModule2.DS_Q_v_goods_operations
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDoperation'
            Title.Caption = #1053#1086#1084#1077#1088' '#1086#1087#1077#1088#1072#1094#1080#1080
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'oDateTime'
            Title.Caption = #1044#1072#1090#1072
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 97
        Align = alTop
        TabOrder = 1
        object GroupBox2: TGroupBox
          Left = 176
          Top = 0
          Width = 329
          Height = 69
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          TabOrder = 0
          object Label3: TLabel
            Left = 199
            Top = 33
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object CheckBox1: TCheckBox
            Left = 17
            Top = 32
            Width = 97
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089' '
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 120
            Top = 32
            Width = 73
            Height = 21
            Date = 45090.000000000000000000
            Time = 45090.000000000000000000
            TabOrder = 1
          end
          object DateTimePicker2: TDateTimePicker
            Left = 231
            Top = 32
            Width = 74
            Height = 21
            Date = 45090.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 2
          end
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 578
        Width = 709
        Height = 120
        Align = alBottom
        DataSource = DataModule2.DS_Q_v_operation_goods_list
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 508
    Top = 464
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 588
    Top = 464
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 464
    object PM_add_supply: TMenuItem
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1086#1089#1090#1072#1074#1082#1091
      OnClick = PM_add_supplyClick
    end
    object PM_Edit_Operation: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
      OnClick = PM_Edit_OperationClick
    end
  end
end
