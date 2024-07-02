object Form5: TForm5
  Left = 44
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1082#1072
  ClientHeight = 739
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 695
    Height = 424
    Align = alClient
    DataSource = DataModule2.DS_Q_v_operation_goods_list
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
        FieldName = 'ocCount'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccCost'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' 1 '#1077#1076'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ogcFCost'
        Title.Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        Visible = True
      end>
  end
  object P_EditOperationInfo: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 113
    Align = alTop
    TabOrder = 1
    object GB_DateTime: TGroupBox
      Left = 32
      Top = 16
      Width = 361
      Height = 65
      Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1086#1089#1090#1072#1074#1082#1080
      TabOrder = 0
      object DatePicker1: TDatePicker
        Left = 16
        Top = 24
        Date = 45090.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
        OnChange = DatePicker1Change
      end
      object TimePicker1: TTimePicker
        Left = 188
        Top = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 45090.688277106480000000
        TimeFormat = 'hh:mm:ss'
        OnChange = TimePicker1Change
      end
    end
  end
  object P_BaseControl: TPanel
    Left = 0
    Top = 537
    Width = 695
    Height = 99
    Align = alBottom
    TabOrder = 2
    object B_AppendGoods: TButton
      Left = 0
      Top = 16
      Width = 97
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1086#1074#1072#1088
      TabOrder = 0
      OnClick = B_AppendGoodsClick
    end
    object B_ModifyGoods: TButton
      Left = 131
      Top = 16
      Width = 126
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      TabOrder = 1
      OnClick = B_ModifyGoodsClick
    end
    object B_DeleteGoods: TButton
      Left = 282
      Top = 16
      Width = 111
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      TabOrder = 2
      OnClick = B_DeleteGoodsClick
    end
    object B_CompleteModifyOperation: TButton
      Left = 456
      Top = 56
      Width = 153
      Height = 25
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077
      TabOrder = 3
      OnClick = B_CompleteModifyOperationClick
    end
  end
  object P_ModifyData: TPanel
    Left = 0
    Top = 636
    Width = 695
    Height = 103
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 111
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
    end
    object Label2: TLabel
      Left = 296
      Top = 6
      Width = 60
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object DBL_goods_selector: TDBLookupComboBox
      Left = 32
      Top = 27
      Width = 177
      Height = 21
      DataField = 'IDcc'
      DataSource = DataModule2.DS_T_op_goods_list
      KeyField = 'IDcc'
      ListField = 'sNameCost'
      ListSource = DataModule2.DS_Q_v_selector
      TabOrder = 0
    end
    object B_SaveData: TButton
      Left = 416
      Top = 56
      Width = 89
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      OnClick = B_SaveDataClick
    end
    object B_CancelModify: TButton
      Left = 534
      Top = 56
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = B_CancelModifyClick
    end
    object DBEdit1: TDBEdit
      Left = 272
      Top = 25
      Width = 121
      Height = 21
      DataField = 'ocCount'
      DataSource = DataModule2.DS_T_op_goods_list
      TabOrder = 3
    end
  end
end
