object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 838
  Width = 722
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=localhost;UID=ro' +
      'ot;DATABASE=goodsmanager;PORT=3306;CHARSET=utf8mb4;COLUMN_SIZE_S' +
      '32=1"'
    Left = 32
    Top = 8
  end
  object T_goods_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_goods_catalogAfterPost
    AfterDelete = T_goods_catalogAfterDelete
    TableName = 'goods_catalog'
    Left = 128
    Top = 8
    object T_goods_catalogIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object T_goods_catalogIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object T_goods_catalogmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object T_goods_catalogIDtb: TIntegerField
      FieldName = 'IDtb'
    end
    object T_goods_catalogIDte: TIntegerField
      FieldName = 'IDte'
    end
    object T_goods_catalogIDgear: TIntegerField
      FieldName = 'IDgear'
    end
    object T_goods_catalogIDprivod: TIntegerField
      FieldName = 'IDprivod'
    end
    object T_goods_catalogccCost: TBCDField
      FieldName = 'ccCost'
      Precision = 10
      Size = 2
    end
  end
  object T_customers_list: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'customers_list'
    Left = 128
    Top = 232
    object T_customers_listIDcl: TIntegerField
      FieldName = 'IDcl'
    end
    object T_customers_listclName: TWideStringField
      FieldName = 'clName'
      Size = 50
    end
    object T_customers_listclAddress: TWideStringField
      FieldName = 'clAddress'
      Size = 100
    end
    object T_customers_listclPhone: TWideStringField
      FieldName = 'clPhone'
      Size = 15
    end
    object T_customers_listclEmail: TWideStringField
      FieldName = 'clEmail'
      Size = 50
    end
    object T_customers_listPasport: TWideStringField
      FieldName = 'Pasport'
      Size = 10
    end
  end
  object T_operations: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_operationsAfterPost
    AfterDelete = T_operationsAfterDelete
    TableName = 'operations'
    Left = 128
    Top = 64
    object T_operationsIDoperation: TAutoIncField
      FieldName = 'IDoperation'
      ReadOnly = True
    end
    object T_operationsoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
  end
  object T_op_goods_list: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_op_goods_listAfterPost
    AfterDelete = T_op_goods_listAfterDelete
    IndexFieldNames = 'IDoperation'
    MasterFields = 'IDoperation'
    MasterSource = DS_T_operations
    TableName = 'op_goods_list'
    Left = 128
    Top = 176
    object T_op_goods_listIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object T_op_goods_listIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object T_op_goods_listocCount: TIntegerField
      FieldName = 'ocCount'
    end
  end
  object T_storage: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'storage'
    Left = 128
    Top = 120
    object T_storageIDstorage: TAutoIncField
      FieldName = 'IDstorage'
      ReadOnly = True
    end
    object T_storageIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object T_storagesCount: TIntegerField
      FieldName = 'sCount'
    end
  end
  object T_car_color: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'car_color'
    Left = 128
    Top = 284
    object T_car_colorIDcolor: TIntegerField
      FieldName = 'IDcolor'
    end
    object T_car_colorcolorName: TWideStringField
      FieldName = 'colorName'
      Size = 255
    end
  end
  object DS_T_goods_catalog: TDataSource
    DataSet = T_goods_catalog
    Left = 264
    Top = 8
  end
  object DS_T_customers_list: TDataSource
    DataSet = T_customers_list
    Left = 264
    Top = 232
  end
  object DS_T_operations: TDataSource
    DataSet = T_operations
    Left = 264
    Top = 64
  end
  object DS_T_op_goods_list: TDataSource
    DataSet = T_op_goods_list
    Left = 264
    Top = 176
  end
  object DS_T_storage: TDataSource
    DataSet = T_storage
    Left = 264
    Top = 120
  end
  object DS_T_car_color: TDataSource
    DataSet = T_car_color
    Left = 264
    Top = 288
  end
  object Q_v_goods_catalog: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_goods_catalogAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_goods_catalog')
    Left = 392
    Top = 8
    object Q_v_goods_catalogIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object Q_v_goods_catalogIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object Q_v_goods_catalogbrandName: TWideStringField
      FieldName = 'brandName'
      Size = 255
    end
    object Q_v_goods_catalogmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_goods_catalogtgName: TWideStringField
      FieldName = 'tgName'
      Size = 255
    end
    object Q_v_goods_catalogteName: TWideStringField
      FieldName = 'teName'
      Size = 255
    end
    object Q_v_goods_catalogprivodName: TWideStringField
      FieldName = 'privodName'
      Size = 255
    end
    object Q_v_goods_cataloggearName: TWideStringField
      FieldName = 'gearName'
      Size = 255
    end
    object Q_v_goods_catalogccCost: TBCDField
      FieldName = 'ccCost'
      Precision = 10
      Size = 2
    end
  end
  object Q_v_goods_operations: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_goods_operationsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_goods_operations'
      'ORDER BY oDateTime  ASC')
    Left = 392
    Top = 64
    object Q_v_goods_operationsIDoperation: TAutoIncField
      FieldName = 'IDoperation'
      ReadOnly = True
    end
    object Q_v_goods_operationsoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
  end
  object Q_v_storage: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_storage')
    Left = 392
    Top = 120
    object Q_v_storageIDstorage: TAutoIncField
      FieldName = 'IDstorage'
      ReadOnly = True
    end
    object Q_v_storageIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object Q_v_storageIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object Q_v_storagebrandName: TWideStringField
      FieldName = 'brandName'
      Size = 255
    end
    object Q_v_storagemodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_storagesCount: TIntegerField
      FieldName = 'sCount'
    end
  end
  object Q_v_selector_goods: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 224
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'IDccSelected'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 224
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IDcc, sNameCost, sCount'
      'FROM view_selector_goods'
      'WHERE view_selector_goods.IDcc NOT IN'
      '(SELECT IDcc FROM view_operation_goods_list'
      'WHERE view_operation_goods_list.IDoperation = :IDoperation)'
      'or view_selector_goods.IDcc = :IDccSelected')
    Left = 392
    Top = 288
  end
  object Q_storage_count: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'view_storage.*'
      'FROM view_storage')
    Left = 392
    Top = 400
  end
  object Q_v_operation_goods_list: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_operation_goods_listAfterScroll
    DataSource = DS_Q_v_goods_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 224
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM view_operation_goods_list'
      'WHERE view_operation_goods_list.IDoperation = :IDoperation')
    Left = 392
    Top = 176
    object Q_v_operation_goods_listIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object Q_v_operation_goods_listIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object Q_v_operation_goods_listIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object Q_v_operation_goods_listbrandName: TWideStringField
      FieldName = 'brandName'
      Size = 255
    end
    object Q_v_operation_goods_listmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_operation_goods_listocCount: TIntegerField
      FieldName = 'ocCount'
    end
    object Q_v_operation_goods_listccCost: TBCDField
      FieldName = 'ccCost'
      Precision = 10
      Size = 2
    end
    object Q_v_operation_goods_listogcFCost: TFMTBCDField
      FieldName = 'ogcFCost'
      Precision = 20
      Size = 2
    end
    object Q_v_operation_goods_listoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
  end
  object DS_Q_v_goods_catalog: TDataSource
    DataSet = Q_v_goods_catalog
    Left = 544
    Top = 8
  end
  object DS_Q_v_goods_operations: TDataSource
    DataSet = Q_v_goods_operations
    Left = 544
    Top = 64
  end
  object DS_Q_v_storage: TDataSource
    DataSet = Q_v_storage
    Left = 544
    Top = 120
  end
  object DS_Q_v_operation_goods_list: TDataSource
    DataSet = Q_v_operation_goods_list
    Left = 544
    Top = 176
  end
  object T_type_body: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_body'
    Left = 128
    Top = 620
    object T_type_bodyIDtb: TIntegerField
      FieldName = 'IDtb'
    end
    object T_type_bodytgName: TWideStringField
      FieldName = 'tgName'
      Size = 255
    end
  end
  object T_type_engine: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_engine'
    Left = 128
    Top = 396
    object T_type_engineIDte: TIntegerField
      FieldName = 'IDte'
    end
    object T_type_engineteName: TWideStringField
      FieldName = 'teName'
      Size = 255
    end
  end
  object T_type_gear: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_gear'
    Left = 128
    Top = 452
    object T_type_gearIDgear: TAutoIncField
      FieldName = 'IDgear'
      ReadOnly = True
    end
    object T_type_geargearName: TWideStringField
      FieldName = 'gearName'
      Size = 255
    end
  end
  object T_type_privod: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_privod'
    Left = 128
    Top = 508
    object T_type_privodIDprivod: TIntegerField
      FieldName = 'IDprivod'
    end
    object T_type_privodprivodName: TWideStringField
      FieldName = 'privodName'
      Size = 255
    end
  end
  object DS_T_type_body: TDataSource
    DataSet = T_type_body
    Left = 264
    Top = 624
  end
  object DS_T_type_engine: TDataSource
    DataSet = T_type_engine
    Left = 264
    Top = 400
  end
  object DS_T_type_gear: TDataSource
    DataSet = T_type_gear
    Left = 264
    Top = 456
  end
  object DS_T_type_privod: TDataSource
    DataSet = T_type_privod
    Left = 264
    Top = 512
  end
  object DS_Q_v_selector: TDataSource
    DataSet = Q_v_selector_goods
    Left = 544
    Top = 288
  end
  object Q_v_customers_list: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_customers_list')
    Left = 392
    Top = 232
    object Q_v_customers_listIDcl: TAutoIncField
      FieldName = 'IDcl'
      ReadOnly = True
    end
    object Q_v_customers_listclName: TWideStringField
      FieldName = 'clName'
      Size = 50
    end
    object Q_v_customers_listclAddress: TWideStringField
      FieldName = 'clAddress'
      Size = 100
    end
    object Q_v_customers_listclPhone: TWideStringField
      FieldName = 'clPhone'
      Size = 15
    end
    object Q_v_customers_listclEmail: TWideStringField
      FieldName = 'clEmail'
      Size = 50
    end
    object Q_v_customers_listPasport: TWideStringField
      FieldName = 'Pasport'
      Size = 10
    end
  end
  object DS_Q_v_customers_list: TDataSource
    DataSet = Q_v_customers_list
    Left = 544
    Top = 232
  end
  object Q_v_prodaja: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_prodaja'
      'ORDER BY Date_buy  ASC')
    Left = 392
    Top = 344
    object Q_v_prodajaIDdogovor: TIntegerField
      FieldName = 'IDdogovor'
    end
    object Q_v_prodajaIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object Q_v_prodajaIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object Q_v_prodajabrandName: TWideStringField
      FieldName = 'brandName'
      Size = 255
    end
    object Q_v_prodajamodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_prodajatgName: TWideStringField
      FieldName = 'tgName'
      Size = 255
    end
    object Q_v_prodajateName: TWideStringField
      FieldName = 'teName'
      Size = 255
    end
    object Q_v_prodajagearName: TWideStringField
      FieldName = 'gearName'
      Size = 255
    end
    object Q_v_prodajaprivodName: TWideStringField
      FieldName = 'privodName'
      Size = 255
    end
    object Q_v_prodajacolorName: TWideStringField
      FieldName = 'colorName'
      Size = 255
    end
    object Q_v_prodajaWin_number: TWideStringField
      FieldName = 'Win_number'
      Size = 17
    end
    object Q_v_prodajaDate_buy: TDateTimeField
      FieldName = 'Date_buy'
    end
    object Q_v_prodajaclAddress: TWideStringField
      FieldName = 'clAddress'
      Size = 100
    end
    object Q_v_prodajaclName: TWideStringField
      FieldName = 'clName'
      Size = 50
    end
    object Q_v_prodajaPasport: TWideStringField
      FieldName = 'Pasport'
      Size = 10
    end
    object Q_v_prodajaccCost: TBCDField
      FieldName = 'ccCost'
      Precision = 10
      Size = 2
    end
  end
  object DS_Q_v_prodaja: TDataSource
    DataSet = Q_v_prodaja
    Left = 544
    Top = 344
  end
  object T_brand_car: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'brand_car'
    Left = 128
    Top = 568
    object T_brand_carIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object T_brand_carbrandName: TWideStringField
      FieldName = 'brandName'
      Size = 255
    end
  end
  object DS_T_brand_car: TDataSource
    DataSet = T_brand_car
    Left = 264
    Top = 568
  end
  object T_dogovor_o_prodaje: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_dogovor_o_prodajeAfterPost
    TableName = 'dogovor_o_prodaje'
    Left = 128
    Top = 344
    object T_dogovor_o_prodajeIDdogovor: TAutoIncField
      FieldName = 'IDdogovor'
      ReadOnly = True
    end
    object T_dogovor_o_prodajeIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object T_dogovor_o_prodajeIDcl: TIntegerField
      FieldName = 'IDcl'
    end
    object T_dogovor_o_prodajeIDcolor: TIntegerField
      FieldName = 'IDcolor'
    end
    object T_dogovor_o_prodajeWin_number: TWideStringField
      FieldName = 'Win_number'
      Size = 17
    end
    object T_dogovor_o_prodajeDate_buy: TDateTimeField
      FieldName = 'Date_buy'
    end
  end
  object DS_T_dogovor_o_prodaje: TDataSource
    DataSet = T_dogovor_o_prodaje
    Left = 264
    Top = 344
  end
  object Q_prodaj_by_data: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'view_prodaja.Date_buy,'
      'COUNT(view_prodaja.IDbrand) AS kolvo'
      'FROM view_prodaja'
      'GROUP BY view_prodaja.Date_buy')
    Left = 392
    Top = 512
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_v_goods_catalog
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 424
  end
  object frxReport1: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45093.464439965300000000
    ReportOptions.LastChange = 45093.464439965300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 552
    Top = 424
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081)
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.880000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 110.400000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."brandName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 110.400000000000000000
          Width = 86.400000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."modelName"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 600.000000000000000000
          Width = 112.320000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."ccCost"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 196.800000000000000000
          Width = 110.400000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."tgName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 307.200000000000000000
          Width = 105.600000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."teName"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 412.800000000000000000
          Width = 91.200000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."privodName"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 504.000000000000000000
          Width = 96.000000000000000000
          Height = 26.880000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."gearName"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.000000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45093.500752025500000000
    ReportOptions.LastChange = 45093.500752025500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 552
    Top = 480
    Datasets = <
      item
        DataSet = op_prodaja
        DataSetName = 'op_prodaja'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 2
      ColumnWidth = 95.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '95')
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.000000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 107.217650000000000000
        Top = 96.000000000000000000
        Width = 359.055350000000000000
        Child = frxReport2.Child1
        DataSet = op_prodaja
        DataSetName = 'op_prodaja'
        KeepChild = True
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 30.538590000000000000
          Width = 111.949660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1040#1088#1090#1080#1082#1091#1083)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 123.840000000000000000
          Top = 30.538590000000000000
          Width = 205.833210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."IDcc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 49.920000000000000000
          Width = 111.949660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 123.840000000000000000
          Top = 49.920000000000000000
          Width = 205.833210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."brandName"] [op_prodaja."modelName"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 69.120000000000000000
          Width = 111.949660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1062#1074#1077#1090)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 123.840000000000000000
          Top = 69.120000000000000000
          Width = 205.833210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."colorName"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 88.320000000000000000
          Width = 111.949660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1042#1080#1085' '#1085#1086#1084#1077#1088)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 123.840000000000000000
          Top = 88.320000000000000000
          Width = 205.833210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."Win_number"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.000000000000000000
        Top = 316.800000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 230.400000000000000000
        Width = 359.055350000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 122.880000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            '[op_prodaja."ccCost"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 36.480000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100)
          ParentFont = False
        end
      end
    end
  end
  object op_master: TfrxDBDataset
    UserName = 'op_master'
    CloseDataSource = False
    DataSet = Q_v_goods_operations
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 480
  end
  object op_detail: TfrxDBDataset
    UserName = 'op_detail'
    CloseDataSource = False
    DataSet = Q_v_operation_goods_list
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 536
  end
  object frxReport3: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45093.567209143500000000
    ReportOptions.LastChange = 45093.567209143500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 552
    Top = 536
    Datasets = <
      item
        DataSet = op_prodaja
        DataSetName = 'op_prodaja'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 9.906000000000000000
      BottomMargin = 9.906000000000000000
      Columns = 2
      ColumnWidth = 95.250000000000000000
      ColumnPositions.Strings = (
        '0'
        '95,25')
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.821251640000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 240.000000000000000000
        Top = 105.600000000000000000
        Width = 360.000232500000000000
        DataSet = op_prodaja
        DataSetName = 'op_prodaja'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 28.800000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."brandName"] [op_prodaja."modelName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 48.000000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."tgName"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 67.200000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."teName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 86.400000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."gearName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 105.600000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."privodName"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 124.800000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."colorName"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 144.000000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."Win_number"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 163.200000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 10218495
          Memo.UTF8W = (
            '[op_prodaja."ccCost"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 28.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 48.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1080#1087' '#1082#1091#1079#1086#1074#1072)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 67.200000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 86.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 105.600000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1080#1087' '#1087#1088#1080#1074#1086#1076#1072)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 124.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1062#1074#1077#1090)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 144.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1042#1080#1085' '#1085#1086#1084#1077#1088)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 163.200000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 10218495
          Memo.UTF8W = (
            #1057#1090#1086#1084#1086#1089#1090#1100)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 10218495
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1086#1082#1091#1087#1082#1080)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 9.600000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 10218495
          Memo.UTF8W = (
            '[op_prodaja."Date_buy"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 403.200000000000000000
        Width = 718.821251640000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object op_prodaja: TfrxDBDataset
    UserName = 'op_prodaja'
    CloseDataSource = False
    DataSet = Q_v_prodaja
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 592
  end
  object frxReport4: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45093.580309606500000000
    ReportOptions.LastChange = 45093.580309606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 592
    Datasets = <
      item
        DataSet = op_master
        DataSetName = 'op_master'
      end
      item
        DataSet = op_detail
        DataSetName = 'op_detail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 48.000000000000000000
        ParentFont = False
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        DataSet = op_master
        DataSetName = 'op_master'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Top = 28.800000000000000000
          Width = 172.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          Memo.UTF8W = (
            '[op_master."oDateTime"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 211.200000000000000000
          Top = 28.800000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103' '#1087#1086#1089#1090#1072#1074#1082#1080':')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 124.800000000000000000
        Width = 718.110700000000000000
        DataSet = op_detail
        DataSetName = 'op_detail'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."brandName"] [op_detail."modelName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 211.200000000000000000
          Top = 0.000000000000000002
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."ocCount"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Top = 0.000000000000000002
          Width = 172.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."ccCost"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 0.000000000000000002
          Width = 182.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."ogcFCost"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 86.400000000000000000
        Width = 718.110700000000000000
        Condition = 'op_detail."ogcFCost"'
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 211.200000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Width = 172.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' 1 '#1077#1076'. '#1090#1086#1074#1072#1088#1072)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Width = 182.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            #1041#1088#1077#1085#1076' '#1080' '#1084#1086#1076#1077#1083#1100)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = Q_v_storage
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 648
  end
  object frxReport5: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45093.605656203700000000
    ReportOptions.LastChange = 45093.605656203700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 552
    Top = 648
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 144.000000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."modelName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 384.000000000000000000
          Width = 288.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."sCount"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1052#1086#1076#1077#1083#1100)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 268.800000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 13434879
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset3."brandName"'
        DrillDown = True
        KeepTogether = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 57.600000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."brandName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1041#1088#1077#1085#1076)
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 182.400000000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Width = 249.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086': [SUM(<frxDBDataset3."sCount">, MasterData1)] '#1077#1076'.')
          ParentFont = False
        end
      end
    end
  end
  object Q_cost_by_type_body: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'view_goods_catalog.tgName,'
      'AVG(view_goods_catalog.ccCost) AS avgCost'
      'FROM view_goods_catalog'
      'GROUP BY view_goods_catalog.tgName')
    Left = 392
    Top = 456
  end
  object Q_postavka_by_data: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'view_operation_goods_list.oDateTime,'
      'SUM(view_operation_goods_list.ocCount) AS SUMcount'
      'FROM view_operation_goods_list'
      'GROUP BY view_operation_goods_list.oDateTime')
    Left = 392
    Top = 568
  end
  object frxReport6: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45095.474867592600000000
    ReportOptions.LastChange = 45095.474867592600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 552
    Top = 704
    Datasets = <
      item
        DataSet = op_prodaja
        DataSetName = 'op_prodaja'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 960.000000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        DataSet = op_prodaja
        DataSetName = 'op_prodaja'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 163.200000000000000000
          Width = 412.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1075#1086#1074#1086#1088' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1075#1086' '#1089#1088#1077#1076#1089#1090#1074#1072)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_prodaja."Date_buy"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 38.400000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1040#1074#1090#1086#1089#1072#1083#1086#1085' "Elite Auto", '#1080#1084#1077#1085#1091#1077#1084#1099#1081' '#1074' '#1076#1072#1083#1100#1085#1077#1081#1096#1077#1084' "'#1087#1088#1086#1076#1072#1074#1077#1094'".')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Top = 67.200000000000000000
          Width = 9.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1080)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 96.000000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1043#1088#1072#1078#1076#1072#1085#1080#1085', [op_prodaja."clName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 115.200000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1048#1084#1077#1085#1091#1077#1084#1099#1081' '#1074' '#1076#1072#1083#1100#1085#1077#1081#1096#1077#1084' "'#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100'"')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 134.400000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1051#1080#1095#1085#1086#1089#1090#1100' '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1077#1090#1089#1103' '#1087#1072#1089#1087#1086#1088#1090#1086#1084': [op_prodaja."Pasport"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 153.600000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1055#1088#1086#1078#1080#1074#1072#1102#1096#1080#1081' '#1087#1086' '#1072#1076#1088#1077#1089#1091': ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 172.800000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[op_prodaja."clAddress"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 192.000000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1047#1072#1082#1083#1102#1095#1080#1083#1080' '#1085#1072#1089#1090#1086#1103#1097#1080#1081' '#1076#1086#1075#1086#1074#1086#1088' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103',')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 211.200000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1076#1072#1083#1077#1077' "'#1044#1086#1075#1086#1074#1086#1088'", '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1093' '#1091#1089#1083#1086#1074#1080#1103#1093':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 249.600000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '1. '#1055#1088#1077#1076#1084#1077#1090' '#1076#1086#1075#1086#1074#1086#1088#1072)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 288.000000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '1.1. '#1042' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1091#1089#1083#1086#1074#1080#1103#1084#1080' '#1085#1072#1089#1090#1086#1103#1097#1077#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1055#1088#1086#1076#1072#1074#1077#1094' '#1086#1073#1103 +
              #1079#1091#1077#1090#1089#1103' '#1087#1077#1088#1077#1076#1072#1090#1100' ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 307.200000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              #1074' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100' '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1102', '#1072' '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100' '#1086#1073#1103#1079#1091#1077#1090#1089#1103' '#1087#1088#1080#1085#1103#1090#1100' '#1080' '#1086#1087#1083 +
              #1072#1090#1080#1090#1100' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1091#1102)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 326.400000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1076#1086#1075#1086#1074#1086#1088#1086#1084' '#1094#1077#1085#1091' '#1079#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1100': ')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 345.600000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '1.1.1. '#1084#1072#1088#1082#1072', '#1084#1086#1076#1077#1083#1100': [op_prodaja."brandName"] [op_prodaja."mode' +
              'lName"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 364.800000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '1.1.2. '#1062#1074#1077#1090': [op_prodaja."colorName"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 384.000000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '1.1.3. '#1042#1080#1085'-'#1085#1086#1084#1077#1088': [op_prodaja."Win_number"] ('#1076#1072#1083#1077#1077' - '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100')' +
              '.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 403.200000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '1.2. '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1080#1090' '#1055#1088#1086#1076#1072#1074#1094#1091' '#1085#1072' '#1087#1088#1072#1074#1077' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' '#1085#1072' '#1086 +
              #1089#1085#1086#1074#1072#1085#1080#1080' ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 422.400000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 422.400000000000000000
          Width = 499.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              ', '#1095#1090#1086' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1077#1090#1089#1103'                                            ' +
              '                                                     .')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 460.800000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '2. '#1054#1073#1103#1079#1072#1085#1085#1086#1089#1090#1080' '#1089#1090#1086#1088#1086#1085)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 489.600000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '2.1. '#1055#1088#1086#1076#1072#1074#1077#1094' '#1086#1073#1103#1079#1072#1085':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 508.800000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '2.1.1. '#1055#1077#1088#1077#1076#1072#1090#1100' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100' '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1102' '#1074' '#1090#1077#1095#1077#1085#1080#1080'                (' +
              '                           )  '#1076#1085#1077#1081' '#1089)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 528.000000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1084#1086#1084#1077#1085#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103' '#1085#1072#1089#1090#1086#1103#1097#1077#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103'.')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 38.400000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 288.000000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 345.600000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 364.800000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 384.000000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 403.200000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 422.400000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 489.600000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 508.800000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 528.000000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 547.200000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '2.1.2. '#1054#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089' '#1087#1077#1088#1077#1076#1072#1095#1077#1081' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1103' '#1087#1077#1088#1077#1076#1072#1090#1100' '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1102' '#1074 +
              #1089#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099',')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 566.400000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1077' '#1076#1083#1103' '#1076#1072#1083#1100#1085#1077#1081#1096#1077#1081' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1103'.')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 585.600000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '2.2. '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100' '#1086#1073#1103#1079#1072#1085':')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 547.200000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 566.400000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 585.600000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 604.800000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '2.2.1. '#1055#1088#1080#1085#1103#1090#1100' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100' '#1087#1086' '#1072#1082#1090#1091' '#1087#1088#1080#1077#1084#1072'-'#1087#1077#1088#1077#1076#1072#1095#1080'.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 624.000000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '2.2.2. '#1057#1074#1086#1077#1074#1088#1077#1084#1077#1085#1085#1086' '#1080' '#1074' '#1087#1086#1083#1085#1086#1084' '#1086#1073#1098#1077#1084#1077' '#1086#1087#1083#1072#1090#1080#1090#1100' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1040#1074#1090#1086#1084#1086#1073 +
              #1080#1083#1103',')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 604.800000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 624.000000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 643.200000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1091#1102', '#1085#1072#1089#1090#1086#1103#1097#1080#1084' '#1076#1086#1075#1086#1074#1086#1088#1086#1084'-'#1082#1091#1087#1083#1080' '#1087#1088#1086#1076#1072#1078#1080' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103'.')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 662.400000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '2.3. '#1055#1088#1086#1076#1072#1074#1077#1094' '#1075#1072#1088#1072#1085#1090#1080#1088#1091#1077#1090', '#1095#1090#1086' '#1087#1088#1086#1076#1072#1074#1072#1077#1084#1099#1081' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100' '#1085#1080#1082#1086#1084#1091' '#1085#1077' ' +
              #1087#1088#1086#1076#1072#1085',')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 681.600000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              #1085#1077' '#1087#1086#1076#1072#1088#1077#1085', '#1085#1077' '#1079#1072#1083#1086#1078#1077#1085', '#1087#1088#1072#1074#1072#1084#1080' '#1090#1088#1077#1090#1100#1080#1093' '#1083#1080#1094' '#1085#1077' '#1086#1073#1088#1077#1084#1077#1085#1077#1085', '#1074' '#1089#1087#1086#1088 +
              #1077)
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 700.800000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1080' '#1087#1086#1076' '#1072#1088#1077#1089#1090#1086#1084'('#1079#1072#1087#1088#1077#1097#1077#1085#1080#1077#1084') '#1085#1077' '#1089#1086#1089#1090#1086#1080#1090'.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 230.400000000000000000
          Top = 739.200000000000000000
          Width = 220.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '3. '#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1080' '#1087#1086#1088#1103#1076#1086#1082' '#1086#1087#1083#1072#1090#1099)
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 777.600000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '3.1. '#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1090#1095#1091#1078#1076#1072#1077#1084#1086#1075#1086' '#1087#1086' '#1044#1086#1075#1086#1074#1086#1088#1091' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1103' '#1089#1086#1089#1090#1072#1074#1083#1103#1077#1090' '#1089#1091 +
              #1084#1084#1091' '#1074' '#1088#1072#1079#1084#1077#1088#1077)
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 796.800000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '                                         (                      ' +
              '                                                                ' +
              ' ) '#1088#1091#1073#1083#1077#1081'.')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 816.000000000000000000
          Width = 643.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '3.2. '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090' '#1086#1087#1083#1072#1090#1091' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1103' '#1085#1072#1083#1080#1095#1085#1099#1084#1080 +
              ' '#1089#1088#1077#1076#1089#1090#1074#1072#1084#1080' '#1074)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 835.200000000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              #1090#1077#1095#1077#1085#1080#1080'         (                   )   '#1082#1072#1083#1077#1085#1076#1072#1088#1085#1099#1093'  '#1076#1085#1077#1081' '#1089' '#1084#1086#1084#1077 +
              #1085#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1087#1085#1080#1103' '#1057#1090#1086#1088#1086#1085#1072#1084#1080' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080)
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 873.600000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 912.000000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 662.400000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 777.600000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 816.000000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 931.200000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '     ('#1087#1086#1076#1087#1080#1089#1100', '#1092#1072#1084#1080#1083#1080#1103' '#1087#1088#1086#1076#1072#1074#1094#1072')')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 873.600000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 912.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 931.200000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '    ('#1087#1086#1076#1087#1080#1089#1100', '#1092#1072#1084#1080#1083#1080#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103')')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 1123.200000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
end
