unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.StdCtrls, Vcl.Samples.Spin, dateutils,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    CheckBox2: TCheckBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    E_Filter: TEdit;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    ComboCostCondition: TComboBox;
    SpinCostValue: TSpinEdit;
    ChkCostFilter: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    CheckBox3: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    CheckBox4: TCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    CheckBox5: TCheckBox;
    DBLookupComboBox4: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    CheckBox6: TCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    N12: TMenuItem;
    N13: TMenuItem;
    procedure CheckBox2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
    procedure ComboCostConditionChange(Sender: TObject);
    procedure ChkCostFilterClick(Sender: TObject);
    procedure SpinCostValueClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure N13Click(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CSort_st: Integer = -1; // »нициализировать значение Ц1, так как
  // при запуске программы не было сортировки
  OrderBy_field: string; // параметр сортировки дл€ SQL-запроса
  f1, f2, f3, f4, f5, f6: string;

  IsAppStatrtedFlag: boolean = false;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit7, Unit8, Unit10;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule2.T_dogovor_o_prodaje.Append;
  DataModule2.T_dogovor_o_prodajeIDcc.Value :=
    DataModule2.Q_v_goods_catalogIDcc.Value;
  Form10.Showmodal;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
  if CheckBox1.Checked then
    f1 := ' brandName LIKE ' +
      QuotedStr('%' + DBLookupComboBox1.Text + '%')
       else f1:='';

  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  if length(f2) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f2;
    end
    else
      filter_s := f2;
  if length(f3) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f3;
    end
    else
      filter_s := f3;
  if length(f4) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f4;
    end
    else
      filter_s := f4;
  if length(f5) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f5;
    end
    else
      filter_s := f5;
  if length(f6) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f6;
    end
    else
      filter_s := f6;

  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;

  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;

  DataModule2.Q_v_goods_catalog.Active := True;

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
   // ќтключение фильтра
  DataModule2.Q_v_prodaja.Filtered := false;
  // ‘ормирование строки фильтрации
  DataModule2.Q_v_prodaja.Filter := 'Date_buy >= ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker3.Date)) +
    ' and Date_buy <= ' + QuotedStr(FormatDateTime('YYYY-MM-DD',
    DateTimePicker4.Date));
  // задание параметра активности фильтра как у состо€ни€ CheckBox2
  DataModule2.Q_v_prodaja.Filtered := CheckBox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
   if CheckBox3.Checked then
    f2 := ' tgName LIKE ' +
      QuotedStr('%' + DBLookupComboBox2.Text + '%')
      else f2:='';
  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  if length(f2) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f2;
    end
    else
      filter_s := f2;
  if length(f3) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f3;
    end
    else
      filter_s := f3;
  if length(f4) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f4;
    end
    else
      filter_s := f4;
  if length(f5) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f5;
    end
    else
      filter_s := f5;
  if length(f6) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f6;
    end
    else
      filter_s := f6;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;
  DataModule2.Q_v_goods_catalog.Active := True;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
   if CheckBox4.Checked then
    f3 := ' teName LIKE ' +
      QuotedStr('%' + DBLookupComboBox3.Text + '%')
      else f3:='';
  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  if length(f2) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f2;
    end
    else
      filter_s := f2;
  if length(f3) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f3;
    end
    else
      filter_s := f3;
  if length(f4) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f4;
    end
    else
      filter_s := f4;
  if length(f5) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f5;
    end
    else
      filter_s := f5;
  if length(f6) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f6;
    end
    else
      filter_s := f6;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;

  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;
  DataModule2.Q_v_goods_catalog.Active := True;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
   if CheckBox5.Checked then
    f4 := ' privodName LIKE ' +
      QuotedStr('%' + DBLookupComboBox4.Text + '%')
      else f4:='';
  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  if length(f2) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f2;
    end
    else
      filter_s := f2;
  if length(f3) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f3;
    end
    else
      filter_s := f3;
  if length(f4) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f4;
    end
    else
      filter_s := f4;
  if length(f5) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f5;
    end
    else
      filter_s := f5;
  if length(f6) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f6;
    end
    else
      filter_s := f6;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;

  DataModule2.Q_v_goods_catalog.Active := True;
end;


procedure TForm1.CheckBox6Click(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
   if CheckBox6.Checked then
    f5 := ' gearName LIKE ' +
      QuotedStr('%' + DBLookupComboBox5.Text + '%')
      else f5:='';
  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  if length(f2) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f2;
    end
    else
      filter_s := f2;
  if length(f3) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f3;
    end
    else
      filter_s := f3;
  if length(f4) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f4;
    end
    else
      filter_s := f4;
  if length(f5) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f5;
    end
    else
      filter_s := f5;
  if length(f6) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f6;
    end
    else
      filter_s := f6;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;
  DataModule2.Q_v_goods_catalog.Active := True;
end;


procedure TForm1.ChkCostFilterClick(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
   if ChkCostFilter.Checked then
    f6 := 'ccCost ' + ComboCostCondition.Text + ' ' +
      IntToStr(SpinCostValue.Value)
      else f6:='';
  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  if length(f2) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f2;
    end
    else
      filter_s := f2;
  if length(f3) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f3;
    end
    else
      filter_s := f3;
  if length(f4) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f4;
    end
    else
      filter_s := f4;
  if length(f5) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f5;
    end
    else
      filter_s := f5;
  if length(f6) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f6;
    end
    else
      filter_s := f6;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;
  DataModule2.Q_v_goods_catalog.Active := True;
end;


procedure TForm1.ComboCostConditionChange(Sender: TObject);
begin
  ChkCostFilterClick(nil);
end;

procedure TForm1.DateTimePicker3Change(Sender: TObject);
begin
CheckBox2Click(nil);
end;

procedure TForm1.DateTimePicker4Change(Sender: TObject);
begin
CheckBox2Click(nil);
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
var
  sorttype: string;
begin
  // —бросим параметры дл€ колонки, с которой работали в прошлый раз
  if CSort_st >= 0 then
  begin
    DBGrid1.Columns[CSort_st].Title.Font.Color := clBlack;
    DBGrid1.Columns[CSort_st].Title.Font.Style := Column.Title.Font.Style
      - [fsBold];
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

procedure TForm1.E_FilterChange(Sender: TObject);
var
  baseSQL, filter_s: string;
  orderBy_s: string; // ћодификаци€ (объ€вление переменной)
begin
  DataModule2.Q_v_goods_catalog.DisableControls;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog ';
  filter_s := '';
  orderBy_s := ''; // ћодификаци€ (задание пустого значени€)
  if length(E_Filter.Text) > 0 then
    filter_s := 'WHERE brandName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR modelName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR tgName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR teName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR privodName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR gearName LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
  // ћодификаци€ (проверка указано ли поле сортировки)
  if length(OrderBy_field) > 0 then
    // задание строки с параметром сортировки,
    // если дина значени€ OrderBy_field больше 0
    orderBy_s := ' ORDER BY ' + OrderBy_field;
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s + orderBy_s;
  DataModule2.Q_v_goods_catalog.Active := True;
  DataModule2.Q_v_goods_catalog.EnableControls;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  DataModule2.frxReport5.ShowReport();
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Form8.Show;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
  DataModule2.frxReport4.ShowReport();
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  DataModule2.frxReport6.ShowReport();
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  DataModule2.frxReport1.ShowReport();
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  DataModule2.frxReport2.ShowReport();
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  DataModule2.frxReport3.ShowReport();
end;

procedure TForm1.SpinCostValueClick(Sender: TObject);
begin
  ChkCostFilterClick(nil);
end;

end.
