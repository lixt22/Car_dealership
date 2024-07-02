object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1076#1072#1078#1072
  ClientHeight = 439
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object P_ModifyData: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 439
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Label7: TLabel
      Left = 495
      Top = 24
      Width = 26
      Height = 13
      Caption = #1062#1074#1077#1090
    end
    object Label8: TLabel
      Left = 470
      Top = 72
      Width = 51
      Height = 13
      Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
    end
    object Label9: TLabel
      Left = 435
      Top = 116
      Width = 86
      Height = 13
      Caption = #1060#1048#1054' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
    end
    object Label10: TLabel
      Left = 417
      Top = 164
      Width = 104
      Height = 13
      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    end
    object DBText1: TDBText
      Left = 184
      Top = 202
      Width = 65
      Height = 17
      DataField = 'gearName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object DBText2: TDBText
      Left = 184
      Top = 164
      Width = 65
      Height = 17
      DataField = 'teName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object Label1: TLabel
      Left = 19
      Top = 211
      Width = 113
      Height = 13
      Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080' '#1087#1077#1088#1077#1076#1072#1095':'
    end
    object Label2: TLabel
      Left = 53
      Top = 164
      Width = 79
      Height = 13
      Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103':'
    end
    object DBText3: TDBText
      Left = 184
      Top = 24
      Width = 65
      Height = 17
      DataField = 'brandName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object Label3: TLabel
      Left = 40
      Top = 24
      Width = 92
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1088#1077#1085#1076#1072':'
    end
    object DBText4: TDBText
      Left = 184
      Top = 72
      Width = 65
      Height = 17
      DataField = 'modelName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object Label4: TLabel
      Left = 44
      Top = 72
      Width = 88
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080
    end
    object Label5: TLabel
      Left = 72
      Top = 116
      Width = 60
      Height = 13
      Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072':'
    end
    object DBText5: TDBText
      Left = 184
      Top = 116
      Width = 65
      Height = 17
      DataField = 'tgName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object Label6: TLabel
      Left = 64
      Top = 259
      Width = 68
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1080#1074#1086#1076#1072':'
    end
    object DBText6: TDBText
      Left = 184
      Top = 259
      Width = 65
      Height = 17
      DataField = 'privodName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 560
      Top = 24
      Width = 145
      Height = 21
      DataField = 'IDcolor'
      DataSource = DataModule2.DS_T_dogovor_o_prodaje
      KeyField = 'IDcolor'
      ListField = 'colorName'
      ListSource = DataModule2.DS_T_car_color
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 560
      Top = 69
      Width = 145
      Height = 21
      DataField = 'Win_number'
      DataSource = DataModule2.DS_T_dogovor_o_prodaje
      TabOrder = 1
    end
    object DBLookupComboBox10: TDBLookupComboBox
      Left = 560
      Top = 116
      Width = 145
      Height = 21
      DataField = 'IDcl'
      DataSource = DataModule2.DS_T_dogovor_o_prodaje
      KeyField = 'IDcl'
      ListField = 'clName'
      ListSource = DataModule2.DS_T_customers_list
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 560
      Top = 161
      Width = 145
      Height = 21
      DataField = 'Pasport'
      DataSource = DataModule2.DS_T_customers_list
      TabOrder = 3
    end
    object B_SaveData: TButton
      Left = 262
      Top = 336
      Width = 83
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 4
      OnClick = B_SaveDataClick
    end
    object B_CancelModify: TButton
      Left = 406
      Top = 336
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 5
      OnClick = B_CancelModifyClick
    end
    object GB_DateTime: TGroupBox
      Left = 344
      Top = 235
      Width = 361
      Height = 78
      Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1088#1086#1076#1072#1078#1080
      TabOrder = 6
      object TimePicker1: TTimePicker
        Left = 188
        Top = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
        Time = 45090.688277106480000000
        TimeFormat = 'hh:mm:ss'
        OnChange = TimePicker1Change
      end
      object DatePicker1: TDatePicker
        Left = 16
        Top = 22
        Date = 45090.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        OnChange = DatePicker1Change
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 747
      Height = 437
      Align = alClient
      ParentBackground = False
      TabOrder = 7
      object Label11: TLabel
        Left = 495
        Top = 24
        Width = 26
        Height = 13
        Caption = #1062#1074#1077#1090
      end
      object Label12: TLabel
        Left = 470
        Top = 72
        Width = 51
        Height = 13
        Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
      end
      object Label13: TLabel
        Left = 435
        Top = 116
        Width = 86
        Height = 13
        Caption = #1060#1048#1054' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      end
      object Label14: TLabel
        Left = 417
        Top = 164
        Width = 104
        Height = 13
        Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      end
      object DBText7: TDBText
        Left = 184
        Top = 202
        Width = 65
        Height = 17
        DataField = 'gearName'
        DataSource = DataModule2.DS_Q_v_goods_catalog
      end
      object DBText8: TDBText
        Left = 184
        Top = 164
        Width = 65
        Height = 17
        DataField = 'teName'
        DataSource = DataModule2.DS_Q_v_goods_catalog
      end
      object Label15: TLabel
        Left = 19
        Top = 211
        Width = 113
        Height = 13
        Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080' '#1087#1077#1088#1077#1076#1072#1095':'
      end
      object Label16: TLabel
        Left = 53
        Top = 164
        Width = 79
        Height = 13
        Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103':'
      end
      object DBText9: TDBText
        Left = 184
        Top = 24
        Width = 65
        Height = 17
        DataField = 'brandName'
        DataSource = DataModule2.DS_Q_v_goods_catalog
      end
      object Label17: TLabel
        Left = 40
        Top = 24
        Width = 92
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1088#1077#1085#1076#1072':'
      end
      object DBText10: TDBText
        Left = 183
        Top = 71
        Width = 65
        Height = 17
        DataField = 'modelName'
        DataSource = DataModule2.DS_Q_v_goods_catalog
      end
      object Label18: TLabel
        Left = 44
        Top = 72
        Width = 88
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080
      end
      object Label19: TLabel
        Left = 72
        Top = 116
        Width = 60
        Height = 13
        Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072':'
      end
      object DBText11: TDBText
        Left = 184
        Top = 116
        Width = 65
        Height = 17
        DataField = 'tgName'
        DataSource = DataModule2.DS_Q_v_goods_catalog
      end
      object Label20: TLabel
        Left = 64
        Top = 259
        Width = 68
        Height = 13
        Caption = #1058#1080#1087' '#1087#1088#1080#1074#1086#1076#1072':'
      end
      object DBText12: TDBText
        Left = 184
        Top = 259
        Width = 65
        Height = 17
        DataField = 'privodName'
        DataSource = DataModule2.DS_Q_v_goods_catalog
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 560
        Top = 24
        Width = 145
        Height = 21
        DataField = 'IDcolor'
        DataSource = DataModule2.DS_T_dogovor_o_prodaje
        KeyField = 'IDcolor'
        ListField = 'colorName'
        ListSource = DataModule2.DS_T_car_color
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 560
        Top = 69
        Width = 145
        Height = 21
        DataField = 'Win_number'
        DataSource = DataModule2.DS_T_dogovor_o_prodaje
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 560
        Top = 116
        Width = 145
        Height = 21
        DataField = 'IDcl'
        DataSource = DataModule2.DS_T_dogovor_o_prodaje
        KeyField = 'IDcl'
        ListField = 'clName'
        ListSource = DataModule2.DS_T_customers_list
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 560
        Top = 161
        Width = 145
        Height = 21
        DataField = 'Pasport'
        DataSource = DataModule2.DS_T_customers_list
        TabOrder = 3
      end
      object Button1: TButton
        Left = 262
        Top = 336
        Width = 83
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 4
        OnClick = B_SaveDataClick
      end
      object Button2: TButton
        Left = 406
        Top = 336
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 5
        OnClick = B_CancelModifyClick
      end
      object GroupBox1: TGroupBox
        Left = 344
        Top = 235
        Width = 361
        Height = 78
        Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1088#1086#1076#1072#1078#1080
        TabOrder = 6
        object TimePicker2: TTimePicker
          Left = 188
          Top = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 0
          Time = 45090.688277106480000000
          TimeFormat = 'hh:mm:ss'
          OnChange = TimePicker1Change
        end
        object DatePicker2: TDatePicker
          Left = 16
          Top = 22
          Date = 45090.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
          OnChange = DatePicker1Change
        end
      end
      object Panel5: TPanel
        Left = 138
        Top = 10
        Width = 5
        Height = 279
        Color = clBlack
        ParentBackground = False
        TabOrder = 7
      end
      object Panel7: TPanel
        Left = 8
        Top = 283
        Width = 259
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 8
      end
      object Panel11: TPanel
        Left = 262
        Top = 10
        Width = 5
        Height = 275
        Color = clBlack
        ParentBackground = False
        TabOrder = 9
      end
      object Panel4: TPanel
        Left = 9
        Top = 10
        Width = 5
        Height = 279
        Color = clBlack
        ParentBackground = False
        TabOrder = 10
      end
      object Panel1: TPanel
        Left = 9
        Top = 10
        Width = 258
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 11
      end
      object Panel2: TPanel
        Left = 9
        Top = 47
        Width = 258
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 12
      end
      object Panel6: TPanel
        Left = 9
        Top = 94
        Width = 258
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 13
      end
      object Panel8: TPanel
        Left = 9
        Top = 139
        Width = 258
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 14
      end
      object Panel9: TPanel
        Left = 9
        Top = 190
        Width = 258
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 15
      end
      object Panel10: TPanel
        Left = 9
        Top = 235
        Width = 258
        Height = 5
        Color = clBlack
        ParentBackground = False
        TabOrder = 16
      end
    end
  end
end
