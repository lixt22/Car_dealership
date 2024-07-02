unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Menus, dateutils;

type
  TForm8 = class(TForm)
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    E_Filter: TEdit;
    SpinEdit1: TSpinEdit;
    GroupBox1: TGroupBox;
    B_NA_ColorSel: TButton;
    B_NA_FontSel: TButton;
    p_NA_record: TPanel;
    GroupBox3: TGroupBox;
    B_A_ColorSel: TButton;
    B_A_FontSel: TButton;
    p_A_record: TPanel;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    PM_add_supply: TMenuItem;
    PM_Edit_Operation: TMenuItem;
    procedure E_FilterChange(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure B_NA_ColorSelClick(Sender: TObject);
    procedure B_NA_FontSelClick(Sender: TObject);
    procedure B_A_ColorSelClick(Sender: TObject);
    procedure B_A_FontSelClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckBox1Click(Sender: TObject);
    procedure PM_add_supplyClick(Sender: TObject);
    procedure PM_Edit_OperationClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
   CSort_st: Integer = -1; // Инициализировать значение –1, так как
 // при запуске программы не было сортировки
 OrderBy_field: string; // параметр сортировки для SQL-запроса

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit3, Unit4, Unit5, Unit10, Unit8;

procedure DisplayForm5();
begin
 // Назначение даты (Trunc "отрезает" время)
 Form5.DatePicker1.Date :=
 Trunc(DataModule2.T_operationsoDateTime.value);
 // Назначение времени
 Form5.TimePicker1.Time :=
 TimeOf(DataModule2.T_operationsoDateTime.value);
 // Вызов показа формы
 Form5.ShowModal;
end;




procedure TForm8.B_A_ColorSelClick(Sender: TObject);
begin
// Заносим значение текущего цвета в диалог ColorDialog1
ColorDialog1.Color := p_A_record.Color;
// Если запускается диалог выбора цвета
if ColorDialog1.Execute then
// то назначаем цвет панели примера - p_A_record
p_A_record.Color := ColorDialog1.Color;
DBGrid1.Invalidate;
end;

procedure TForm8.B_A_FontSelClick(Sender: TObject);
begin
// Заносим параметры текущего шрифта в диалог FontDialog1
FontDialog1.Font := p_A_record.Font;
// Если запускается диалог выбора цвета
if FontDialog1.Execute then
// то назначаем шрифт панели примера - p_A_record
p_A_record.Font := FontDialog1.Font;
DBGrid1.Invalidate;
end;

procedure TForm8.B_NA_ColorSelClick(Sender: TObject);
begin
// Заносим значение текущего цвета в диалог ColorDialog1
ColorDialog1.Color := p_NA_record.Color;
// Если запускается диалог выбора цвета
if ColorDialog1.Execute then
// то назначаем цвет панели примера - p_NA_record
p_NA_record.Color := ColorDialog1.Color;
// Обновление (перерисовка) DBGrid1
DBGrid1.Invalidate;
end;

procedure TForm8.B_NA_FontSelClick(Sender: TObject);
begin
// Заносим параметры текущего шрифта в диалог FontDialog1
 FontDialog1.Font := p_NA_record.Font;
 // Если запускается диалог выбора цвета
 if FontDialog1.Execute then
 // то назначаем шрифт панели примера - p_NA_record
 p_NA_record.Font := FontDialog1.Font;
 DBGrid1.Invalidate
end;

procedure TForm8.CheckBox1Click(Sender: TObject);
begin
// Отключение фильтра
DataModule2.Q_v_goods_operations.Filtered := false;
// Формирование строки фильтрации
DataModule2.Q_v_goods_operations.Filter := 'oDateTime >= ' +
QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)) +
' and oDateTime <= ' + QuotedStr(FormatDateTime('YYYY-MM-DD',
DateTimePicker2.Date));
// задание параметра активности фильтра как у состояния CheckBox1
DataModule2.Q_v_goods_operations.Filtered := CheckBox1.Checked;
end;

procedure TForm8.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
with DBGrid1.Canvas do
 begin // Проверим, не меньше ли значение поля sCount
 // чем значение установленное в SpinEdit1
 if (DataModule2.Q_v_storagesCount.value <= SpinEdit1.value) then
 // Если условие выполняется, то зададим формат вывода
 begin
 // Установим параметров шрифта и фона из панели p_NA_record
 Font := p_NA_record.Font;
 Brush.Color := p_NA_record.Color;
 if (gdSelected in State) then // если запись выбрана
 begin
 // Установим параметров шрифта и фона из панели p_A_record
 Font := p_A_record.Font;
 Brush.Color := p_A_record.Color;
 end;
 end;
 end; // With
 // Выполним отрисовку поля стандартным методом
 DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm8.DBGrid1TitleClick(Column: TColumn);
var
 sorttype: string;
begin
 // Сбросим параметры для колонки, с которой работали в прошлый раз
 if CSort_st >= 0 then
 begin
 DBGrid1.Columns[CSort_st].Title.Font.Color := clBlack;
 DBGrid1.Columns[CSort_st].Title.Font.Style :=
 Column.Title.Font.Style - [fsBold];
 end;
 // Установим параметр сортировки как пустое значение
 // (соответствует сортировке по возрастанию ASC)
 sorttype := '';
 // Запомним индекс сортируемого столбца в глобальную переменную
 CSort_st := Column.Index;
 // Проверим, не выполнялась ли сортировка по убыванию
 // для данного поля
 if OrderBy_field <> Column.FieldName + ' DESC' then
 begin
 // Если сортировка по убыванию не выполнялась, то сверим,
 // сортировали ли по этому полю или нет
 if OrderBy_field = Column.FieldName then
 // Если сортировка по данному полю уже была, то поменяем
 // тип сортировки на сортировку по убыванию
 sorttype := ' DESC';
 // Зададим стили шрифта заголовка для отображения вида сортировки
 Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
 if sorttype = '' then
 Column.Title.Font.Color := clGreen // По возрастанию
 else
 Column.Title.Font.Color := clBlue; // По убыванию
 // Установим сортировку для поля с заданным параметром
 OrderBy_field := Column.FieldName + sorttype;
 end
 else
 // Если в прошлый раз использовалась сортировка по убыванию,
 // то отключим сортировку
 OrderBy_field := '';
 // поскольку нужно обновить запрос то воспользуемся вызовом
 // кода прописанном в событии OnChange фильтра
 E_FilterChange(self);
end;

procedure TForm8.E_FilterChange(Sender: TObject);
var
baseSQL, filter_s: string;
orderBy_s: string; // Модификация (объявление переменной)
begin
DataModule2.Q_v_storage.DisableControls;
DataModule2.Q_v_storage.Active := false;
baseSQL := 'SELECT * FROM view_storage ';
filter_s := '';
orderBy_s :=''; // Модификация (задание пустого значения)
if length(E_Filter.Text) > 0 then
filter_s := 'WHERE modelName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%');
// Модификация (проверка указано ли поле сортировки)
if length(OrderBy_field) > 0 then
// задание строки с параметром сортировки,
// если дина значения OrderBy_field больше 0
orderBy_s := ' ORDER BY ' + OrderBy_field;
DataModule2.Q_v_storage.SQL.Text := baseSQL + filter_s + orderBy_s;
DataModule2.Q_v_storage.Active := true;
DataModule2.Q_v_storage.EnableControls;
end;



procedure TForm8.PM_add_supplyClick(Sender: TObject);
begin
DataModule2.T_operations.AppendRecord([nil, Now()]);
DisplayForm5();
end;

procedure TForm8.PM_Edit_OperationClick(Sender: TObject);
begin
DisplayForm5();
end;

procedure TForm8.SpinEdit1Change(Sender: TObject);
begin
DBGrid1.Invalidate;
end;



end.
