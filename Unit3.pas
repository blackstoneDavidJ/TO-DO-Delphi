unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Unit5, Unit6;

type
  TForm3 = class(TForm)
    ListBox1: TListBox;
    tGroupBox: TGroupBox;
    GroupBox1: TGroupBox;
    tbRightButton: TButton;
    Label1: TLabel;
    ShownTitle: TLabel;
    Label2: TLabel;
    ShownDateDue: TLabel;
    DeleteCurrentEntry: TButton;
    procedure tbRightButtonClick(Sender: TObject);
    procedure DeleteCurrentEntryClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
  public
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.DeleteCurrentEntryClick(Sender: TObject);
begin
  if ListBox1.ItemIndex <> -1 then
  begin
    ListBox1.DeleteSelected;
    ShownTitle.Caption    := String.Empty;
    ShownDateDue.Caption  := String.Empty;
    ShownTitle.Font       := TFont.Create();
    ShownTitle.Font.Color := clBlack;
  end;
end;

procedure TForm3.ListBox1Click(Sender: TObject);
var
  Entry: TDEntry;
begin
  Entry := TDEntry(ListBox1.Items.Objects[ListBox1.ItemIndex]);
  if Entry is TDEntry then
  begin
    ShownTitle.Caption      := Entry.SelTitle;
    ShownDateDue.Caption    := DateToStr(Entry.SelDate);
    ShownTitle.Font.Assign(Entry.SelFont);
    ShownDateDue.Font.Assign(Entry.SelFont);
  end;
end;

procedure TForm3.tbRightButtonClick(Sender: TObject);
var
  MyForm: TADTForm;
begin
  MyForm := TADTForm.Create(nil);
  try
    if MyForm.ShowModal = mrOK then
    begin
      ListBox1.AddItem(MyForm.SelEntry.SelTitle, MyForm.SelEntry);
      MyForm.Close;
    end;
  finally
    MyForm.Free;
  end;
end;

end.
