unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.WinXPickers, Vcl.Grids;

type
  TForm10 = class(TForm)
    P_ModifyData: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    B_SaveData: TButton;
    B_CancelModify: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    GB_DateTime: TGroupBox;
    TimePicker1: TTimePicker;
    DatePicker1: TDatePicker;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    DBText9: TDBText;
    Label17: TLabel;
    DBText10: TDBText;
    Label18: TLabel;
    Label19: TLabel;
    DBText11: TDBText;
    Label20: TLabel;
    DBText12: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    TimePicker2: TTimePicker;
    DatePicker2: TDatePicker;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    procedure B_SaveDataClick(Sender: TObject);
    procedure B_CancelModifyClick(Sender: TObject);
    procedure DatePicker1Change(Sender: TObject);
    procedure TimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit7, Unit8;

procedure TForm10.B_CancelModifyClick(Sender: TObject);
begin
Form10.Close;
end;

procedure TForm10.B_SaveDataClick(Sender: TObject);
begin
DataModule2.T_dogovor_o_prodaje.Edit;
DataModule2.T_dogovor_o_prodaje.Post;
Form10.Close;
end;

procedure TForm10.DatePicker1Change(Sender: TObject);
begin
// Если во время активности формы обнаруживаем изменение времени
 // относительно хранящегося в БД
 if Form10.Active and (DataModule2.T_dogovor_o_prodajeDate_buy.Value <>
 (DatePicker1.Date + TimePicker1.Time)) then
 begin
 // Переводим НД в режим редактирования если он не находится
 // в данном режиме
 if DataModule2.T_dogovor_o_prodaje.State = dsBrowse then
 DataModule2.T_dogovor_o_prodaje.edit;
 // Формируем тип TDateTime (выражается как сумма TDate и TTime)
 DataModule2.T_dogovor_o_prodajeDate_buy.Value := DatePicker1.Date +
 TimePicker1.Time;
 end;
end;



procedure TForm10.TimePicker1Change(Sender: TObject);
begin
// Если во время активности формы обнаруживаем изменение времени
 // относительно хранящегося в БД
 if Form10.Active and (DataModule2.T_dogovor_o_prodajeDate_buy.Value <>
 (DatePicker1.Date + TimePicker1.Time)) then
 begin
 // Переводим НД в режим редактирования если он не находится
 // в данном режиме
 if DataModule2.T_dogovor_o_prodaje.State = dsBrowse then
 DataModule2.T_dogovor_o_prodaje.edit;
 // Формируем тип TDateTime (выражается как сумма TDate и TTime)
 DataModule2.T_dogovor_o_prodajeDate_buy.Value := DatePicker1.Date +
 TimePicker1.Time;
 end;
end;
end.
