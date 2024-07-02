unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Samples.Spin;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    InsertEditDeletePanel: TPanel;
    PanelToInputValues: TPanel;
    InsertButton: TButton;
    EditButton: TButton;
    DeleteButton: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PostButton: TButton;
    CancelButton: TButton;
    E_dFormat: TEdit;
    B_setFormat: TButton;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    ComboCostCondition: TComboBox;
    Label9: TLabel;
    SpinCostValue: TSpinEdit;
    ChkCostFilter: TCheckBox;
    E_Filter: TEdit;
    procedure InsertButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure B_setFormatClick(Sender: TObject);
    procedure ChkCostFilterClick(Sender: TObject);
    procedure ComboCostConditionChange(Sender: TObject);
    procedure SpinCostValueChange(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  CSort_st: Integer = -1; // ���������������� �������� �1, ��� ���
 // ��� ������� ��������� �� ���� ����������
 OrderBy_field: string; // �������� ���������� ��� SQL-�������

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit7, Unit8, Unit10;

procedure TForm4.B_setFormatClick(Sender: TObject);
begin
DataModule2.Q_v_goods_catalogccCost.DisplayFormat := E_dFormat.Text;
end;

procedure TForm4.CancelButtonClick(Sender: TObject);
begin
 if DataModule2.T_goods_catalog.State in [dsInsert, dsEdit] then
 begin
 // �������� �������� ������
 DataModule2.T_goods_catalog.Cancel;
 InsertEditDeletePanel.Visible := True;
 PanelToInputValues.Visible := False;
 DBGrid1.Enabled := True;
 end;
end;

procedure TForm4.ChkCostFilterClick(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_v_goods_catalog.Active := False;
 baseSQL := 'SELECT * FROM view_goods_catalog';
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
 filter_s := '';
 if ChkCostFilter.Checked then
 begin
 // ������������ ������� �������
 filter_s := ' WHERE ccCost ' + ComboCostCondition.Text + ' ' +
 IntToStr(SpinCostValue.Value);
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s;
 end;
 DataModule2.Q_v_goods_catalog.Active := True;
end;


procedure TForm4.ComboCostConditionChange(Sender: TObject);
begin
ChkCostFilterClick(nil);
end;

procedure TForm4.DBGrid1TitleClick(Column: TColumn);
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

procedure TForm4.DeleteButtonClick(Sender: TObject);
begin
 if DataModule2.T_goods_catalog.State = dsBrowse then
 if MessageDlg('����������� �������� ������', mtConfirmation,
 [mbYes, mbNo], 0) = mrYes then
 DataModule2.T_goods_catalog.Delete;
end;

procedure TForm4.EditButtonClick(Sender: TObject);
begin
 if DataModule2.T_goods_catalog.State = dsBrowse then
 begin
 DBGrid1.Enabled := False;
 InsertEditDeletePanel.Visible := False;
 PanelToInputValues.Visible := True;
 // ��������� �� � ����� �������������� ������, ���������
 // ����� Edit
 DataModule2.T_goods_catalog.Edit;
 end;
end;

procedure TForm4.E_FilterChange(Sender: TObject);
var
baseSQL, filter_s: string;
orderBy_s: string; // ����������� (���������� ����������)
begin
DataModule2.Q_v_goods_catalog.DisableControls;
DataModule2.Q_v_goods_catalog.Active := false;
baseSQL := 'SELECT * FROM view_goods_catalog ';
filter_s := '';
orderBy_s :=''; // ����������� (������� ������� ��������)
if length(E_Filter.Text) > 0 then
filter_s := 'WHERE brandName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR modelName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR tgName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR teName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR privodName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%') + ' OR gearName LIKE ' + QuotedStr('%' + E_Filter.Text +
'%');
// ����������� (�������� ������� �� ���� ����������)
if length(OrderBy_field) > 0 then
// ������� ������ � ���������� ����������,
// ���� ���� �������� OrderBy_field ������ 0
orderBy_s := ' ORDER BY ' + OrderBy_field;
DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s + orderBy_s;
DataModule2.Q_v_goods_catalog.Active := true;
DataModule2.Q_v_goods_catalog.EnableControls;
end;
procedure TForm4.InsertButtonClick(Sender: TObject);
begin
 if DataModule2.T_goods_catalog.State = dsBrowse then
 begin
 // �������� ����������� ��������� ������� �� � ���������� DBGrid1
 DBGrid1.Enabled := False;
 // ������� ��������� ������ � �������� ��������, ��������,
 // �������
 InsertEditDeletePanel.Visible := False;
 // ������� ������� ������ ��� ����� �������� � ������
 PanelToInputValues.Visible := True;
 // ��������� �� � ����� ���������� ������, ���������
 // ����� Append
 DataModule2.T_goods_catalog.Append;
 end;
end;

procedure TForm4.PostButtonClick(Sender: TObject);
begin
if DataModule2.T_goods_catalog.State in [dsInsert, dsEdit] then
 begin
 // �������� �������� ����������
 DataModule2.T_goods_catalog.Post;
 // ������� ������� ������ � �������� ��������, ��������,
 // �������
 InsertEditDeletePanel.Visible := True;
 // ������� ��������� ������ ��� ����� �������� � ������
 PanelToInputValues.Visible := False;
 // ������� ����������� ��������� ������� ��
 // � ���������� DBGrid1
 DBGrid1.Enabled := True;
 end;
end;

procedure TForm4.SpinCostValueChange(Sender: TObject);
begin
ChkCostFilterClick(nil);
end;

end.
