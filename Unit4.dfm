object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1082#1072#1090#1072#1083#1086#1075#1086#1084' '#1090#1086#1074#1072#1088#1086#1074
  ClientHeight = 561
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 714
    Height = 258
    Align = alClient
    DataSource = DataModule2.DS_Q_v_goods_catalog
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
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
        Width = 85
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
        Width = 70
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
  object InsertEditDeletePanel: TPanel
    Left = 0
    Top = 258
    Width = 714
    Height = 117
    Align = alBottom
    TabOrder = 1
    object InsertButton: TButton
      Left = 40
      Top = 6
      Width = 75
      Height = 25
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = InsertButtonClick
    end
    object EditButton: TButton
      Left = 136
      Top = 6
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = EditButtonClick
    end
    object DeleteButton: TButton
      Left = 232
      Top = 6
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = DeleteButtonClick
    end
    object E_dFormat: TEdit
      Left = 328
      Top = 6
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '#.00 '#1056'.'
    end
    object B_setFormat: TButton
      Left = 416
      Top = 6
      Width = 105
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1086#1088#1084#1072#1090
      TabOrder = 4
      OnClick = B_setFormatClick
    end
    object GroupBox1: TGroupBox
      Left = 347
      Top = 52
      Width = 361
      Height = 59
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1094#1077#1085#1077
      TabOrder = 5
      object Label8: TLabel
        Left = 16
        Top = 24
        Width = 42
        Height = 13
        Caption = #1059#1089#1083#1086#1074#1080#1077
      end
      object Label9: TLabel
        Left = 152
        Top = 24
        Width = 48
        Height = 13
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      end
      object ComboCostCondition: TComboBox
        Left = 80
        Top = 24
        Width = 49
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
        Left = 216
        Top = 24
        Width = 41
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = SpinCostValueChange
      end
      object ChkCostFilter: TCheckBox
        Left = 263
        Top = 24
        Width = 97
        Height = 17
        Caption = #1042#1082#1083#1102#1095#1080#1090#1100
        TabOrder = 2
        OnClick = ChkCostFilterClick
      end
    end
    object E_Filter: TEdit
      Left = 27
      Top = 80
      Width = 280
      Height = 21
      TabOrder = 6
      TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1073#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1090#1080#1087#1072' '#1076#1077#1090#1072#1083#1080
      OnChange = E_FilterChange
    end
  end
  object PanelToInputValues: TPanel
    Left = 0
    Top = 375
    Width = 714
    Height = 186
    Align = alBottom
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 21
      Top = 6
      Width = 94
      Height = 13
      Caption = #1041#1088#1077#1085#1076' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
    end
    object Label2: TLabel
      Left = 27
      Top = 46
      Width = 88
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080
    end
    object Label3: TLabel
      Left = 59
      Top = 86
      Width = 56
      Height = 13
      Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072
    end
    object Label4: TLabel
      Left = 40
      Top = 126
      Width = 75
      Height = 13
      Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
    end
    object Label5: TLabel
      Left = 328
      Top = 6
      Width = 109
      Height = 13
      Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080' '#1087#1077#1088#1077#1076#1072#1095
    end
    object Label6: TLabel
      Left = 373
      Top = 46
      Width = 64
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1080#1074#1086#1076#1072
    end
    object Label7: TLabel
      Left = 383
      Top = 78
      Width = 54
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
    end
    object DBEdit1: TDBEdit
      Left = 456
      Top = 78
      Width = 145
      Height = 21
      DataField = 'ccCost'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 43
      Width = 145
      Height = 21
      DataField = 'modelName'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 136
      Top = 6
      Width = 145
      Height = 21
      DataField = 'IDbrand'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDbrand'
      ListField = 'brandName'
      ListSource = DataModule2.DS_T_brand_car
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 136
      Top = 80
      Width = 145
      Height = 21
      DataField = 'IDtb'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDtb'
      ListField = 'tgName'
      ListSource = DataModule2.DS_T_type_body
      TabOrder = 3
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 136
      Top = 118
      Width = 145
      Height = 21
      DataField = 'IDte'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDte'
      ListField = 'teName'
      ListSource = DataModule2.DS_T_type_engine
      TabOrder = 4
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 456
      Top = 6
      Width = 145
      Height = 21
      DataField = 'IDgear'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDgear'
      ListField = 'gearName'
      ListSource = DataModule2.DS_T_type_gear
      TabOrder = 5
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 456
      Top = 40
      Width = 145
      Height = 21
      DataField = 'IDprivod'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDprivod'
      ListField = 'privodName'
      ListSource = DataModule2.DS_T_type_privod
      TabOrder = 6
    end
    object PostButton: TButton
      Left = 416
      Top = 144
      Width = 75
      Height = 25
      Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
      TabOrder = 7
      OnClick = PostButtonClick
    end
    object CancelButton: TButton
      Left = 536
      Top = 144
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 8
      OnClick = CancelButtonClick
    end
  end
end
