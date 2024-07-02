unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, System.Variants,
  frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    T_goods_catalog: TADOTable;
    T_customers_list: TADOTable;
    T_operations: TADOTable;
    T_op_goods_list: TADOTable;
    T_storage: TADOTable;
    T_car_color: TADOTable;
    DS_T_goods_catalog: TDataSource;
    DS_T_customers_list: TDataSource;
    DS_T_operations: TDataSource;
    DS_T_op_goods_list: TDataSource;
    DS_T_storage: TDataSource;
    DS_T_car_color: TDataSource;
    Q_v_goods_catalog: TADOQuery;
    Q_v_goods_operations: TADOQuery;
    Q_v_storage: TADOQuery;
    Q_v_selector_goods: TADOQuery;
    Q_storage_count: TADOQuery;
    Q_v_operation_goods_list: TADOQuery;
    DS_Q_v_goods_catalog: TDataSource;
    DS_Q_v_goods_operations: TDataSource;
    DS_Q_v_storage: TDataSource;
    DS_Q_v_operation_goods_list: TDataSource;
    T_type_body: TADOTable;
    T_type_engine: TADOTable;
    T_type_gear: TADOTable;
    T_type_privod: TADOTable;
    DS_T_type_body: TDataSource;
    DS_T_type_engine: TDataSource;
    DS_T_type_gear: TDataSource;
    DS_T_type_privod: TDataSource;
    DS_Q_v_selector: TDataSource;
    T_type_bodyIDtb: TIntegerField;
    T_type_bodytgName: TWideStringField;
    T_type_engineIDte: TIntegerField;
    T_type_engineteName: TWideStringField;
    T_type_gearIDgear: TAutoIncField;
    T_type_geargearName: TWideStringField;
    T_type_privodIDprivod: TIntegerField;
    T_type_privodprivodName: TWideStringField;
    T_goods_catalogIDcc: TIntegerField;
    T_goods_catalogIDbrand: TIntegerField;
    T_goods_catalogmodelName: TWideStringField;
    T_goods_catalogIDtb: TIntegerField;
    T_goods_catalogIDte: TIntegerField;
    T_goods_catalogIDgear: TIntegerField;
    T_goods_catalogIDprivod: TIntegerField;
    T_goods_catalogccCost: TBCDField;
    T_customers_listIDcl: TIntegerField;
    T_customers_listclName: TWideStringField;
    T_customers_listclAddress: TWideStringField;
    T_customers_listclPhone: TWideStringField;
    T_customers_listclEmail: TWideStringField;
    T_customers_listPasport: TWideStringField;
    T_operationsIDoperation: TAutoIncField;
    T_operationsoDateTime: TDateTimeField;
    T_op_goods_listIDoperation: TIntegerField;
    T_op_goods_listIDcc: TIntegerField;
    T_op_goods_listocCount: TIntegerField;
    T_storageIDstorage: TAutoIncField;
    T_storageIDcc: TIntegerField;
    T_storagesCount: TIntegerField;
    T_car_colorIDcolor: TIntegerField;
    T_car_colorcolorName: TWideStringField;
    Q_v_customers_list: TADOQuery;
    DS_Q_v_customers_list: TDataSource;
    Q_v_prodaja: TADOQuery;
    DS_Q_v_prodaja: TDataSource;
    T_brand_car: TADOTable;
    T_brand_carIDbrand: TIntegerField;
    T_brand_carbrandName: TWideStringField;
    DS_T_brand_car: TDataSource;
    T_dogovor_o_prodaje: TADOTable;
    T_dogovor_o_prodajeIDdogovor: TAutoIncField;
    T_dogovor_o_prodajeIDcc: TIntegerField;
    T_dogovor_o_prodajeIDcl: TIntegerField;
    T_dogovor_o_prodajeIDcolor: TIntegerField;
    T_dogovor_o_prodajeWin_number: TWideStringField;
    T_dogovor_o_prodajeDate_buy: TDateTimeField;
    DS_T_dogovor_o_prodaje: TDataSource;
    Q_v_goods_operationsIDoperation: TAutoIncField;
    Q_v_goods_operationsoDateTime: TDateTimeField;
    Q_prodaj_by_data: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    op_master: TfrxDBDataset;
    op_detail: TfrxDBDataset;
    frxReport3: TfrxReport;
    op_prodaja: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport5: TfrxReport;
    Q_v_goods_catalogIDcc: TIntegerField;
    Q_v_goods_catalogIDbrand: TIntegerField;
    Q_v_goods_catalogbrandName: TWideStringField;
    Q_v_goods_catalogmodelName: TWideStringField;
    Q_v_goods_catalogtgName: TWideStringField;
    Q_v_goods_catalogteName: TWideStringField;
    Q_v_goods_catalogprivodName: TWideStringField;
    Q_v_goods_cataloggearName: TWideStringField;
    Q_v_goods_catalogccCost: TBCDField;
    Q_cost_by_type_body: TADOQuery;
    Q_postavka_by_data: TADOQuery;
    Q_v_storageIDstorage: TAutoIncField;
    Q_v_storageIDcc: TIntegerField;
    Q_v_storageIDbrand: TIntegerField;
    Q_v_storagebrandName: TWideStringField;
    Q_v_storagemodelName: TWideStringField;
    Q_v_storagesCount: TIntegerField;
    Q_v_customers_listIDcl: TAutoIncField;
    Q_v_customers_listclName: TWideStringField;
    Q_v_customers_listclAddress: TWideStringField;
    Q_v_customers_listclPhone: TWideStringField;
    Q_v_customers_listclEmail: TWideStringField;
    Q_v_customers_listPasport: TWideStringField;
    frxReport6: TfrxReport;
    Q_v_operation_goods_listIDoperation: TIntegerField;
    Q_v_operation_goods_listIDcc: TIntegerField;
    Q_v_operation_goods_listIDbrand: TIntegerField;
    Q_v_operation_goods_listbrandName: TWideStringField;
    Q_v_operation_goods_listmodelName: TWideStringField;
    Q_v_operation_goods_listocCount: TIntegerField;
    Q_v_operation_goods_listccCost: TBCDField;
    Q_v_operation_goods_listogcFCost: TFMTBCDField;
    Q_v_operation_goods_listoDateTime: TDateTimeField;
    Q_v_prodajaIDdogovor: TIntegerField;
    Q_v_prodajaIDcc: TIntegerField;
    Q_v_prodajaIDbrand: TIntegerField;
    Q_v_prodajabrandName: TWideStringField;
    Q_v_prodajamodelName: TWideStringField;
    Q_v_prodajatgName: TWideStringField;
    Q_v_prodajateName: TWideStringField;
    Q_v_prodajagearName: TWideStringField;
    Q_v_prodajaprivodName: TWideStringField;
    Q_v_prodajacolorName: TWideStringField;
    Q_v_prodajaWin_number: TWideStringField;
    Q_v_prodajaDate_buy: TDateTimeField;
    Q_v_prodajaclAddress: TWideStringField;
    Q_v_prodajaclName: TWideStringField;
    Q_v_prodajaPasport: TWideStringField;
    Q_v_prodajaccCost: TBCDField;
    procedure Q_v_goods_catalogAfterScroll(DataSet: TDataSet);
    procedure T_goods_catalogAfterDelete(DataSet: TDataSet);
    procedure T_goods_catalogAfterPost(DataSet: TDataSet);
    procedure Q_v_goods_operationsAfterScroll(DataSet: TDataSet);
    procedure Q_v_operation_goods_listAfterScroll(DataSet: TDataSet);
    procedure T_operationsAfterPost(DataSet: TDataSet);
    procedure T_operationsAfterDelete(DataSet: TDataSet);
    procedure T_op_goods_listAfterDelete(DataSet: TDataSet);
    procedure T_op_goods_listAfterPost(DataSet: TDataSet);
    procedure T_dogovor_o_prodajeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit1, Unit3, Unit4, Unit5, Unit7, Unit8, Unit10;

{$R *.dfm}



procedure TDataModule2.Q_v_goods_catalogAfterScroll(DataSet: TDataSet);
begin
 // проверка количества отображаемых записей
 if Q_v_goods_catalog.RecordCount > 0 then
 // выполнение синхронизации методом Locate
 T_goods_catalog.Locate('IDcc', Q_v_goods_catalogIDcc.Value, [])
end;


procedure TDataModule2.Q_v_goods_operationsAfterScroll(DataSet: TDataSet);
begin
// проверка количества отображаемых записей
if Q_v_goods_operations.RecordCount > 0 then
// выполнение синхронизации методом Locate
T_operations.Locate('IDoperation', Q_v_goods_operationsIDoperation.Value, [])
end;

procedure TDataModule2.Q_v_operation_goods_listAfterScroll(DataSet: TDataSet);
begin
// Проверяем, существует ли объект (создана ли форма Form5)
if Assigned(Form5) then
if Q_v_operation_goods_list.RecordCount > 0 then
begin // Назначаем параметру идентификатор выбранного товара
Q_v_selector_goods.Parameters[1].Value :=
Q_v_operation_goods_listIDcc.Value;
// Обновляем НД списка товаров для DBL_goods_selector
Q_v_selector_goods.Requery();
// Синхронизируем НД T_op_goods_list
T_op_goods_list.Locate('IDoperation;IDcc',
VarArrayOf([Q_v_operation_goods_listIDoperation.Value,
Q_v_operation_goods_listIDcc.Value]), []);
end;
end;


procedure TDataModule2.T_dogovor_o_prodajeAfterPost(DataSet: TDataSet);
var pos:TBookmark;
begin
 // создание для текущей записи объекта-закладки
 pos := Q_v_prodaja.GetBookmark;
 Q_v_prodaja.Close();
 Q_v_prodaja.Open();
 // перемещение курсора БД на запись, определяемую закладкой
 Q_v_prodaja.GotoBookmark(pos);
 Q_v_prodaja.Requery();
end;

procedure TDataModule2.T_goods_catalogAfterDelete(DataSet: TDataSet);
begin
// обновление данных в НД Q_v_goods_catalog
 Q_v_goods_catalog.Requery();
 // обновление данных в НД Q_v_storage
 Q_v_storage.Requery();
end;

procedure TDataModule2.T_goods_catalogAfterPost(DataSet: TDataSet);
var pos:TBookmark;
begin
 // создание для текущей записи объекта-закладки
 pos := Q_v_goods_catalog.GetBookmark;
 Q_v_goods_catalog.Close();
 Q_v_goods_catalog.Open();
 // перемещение курсора БД на запись, определяемую закладкой
 Q_v_goods_catalog.GotoBookmark(pos);
 Q_v_storage.Requery();
end;

procedure TDataModule2.T_operationsAfterDelete(DataSet: TDataSet);
begin
Q_v_goods_operations.DisableControls();
Q_v_goods_operations.Requery();
Q_v_goods_operations.EnableControls();
end;

procedure TDataModule2.T_operationsAfterPost(DataSet: TDataSet);
var
 IDoperation: integer;
begin
 IDoperation := T_operationsIDoperation.Value;
 Q_v_goods_operations.DisableControls();
 Q_v_goods_operations.Requery();
 Q_v_goods_operations.Locate('IDoperation', IDoperation, []);
 Q_v_goods_operations.EnableControls();
end;

procedure TDataModule2.T_op_goods_listAfterDelete(DataSet: TDataSet);
begin
Q_v_operation_goods_list.DisableControls();
 Q_v_operation_goods_list.Requery();
 Q_v_operation_goods_list.EnableControls();
end;

procedure TDataModule2.T_op_goods_listAfterPost(DataSet: TDataSet);
var
 IDccVal: integer;
begin
 IDccVal := T_op_goods_listIDcc.Value;
 Q_v_operation_goods_list.DisableControls();
 Q_v_operation_goods_list.Requery();
 Q_v_operation_goods_list.Locate('IDcc', IDccVal, []);
 Q_v_operation_goods_list.EnableControls();
end;

end.
