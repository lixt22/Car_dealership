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
  CSort_st: Integer = -1; // ���������������� �������� �1, ��� ���
 // ��� ������� ��������� �� ���� ����������
 OrderBy_field: string; // �������� ���������� ��� SQL-�������

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit7, Unit8, Unit10;

procedure TForm3.DBGrid1TitleClick(Column: TColumn);
var
 sorttype: string;
begin
 // ������� ��������� ��� �������, � ������� �������� � ������� ���
 if CSort_st >= 0 then
 begin
 DBGrid1.Columns[CSort_st].Title.Font.Color := clBlack;
 DBGrid1.Columns[CSort_st].Title.Font.Style :=
 Column.Title.Font.Style - [fsBold];
 end;
 // ��������� �������� ���������� ��� ������ ��������
 // (������������� ���������� �� ����������� ASC)
 sorttype := '';
 // �������� ������ ������������ ������� � ���������� ����������
 CSort_st := Column.Index;
 // ��������, �� ����������� �� ���������� �� ��������
 // ��� ������� ����
 if OrderBy_field <> Column.FieldName + ' DESC' then
 begin
 // ���� ���������� �� �������� �� �����������, �� ������,
 // ����������� �� �� ����� ���� ��� ���
 if OrderBy_field = Column.FieldName then
 // ���� ���������� �� ������� ���� ��� ����, �� ��������
 // ��� ���������� �� ���������� �� ��������
 sorttype := ' DESC';
 // ������� ����� ������ ��������� ��� ����������� ���� ����������
 Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
 if sorttype = '' then
 Column.Title.Font.Color := clGreen // �� �����������
 else
 Column.Title.Font.Color := clBlue; // �� ��������
 // ��������� ���������� ��� ���� � �������� ����������
 OrderBy_field := Column.FieldName + sorttype;
 end
 else
 // ���� � ������� ��� �������������� ���������� �� ��������,
 // �� �������� ����������
 OrderBy_field := '';
 // ��������� ����� �������� ������ �� ������������� �������
 // ���� ����������� � ������� OnChange �������
 E_FilterChange(self);
end;

procedure TForm3.E_FilterChange(Sender: TObject);
var
baseSQL, filter_s: string;
orderBy_s: string; // ����������� (���������� ����������)
begin
DataModule2.Q_v_customers_list.DisableControls;
DataModule2.Q_v_customers_list.Active := false;
baseSQL := 'SELECT * FROM view_customers_list ';
filter_s := '';
orderBy_s :=''; // ����������� (������� ������� ��������)
if length(E_Filter.Text) > 0 then
filter_s := 'WHERE clName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR clAddress LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR clEmail LIKE ' + QuotedStr('%' + E_Filter.Text +
'%');
// ����������� (�������� ������� �� ���� ����������)
if length(OrderBy_field) > 0 then
// ������� ������ � ���������� ����������,
// ���� ���� �������� OrderBy_field ������ 0
orderBy_s := ' ORDER BY ' + OrderBy_field;
DataModule2.Q_v_customers_list.SQL.Text := baseSQL + filter_s + orderBy_s;
DataModule2.Q_v_customers_list.Active := true;
DataModule2.Q_v_customers_list.EnableControls;
end;

end.
