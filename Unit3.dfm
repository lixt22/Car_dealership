object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
  ClientHeight = 726
  ClientWidth = 708
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
    Top = 83
    Width = 708
    Height = 643
    Align = alClient
    DataSource = DataModule2.DS_Q_v_customers_list
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
        FieldName = 'clName'
        Title.Caption = #1060#1048#1054' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clAddress'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 370
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clPhone'
        Title.Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clEmail'
        Title.Caption = #1055#1086#1095#1090#1072
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pasport'
        Title.Caption = #1055#1072#1089#1087#1086#1088#1090
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 83
    Align = alTop
    TabOrder = 1
    object E_Filter: TEdit
      Left = 80
      Top = 32
      Width = 329
      Height = 21
      TabOrder = 0
      TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1060#1048#1054','#1072#1076#1088#1077#1089#1072' '#1080#1083#1080' '#1087#1086#1095#1090#1099
      OnChange = E_FilterChange
    end
  end
end
