unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXPickers, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    P_EditOperationInfo: TPanel;
    P_BaseControl: TPanel;
    GB_DateTime: TGroupBox;
    DatePicker1: TDatePicker;
    TimePicker1: TTimePicker;
    B_AppendGoods: TButton;
    B_ModifyGoods: TButton;
    B_DeleteGoods: TButton;
    B_CompleteModifyOperation: TButton;
    P_ModifyData: TPanel;
    DBL_goods_selector: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    B_SaveData: TButton;
    B_CancelModify: TButton;
    DBEdit1: TDBEdit;
    procedure DatePicker1Change(Sender: TObject);
    procedure TimePicker1Change(Sender: TObject);
    procedure B_CompleteModifyOperationClick(Sender: TObject);
    procedure B_AppendGoodsClick(Sender: TObject);
    procedure B_ModifyGoodsClick(Sender: TObject);
    procedure B_DeleteGoodsClick(Sender: TObject);
    procedure B_SaveDataClick(Sender: TObject);
    procedure B_CancelModifyClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit7, Unit8, Unit10;

procedure TForm5.B_AppendGoodsClick(Sender: TObject);
begin
if DataModule2.T_op_goods_list.State = dsBrowse then
 begin
 DBGrid1.Enabled := false; // Деактивируем компонент DBGrid1
 // Указываем в параметре, что товар не выбран
 DataModule2.Q_v_selector_goods.Parameters[1].Value := -1;
 // Обновляем НД списка товаров для DBL_goods_selector
 DataModule2.Q_v_selector_goods.Requery();
 // Включаем режим добавления
 DataModule2.T_op_goods_list.Append;
 P_ModifyData.Visible := true; // Показываем панель
 P_BaseControl.Visible := false; // Скрываем панель
 P_EditOperationInfo.Enabled := false; // Деактивируем панель
 end;
end;

procedure TForm5.B_CancelModifyClick(Sender: TObject);
begin
if DataModule2.T_op_goods_list.State in [dsEdit, dsInsert] then
 begin // Если находимся в режиме редактирования или добавления то
 DataModule2.T_op_goods_list.Cancel; // Отменяем изменения в НД
 P_BaseControl.Visible := true; // Показываем панель
 P_ModifyData.Visible := false; // Скрываем панель
 DBGrid1.Enabled := true; // Активируем компонент DBGrid1
 P_EditOperationInfo.Enabled := true; // Активируем панель
 end;

end;

procedure TForm5.B_CompleteModifyOperationClick(Sender: TObject);
begin
// Закрываем форму
 Form5.Close;
end;

procedure TForm5.B_DeleteGoodsClick(Sender: TObject);
begin
if DataModule2.T_op_goods_list.State = dsBrowse then
 if MessageDlg('Подтвердите удаление записи', mtConfirmation,
 [mbYes, mbNo], 0) = mrYes then
 DataModule2.T_op_goods_list.Delete;
end;

procedure TForm5.B_ModifyGoodsClick(Sender: TObject);
begin
if DataModule2.T_op_goods_list.State = dsBrowse then
 begin
 DBGrid1.Enabled := false; // Деактивируем компонент DBGrid1
 // Синхронизируем набор данных со списком выбора
 DataModule2.Q_v_selector_goods.Locate('IDcc',
 DataModule2.T_op_goods_listIDcc.Value, []);
 DataModule2.T_op_goods_list.edit; // Активируем редактирование НД
 P_ModifyData.Visible := true; // Показываем панель
 P_BaseControl.Visible := false; // Скрываем панель
 P_EditOperationInfo.Enabled := false; // Деактивируем панель
 end;
end;

procedure TForm5.B_SaveDataClick(Sender: TObject);
begin
if DataModule2.T_op_goods_list.State in [dsEdit, dsInsert] then
 begin // Если находимся в режиме редактирования или добавления то
 DataModule2.T_op_goods_list.post; // Сохраняем запись НД
 P_BaseControl.Visible := true; // Показываем панель
 P_ModifyData.Visible := false; // Скрываем панель
 DBGrid1.Enabled := true; // Активируем компонент DBGrid1
 P_EditOperationInfo.Enabled := true; // Активируем панель
 end;
end;

procedure TForm5.DatePicker1Change(Sender: TObject);
begin
// Если во время активности формы обнаруживаем изменение времени
 // относительно хранящегося в БД
 if Form5.Active and (DataModule2.T_operationsoDateTime.Value <>
 (DatePicker1.Date + TimePicker1.Time)) then
 begin
 // Переводим НД в режим редактирования если он не находится
 // в данном режиме
 if DataModule2.T_operations.State = dsBrowse then
 DataModule2.T_operations.edit;
 // Формируем тип TDateTime (выражается как сумма TDate и TTime)
 DataModule2.T_operationsoDateTime.Value := DatePicker1.Date +
 TimePicker1.Time;
 end;
end;

procedure TForm5.FormCloseQuery(Sender: TObject;
var CanClose: Boolean);
begin // Проверяем редактируем ли мы состав товаров в операции
 if P_ModifyData.Visible then
 begin
 // Если мы редактируем данные, то выводим сообщение
ShowMessage ('В данный момент происходит изменения перечня товаров в рамках операции, вы не можете завершить оформление');
 // Устанавливаем для флага CanClose значение говорящее,
 // что нельзя закрыть форму
 CanClose := false;
 //при помощи команды exit() игнорируем оставшийся код
 exit();
 end;
 // Если редактирование состава товаров операции не производится
 // то проверяем количество товаров в операции и если их нет
 if DataModule2.T_op_goods_list.RecordCount = 0 then
 begin // то выполняем отмену изменений в таблице операций
 if DataModule2.T_operations.State = dsEdit then
 DataModule2.T_operations.Cancel;
 // Удаляем запись об операции
 DataModule2.T_operations.Delete;
 end // В случае если в операции присутствуют товары,
 // то проверяем есть ли изменения в данных
 else if DataModule2.T_operations.State = dsEdit then
 begin // В случае если требуется сохранить изменения,
 // запрашивается подтверждение сохранения
 if MessageDlg('Подтвердить сохранение измененных данных операции',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 // Сохраняем изменения при получении подтверждения
 DataModule2.T_operations.post
 else // в противном случае выполняем отмену
 DataModule2.T_operations.Cancel;
 end;
 // Обновляем данные в Q_v_goods_operations имитируя
 // срабатывание события AfterPost
 DataModule2.T_operationsAfterPost(nil);
 // Обновляем данные в НД Q_v_storage
 DataModule2.Q_v_storage.Requery;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
GB_DateTime.Caption := 'Дата и время поставки товара';
end;

procedure TForm5.TimePicker1Change(Sender: TObject);
begin
// Если во время активности формы обнаруживаем изменение времени
// относительно хранящегося в БД
if Form5.Active and (DataModule2.T_operationsoDateTime.Value <>
(DatePicker1.Date + TimePicker1.Time)) then
begin
// Переводим НД в режим редактирования если он не находится
// в данном режиме
if DataModule2.T_operations.State = dsBrowse then
DataModule2.T_operations.edit;
// Формируем тип TDateTime (выражается как сумма TDate и TTime)
DataModule2.T_operationsoDateTime.Value := DatePicker1.Date +
TimePicker1.Time;
end;
end;


end.
