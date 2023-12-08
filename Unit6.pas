unit Unit6;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;
type
  TDEntry = class
  private
    Font:  TFont;
    Title: TCaption;
    Date:  TDate;
  public
    constructor Create(Font: TFont; Title: TCaption; Date: TDate);
    destructor Destroy; override;
    property SelFont:  TFont    read Font;
    property SelTitle: TCaption read Title;
    property SelDate:  TDate    read Date;
  end;

implementation

constructor TDEntry.Create(Font: TFont; Title: TCaption; Date: TDate);
begin
  if self.SelFont = nil then
  begin
    self.Font := TFont.Create();
  end;
  self.Font.Assign(Font);
  self.Title := Title;
  self.Date  := Date;
end;

destructor TDEntry.Destroy;
begin
  self.Font.Free;
  inherited Destroy;
end;

end.
