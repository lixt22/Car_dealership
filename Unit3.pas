unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    E_Filter: TEdit;
    procedure E_FilterChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  CSort_st: Integer = -1; // »нициализировать значение Ц1, так как
 // при запуске программы не было сортировки
 OrderBy_field: string; // параметр сортировки дл€ SQL-запроса

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit7, Unit8, Unit10;

procedure TForm3.DBGrid1TitleClick(Column: TColumn);
var
 sorttype: string;
begin
 // —бросим параметры дл€ колонки, с которой работали в прошлый раз
 if CSort_st >= 0 then
 begin
 DBGrid1.Columns[CSort_st].Title.Font.Color := clBlack;
 DBGrid1.Columns[CSort_st].Title.Font.Style :=
 Column.Title.Font.Style - [fsBold];
 end;
 // ”становим параметр сортировки как пустое значение
 // (соответствует сортировке по возрастанию ASC)
 sorttype := '';
 // «апомним индекс сортируемого столбца в глобальную переменную
 CSort_st := Column.Index;
 // ѕроверим, не выполн€лась ли сортировка по убыванию
 // дл€ данного пол€
 if OrderBy_field <> Column.FieldName + ' DESC' then
 begin
 // ≈сли сортировка по убыванию не выполн€лась, то сверим,
 // сортировали ли по этому полю или нет
 if OrderBy_field = Column.FieldName then
 // ≈сли сортировка по данному полю уже была, то помен€ем
 // тип сортировки на сортировку по убыванию
 sorttype := ' DESC';
 // «ададим стили шрифта заголовка дл€ отображени€ вида сортировки
 Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
 if sorttype = '' then
 Column.Title.Font.Color := clGreen // ѕо возрастанию
 else
 Column.Title.Font.Color := clBlue; // ѕо убыванию
 // ”становим сортировку дл€ пол€ с заданным параметром
 OrderBy_field := Column.FieldName + sorttype;
 end
 else
 // ≈сли в прошлый раз использовалась сортировка по убыванию,
 // то отключим сортировку
 OrderBy_field := '';
 // поскольку нужно обновить запрос то воспользуемс€ вызовом
 // кода прописанном в событии OnChange фильтра
 E_FilterChange(self);
end;

procedure TForm3.E_FilterChange(Sender: TObject);
var
baseSQL, filter_s: string;
orderBy_s: string; // ћодификаци€ (объ€вление переменной)
begin
DataModule2.Q_v_customers_list.DisableControls;
DataModule2.Q_v_customers_list.Active := false;
baseSQL := 'SELECT * FROM view_customers_list ';
filter_s := '';
orderBy_s :=''; // ћодификаци€ (задание пустого значени€)
if length(E_Filter.Text) > 0 then
filter_s := 'WHERE clName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR clAddress LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR clEmail LIKE ' + QuotedStr('%' + E_Filter.Text +
'%');
// ћодификаци€ (проверка указано ли поле сортировки)
if length(OrderBy_field) > 0 then
// задание строки с параметром сортировки,
// если дина значени€ OrderBy_field больше 0
orderBy_s := ' ORDER BY ' + OrderBy_field;
DataModule2.Q_v_customers_list.SQL.Text := baseSQL + filter_s + orderBy_s;
DataModule2.Q_v_customers_list.Active := true;
DataModule2.Q_v_customers_list.EnableControls;
end;

end.
