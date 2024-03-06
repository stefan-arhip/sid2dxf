unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Menus, FileCtrl;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    EditStartDir: TEdit;
    Animate1: TAnimate;
    Label1: TLabel;
    ClearOtherFiles: TCheckBox;
    Autoclosesearch: TCheckBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.DFM}

procedure FindFiles(FilesList: TStringList; StartDir, FileMask: string);
var
  SR: TSearchRec;
  DirList: TStringList;
  IsFound: Boolean;
  i: integer;
begin
  if StartDir[length(StartDir)] <> '\' then
    StartDir := StartDir + '\';
  { Build a list of the files in directory StartDir  (not the directories!)                         }
  IsFound :=FindFirst(StartDir+FileMask, faAnyFile-faDirectory, SR) = 0;
  while IsFound do begin
    FilesList.Add(StartDir + SR.Name);
    IsFound := FindNext(SR) = 0;
  end;
  FindClose(SR);
  // Build a list of subdirectories
  DirList := TStringList.Create;
  IsFound := FindFirst(StartDir+'*.*', faAnyFile, SR) = 0;
  while IsFound do begin
    if ((SR.Attr and faDirectory) <> 0) and
         (SR.Name[1] <> '.') then
      DirList.Add(StartDir + SR.Name);
    IsFound := FindNext(SR) = 0;
  end;
  FindClose(SR);
  // Scan the list of subdirectories
  for i := 0 to DirList.Count - 1 do
    FindFiles(FilesList, DirList[i], FileMask);
  DirList.Free;
end;

procedure TForm2.Button1Click(Sender: TObject);
var FilesList: TStringList;
begin
  Button1.Visible:=False;
  Animate1.Visible:=True;
  Animate1.Active:=True;
  Panel1.Enabled:=False;
  FilesList := TStringList.Create;
  try
    FindFiles(FilesList, EditStartDir.Text, '*.SID');
    If ClearOtherFiles.Checked Then
      Form1.ListBox1.Items.Assign(FilesList)
    Else
      Form1.ListBox1.Items.AddStrings(FilesList);
  finally
    FilesList.Free;
  end;
  Form1.LabelCount.Caption:= '   Files list (' + IntToStr(Form1.ListBox1.Items.Capacity)+')';
  Panel1.Enabled:=True;
  Animate1.Active:=False;
  Animate1.Visible:=False;
  Button1.Visible:=True;
  If Autoclosesearch.Checked Then Close;
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormActivate(Sender: TObject);
Var s:AnsiString;
begin
  s:=Form2.EditStartDir.Text;
  If Not DirectoryExists(s) Then
    s:=ExtractFilePath(ParamStr(0));
  DriveComboBox1.Drive:=s[1];
  DirectoryListBox1.Directory:=s;
  DirectoryListBox1Change(Sender);
end;

procedure TForm2.DirectoryListBox1Change(Sender: TObject);
Var s:AnsiString;
begin
  s:=DirectoryListBox1.Directory;
  If s[Length(s)]='\' Then
    Delete(s,Length(s),1);
  EditStartDir.Text:=s+'\';
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
