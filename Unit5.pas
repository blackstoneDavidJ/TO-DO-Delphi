unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Unit6;
type
  TADTForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EntryTitleTextBox: TEdit;
    GroupBox2: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    EntrySubmitBtn: TButton;
    FontDialog: TButton;
    FontDialog1: TFontDialog;
    procedure FontDialogClick(Sender: TObject);
    procedure EntrySubmitBtnClick(Sender: TObject);
  private
    FSelEntry: TDEntry;
  public
    property SelEntry: TDEntry read FSelEntry;
  end;

var
  ADTForm:   TADTForm;
  SelFont:   TFont;
  SelTitle:  TCaption;
  SelDate:   TDate;
  SelEntry:  TDEntry;
implementation

{$R *.dfm}
procedure TADTForm.EntrySubmitBtnClick(Sender: TObject);
begin
  SelTitle := EntryTitleTextBox.Text;
  SelDate  := DateTimePicker1.Date;

  if Assigned(FSelEntry) then
    FreeAndNil(FSelEntry);

  FSelEntry   := TDEntry.Create(SelFont, SelTitle, SelDate);
  ModalResult := mrOk;
end;


procedure TADTForm.FontDialogClick(Sender: TObject);
begin
  if fontDialog1.Execute then
  begin
    if not Assigned(SelFont) then
      SelFont := TFont.Create;
    SelFont.Assign(fontDialog1.Font);
  end;
end;

end.

