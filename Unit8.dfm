object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082#1080
  ClientHeight = 574
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 714
    Height = 574
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
      object DBChart1: TDBChart
        Left = 0
        Top = 81
        Width = 706
        Height = 465
        Title.Text.Strings = (
          'TDBChart')
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: THorizBarSeries
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_cost_by_type_body
          ShowInLegend = False
          XLabelsSource = 'tgName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'avgCost'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 81
        Align = alTop
        TabOrder = 1
        object Label3: TLabel
          Left = 112
          Top = 23
          Width = 121
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086' '#1073#1088#1077#1085#1076#1072#1084
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 264
          Top = 23
          Width = 145
          Height = 21
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 0
          OnCloseUp = DBLookupComboBox3CloseUp
        end
        object Button3: TButton
          Left = 448
          Top = 27
          Width = 121
          Height = 25
          Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 0
        Top = 73
        Width = 706
        Height = 473
        Title.Text.Strings = (
          'TDBChart')
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: THorizBarSeries
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_storage_count
          ShowInLegend = False
          XLabelsSource = 'modelName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'sCount'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 73
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 40
          Top = 16
          Width = 121
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086' '#1073#1088#1077#1085#1076#1072#1084
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 216
          Top = 15
          Width = 145
          Height = 21
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 0
          OnCloseUp = DBLookupComboBox1CloseUp
        end
        object Button1: TButton
          Left = 432
          Top = 11
          Width = 121
          Height = 25
          Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1076#1072#1078' '
      ImageIndex = 2
      object DBChart3: TDBChart
        Left = 0
        Top = 97
        Width = 706
        Height = 449
        Title.Text.Strings = (
          'TDBChart')
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.ExactDateTime = False
        LeftAxis.Increment = 1.000000000000000000
        LeftAxis.Minimum = 1.000000000000000000
        LeftAxis.MinimumOffset = 1
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: TBarSeries
          Legend.Visible = False
          Marks.Style = smsValue
          DataSource = DataModule2.Q_prodaj_by_data
          ShowInLegend = False
          XLabelsSource = 'Date_buy'
          Sides = 40
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'kolvo'
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 97
        Align = alTop
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 193
          Top = 18
          Width = 289
          Height = 73
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          TabOrder = 0
          object Label4: TLabel
            Left = 184
            Top = 30
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object CheckBox1: TCheckBox
            Left = 3
            Top = 30
            Width = 89
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 98
            Top = 30
            Width = 73
            Height = 21
            Date = 45090.000000000000000000
            Time = 45090.000000000000000000
            TabOrder = 1
          end
          object DateTimePicker2: TDateTimePicker
            Left = 213
            Top = 30
            Width = 73
            Height = 21
            Date = 45090.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1089#1090#1072#1074#1086#1082
      ImageIndex = 3
      object DBChart4: TDBChart
        Left = 0
        Top = 105
        Width = 706
        Height = 441
        Title.Text.Strings = (
          'TDBChart')
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series4: THorizBarSeries
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_postavka_by_data
          ShowInLegend = False
          XLabelsSource = 'oDateTime'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'SUMcount'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 105
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 16
          Width = 121
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086' '#1073#1088#1077#1085#1076#1072#1084
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 127
          Top = 16
          Width = 115
          Height = 21
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 0
          OnCloseUp = DBLookupComboBox2CloseUp
        end
        object Button2: TButton
          Left = 32
          Top = 54
          Width = 169
          Height = 25
          Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1072#1084
          TabOrder = 1
          OnClick = Button2Click
        end
        object GroupBox4: TGroupBox
          Left = 377
          Top = 16
          Width = 289
          Height = 73
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          TabOrder = 2
          object Label5: TLabel
            Left = 184
            Top = 30
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object CheckBox2: TCheckBox
            Left = 3
            Top = 30
            Width = 89
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089
            TabOrder = 0
            OnClick = CheckBox2Click
          end
          object DateTimePicker3: TDateTimePicker
            Left = 98
            Top = 30
            Width = 73
            Height = 21
            Date = 45090.000000000000000000
            Time = 45090.000000000000000000
            TabOrder = 1
            OnChange = DateTimePicker3Change
          end
          object DateTimePicker4: TDateTimePicker
            Left = 207
            Top = 30
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
end
