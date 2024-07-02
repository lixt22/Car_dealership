object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103
  ClientHeight = 629
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 629
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #1050#1072#1090#1072#1083#1086#1075
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 193
        Align = alTop
        TabOrder = 0
        object E_Filter: TEdit
          Left = 0
          Top = 0
          Width = 325
          Height = 21
          TabOrder = 0
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1041#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1090#1080#1087#1072' '#1076#1077#1090#1072#1083#1080
          OnChange = E_FilterChange
        end
        object GroupBox1: TGroupBox
          Left = 211
          Top = 132
          Width = 289
          Height = 49
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1094#1077#1085#1077
          TabOrder = 1
          object Label8: TLabel
            Left = 3
            Top = 24
            Width = 42
            Height = 13
            Caption = #1059#1089#1083#1086#1074#1080#1077
          end
          object Label9: TLabel
            Left = 95
            Top = 24
            Width = 48
            Height = 13
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          end
          object ComboCostCondition: TComboBox
            Left = 51
            Top = 25
            Width = 38
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = '>'
            OnChange = ComboCostConditionChange
            Items.Strings = (
              '>'
              '>='
              '='
              '<>'
              '<'
              '<=')
          end
          object SpinCostValue: TSpinEdit
            Left = 149
            Top = 21
            Width = 64
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
            OnClick = SpinCostValueClick
          end
          object ChkCostFilter: TCheckBox
            Left = 219
            Top = 24
            Width = 66
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 2
            OnClick = ChkCostFilterClick
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 27
          Width = 210
          Height = 38
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1091
          TabOrder = 2
          object CheckBox1: TCheckBox
            Left = 122
            Top = 21
            Width = 75
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 3
            Top = 17
            Width = 97
            Height = 21
            DataField = 'IDbrand'
            DataSource = DataModule2.DS_T_goods_catalog
            KeyField = 'IDbrand'
            ListField = 'brandName'
            ListSource = DataModule2.DS_T_brand_car
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 71
          Width = 210
          Height = 39
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1091' '#1082#1091#1079#1086#1074#1072
          TabOrder = 3
          object CheckBox3: TCheckBox
            Left = 119
            Top = 19
            Width = 75
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 0
            OnClick = CheckBox3Click
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 3
            Top = 17
            Width = 88
            Height = 21
            DataField = 'IDtb'
            DataSource = DataModule2.DS_T_goods_catalog
            KeyField = 'IDtb'
            ListField = 'tgName'
            ListSource = DataModule2.DS_T_type_body
            TabOrder = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 494
          Top = 0
          Width = 210
          Height = 39
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1091' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
          TabOrder = 4
          object CheckBox4: TCheckBox
            Left = 119
            Top = 19
            Width = 75
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 0
            OnClick = CheckBox4Click
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 3
            Top = 15
            Width = 86
            Height = 21
            DataField = 'IDte'
            DataSource = DataModule2.DS_T_goods_catalog
            KeyField = 'IDte'
            ListField = 'teName'
            ListSource = DataModule2.DS_T_type_engine
            TabOrder = 1
          end
        end
        object GroupBox6: TGroupBox
          Left = 494
          Top = 45
          Width = 210
          Height = 39
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1091' '#1087#1088#1080#1074#1086#1076#1072
          TabOrder = 5
          object CheckBox5: TCheckBox
            Left = 119
            Top = 16
            Width = 75
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 0
            OnClick = CheckBox5Click
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 3
            Top = 15
            Width = 86
            Height = 21
            DataField = 'IDprivod'
            DataSource = DataModule2.DS_T_goods_catalog
            KeyField = 'IDprivod'
            ListField = 'privodName'
            ListSource = DataModule2.DS_T_type_privod
            TabOrder = 1
          end
        end
        object GroupBox7: TGroupBox
          Left = 494
          Top = 90
          Width = 210
          Height = 39
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1091' '#1082#1086#1088#1086#1073#1082#1080
          TabOrder = 6
          object CheckBox6: TCheckBox
            Left = 119
            Top = 16
            Width = 75
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 0
            OnClick = CheckBox6Click
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 3
            Top = 15
            Width = 85
            Height = 21
            DataField = 'IDgear'
            DataSource = DataModule2.DS_T_goods_catalog
            KeyField = 'IDgear'
            ListField = 'gearName'
            ListSource = DataModule2.DS_T_type_gear
            TabOrder = 1
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 193
        Width = 680
        Height = 329
        Align = alClient
        DataSource = DataModule2.DS_Q_v_goods_catalog
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'brandName'
            Title.Caption = #1041#1088#1077#1085#1076
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'teName'
            Title.Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'privodName'
            Title.Caption = #1058#1080#1087' '#1087#1088#1080#1074#1086#1076#1072
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gearName'
            Title.Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080' '#1087#1077#1088#1077#1076#1072#1095
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ccCost'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 522
        Width = 680
        Height = 79
        Align = alBottom
        TabOrder = 2
        object Button1: TButton
          Left = 264
          Top = 16
          Width = 161
          Height = 25
          Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1088#1086#1076#1072#1078#1091
          TabOrder = 0
          OnClick = Button1Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1072
      ImageIndex = 2
      object DBGrid4: TDBGrid
        Left = 0
        Top = 137
        Width = 680
        Height = 464
        Align = alClient
        DataSource = DataModule2.DS_Q_v_prodaja
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'brandName'
            Title.Caption = #1041#1088#1077#1085#1076
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'teName'
            Title.Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gearName'
            Title.Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080' '#1087#1077#1088#1077#1076#1072#1095
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'privodName'
            Title.Caption = #1058#1080#1087' '#1087#1088#1080#1074#1086#1076#1072
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'colorName'
            Title.Caption = #1062#1074#1077#1090
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Win_number'
            Title.Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date_buy'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1082#1091#1087#1082#1080
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clName'
            Title.Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pasport'
            Title.Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ccCost'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Width = 65
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 137
        Align = alTop
        TabOrder = 1
        object GroupBox4: TGroupBox
          Left = 176
          Top = 16
          Width = 353
          Height = 73
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          TabOrder = 0
          object Label5: TLabel
            Left = 208
            Top = 37
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object CheckBox2: TCheckBox
            Left = 16
            Top = 32
            Width = 97
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089
            TabOrder = 0
            OnClick = CheckBox2Click
          end
          object DateTimePicker3: TDateTimePicker
            Left = 119
            Top = 32
            Width = 73
            Height = 21
            Date = 45090.000000000000000000
            Time = 45090.000000000000000000
            TabOrder = 1
            OnChange = DateTimePicker3Change
          end
          object DateTimePicker4: TDateTimePicker
            Left = 248
            Top = 32
            Width = 73
            Height = 21
            Date = 45090.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 2
            OnChange = DateTimePicker4Change
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 612
    Top = 384
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
      OnClick = N3Click
    end
    object N11: TMenuItem
      Caption = #1057#1082#1083#1072#1076' '#1080' '#1087#1086#1089#1090#1072#1074#1082#1072
      OnClick = N11Click
    end
    object N4: TMenuItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072#1084#1080
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077
      object N6: TMenuItem
        Caption = #1043#1088#1072#1092#1080#1082#1080
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1050#1072#1090#1072#1083#1086#1075' '#1090#1086#1074#1072#1088#1086#1074
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1069#1090#1080#1082#1077#1090#1082#1072'"'
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1086#1076#1072#1078#1072#1084
        OnClick = N9Click
      end
      object N12: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1086#1089#1090#1072#1074#1082#1072#1084
        OnClick = N12Click
      end
      object N10: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1086' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1079#1072#1087#1072#1089#1072#1093
        OnClick = N10Click
      end
      object N13: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1092#1086#1088#1084#1072' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1086' '#1087#1088#1086#1076#1072#1078#1077
        OnClick = N13Click
      end
    end
  end
end
