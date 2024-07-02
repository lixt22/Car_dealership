unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  Data.DB, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBChart2: TDBChart;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Label1: TLabel;
    Series2: THorizBarSeries;
    TabSheet3: TTabSheet;
    DBChart1: TDBChart;
    Series1: THorizBarSeries;
    TabSheet4: TTabSheet;
    DBChart3: TDBChart;
    Series3: TBarSeries;
    DBChart4: TDBChart;
    Series4: THorizBarSeries;
    Panel3: TPanel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button2: TButton;
    Panel2: TPanel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    Button3: TButton;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    CheckBox2: TCheckBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm7.Button1Click(Sender: TObject);
begin
// Назначаем пустое значение в качестве выбора
 DBLookupComboBox1.KeyValue := Null;
 // Имитируем выполнение события OnCloseUp
 // в компоненте DBLookupComboBox1
 DBLookupComboBox1CloseUp(nil);

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
// Назначаем пустое значение в качестве выбора
 DBLookupComboBox2.KeyValue := Null;
 // Имитируем выполнение события OnCloseUp
 // в компоненте DBLookupComboBox1
 DBLookupComboBox2CloseUp(nil);
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
// Назначаем пустое значение в качестве выбора
 DBLookupComboBox3.KeyValue := Null;
 // Имитируем выполнение события OnCloseUp
 // в компоненте DBLookupComboBox1
 DBLookupComboBox3CloseUp(nil);
end;

procedure TForm7.CheckBox1Click(Sender: TObject);
begin
   // Отключение фильтра
  DataModule2.Q_prodaj_by_data.Filtered := false;
  // Формирование строки фильтрации
  DataModule2.Q_prodaj_by_data.Filter := 'Date_buy >= ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)) +
    ' and Date_buy <= ' + QuotedStr(FormatDateTime('YYYY-MM-DD',
    DateTimePicker2.Date));
  // задание параметра активности фильтра как у состояния CheckBox2
  DataModule2.Q_prodaj_by_data.Filtered := CheckBox1.Checked;
  DBChart3.RefreshData;
end;

procedure TForm7.CheckBox2Click(Sender: TObject);
begin
   // Отключение фильтра
  DataModule2.Q_postavka_by_data.Filtered := false;
  // Формирование строки фильтрации
  DataModule2.Q_postavka_by_data.Filter := 'oDateTime >= ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker3.Date)) +
    ' and oDateTime <= ' + QuotedStr(FormatDateTime('YYYY-MM-DD',
    DateTimePicker4.Date));
  // задание параметра активности фильтра как у состояния CheckBox2
  DataModule2.Q_postavka_by_data.Filtered := CheckBox2.Checked;
  DBChart4.RefreshData;
end;

procedure TForm7.DateTimePicker3Change(Sender: TObject);
begin
CheckBox2Click(nil);
end;

procedure TForm7.DateTimePicker4Change(Sender: TObject);
begin
CheckBox2Click(nil);
end;

procedure TForm7.DBLookupComboBox1CloseUp(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 baseSQL := 'SELECT * FROM view_storage ';
 filter_s := '';
 if DBLookupComboBox1.KeyValue <> Null then
 filter_s := 'WHERE IDbrand = ' + inttostr(DBLookupComboBox1.KeyValue);
 DataModule2.Q_storage_count.Active := False;
 DataModule2.Q_storage_count.SQL.Text := baseSQL + filter_s;
 DataModule2.Q_storage_count.Active := True;
 DBChart2.RefreshData;
end;

procedure TForm7.DBLookupComboBox2CloseUp(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 baseSQL := 'SELECT oDateTime, SUM(ocCount) AS SUMcount FROM view_operation_goods_list ';
 filter_s := '';
 if DBLookupComboBox2.KeyValue <> Null then
 filter_s := 'WHERE IDbrand = ' + inttostr(DBLookupComboBox2.KeyValue);
 DataModule2.Q_postavka_by_data.Active := False;
 DataModule2.Q_postavka_by_data.SQL.Text := baseSQL + filter_s + ' GROUP BY oDateTime';
 DataModule2.Q_postavka_by_data.Active := True;
 DBChart4.RefreshData;
end;

procedure TForm7.DBLookupComboBox3CloseUp(Sender: TObject);
var
  baseSQL, filter_s: string;
begin
  baseSQL := 'SELECT view_goods_catalog.tgName, AVG(view_goods_catalog.ccCost) AS avgCost FROM view_goods_catalog ';
  filter_s := '';
  if DBLookupComboBox3.KeyValue <> Null then
    filter_s := 'WHERE IDbrand = ' + inttostr(DBLookupComboBox3.KeyValue);
  DataModule2.Q_cost_by_type_body.Active := False;
  DataModule2.Q_cost_by_type_body.SQL.Text := baseSQL + filter_s + ' GROUP BY view_goods_catalog.tgName';
  DataModule2.Q_cost_by_type_body.Active := True;
  DBChart1.RefreshData;
end;




end.
