unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, ShellApi;

type
  TForm5 = class(TForm)
    ProgramIcon: TImage;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    OKButton: TButton;
    Panel2: TPanel;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    Label3: TLabel;
    ProductName: TLabel;
    Version: TLabel;
    Label4: TLabel;
    File1: TMenuItem;
    procedure Label2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.DFM}

procedure TForm5.Label2Click(Sender: TObject);
begin
  ShellExecute(0, Nil, PChar('http:\\'+Label2.Caption), Nil, Nil, SW_NORMAL);
end;

procedure TForm5.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm5.Label1Click(Sender: TObject);
begin
  ShellExecute(0, Nil, PChar('http:\\'+Label1.Caption), Nil, Nil, SW_NORMAL);
end;

end.
