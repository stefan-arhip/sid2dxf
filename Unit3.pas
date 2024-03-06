unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Spin, Buttons, Menus, IniFiles, Jpeg;

Const TempInfoFile:AnsiString='TempInfoFile.txt';

type
  TForm3 = class(TForm)
    Notebook1: TNotebook;
    Button1: TButton;
    Showprocessforgenerateinfofile1: TCheckBox;
    TreeView1: TTreeView;
    Titlu1: TPanel;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Button2: TButton;
    Showprocessforgeneratethumbnail: TCheckBox;
    EditStartDir: TEdit;
    Autoclosesearch: TCheckBox;
    ClearOtherFiles: TCheckBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Label6: TLabel;
    ThumbnailScale: TComboBox;
    Label8: TLabel;
    ScaleFactor: TComboBox;
    GroupBox3: TGroupBox;
    LT: TRadioButton;
    CT: TRadioButton;
    RT: TRadioButton;
    LC: TRadioButton;
    CC: TRadioButton;
    RC: TRadioButton;
    LB: TRadioButton;
    CB: TRadioButton;
    RB: TRadioButton;
    Label5: TLabel;
    ScaleForZoom: TComboBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Left1: TSpinEdit;
    Right1: TSpinEdit;
    Bottom1: TSpinEdit;
    Top1: TSpinEdit;
    Button3: TButton;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Procedure SaveSettings(f:AnsiString);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit4, Unit6;

{$R *.DFM}

Const Blocare:Boolean=False;

Procedure TForm3.SaveSettings(f:AnsiString);
Var ini:TIniFile;
Begin
  ini:=TIniFile.Create(f);
  Try
    //---GENERAL---//
    ini.WriteBool   ('General'           ,'Show process for generate info file .',Showprocessforgenerateinfofile1.Checked);
    ini.WriteBool   ('General'           ,'Show process for generate thumbnail .',Showprocessforgeneratethumbnail.Checked);
    //---FILE AND DIRECTORY---//
    ini.WriteString ('File and directory','Default Searching directory         .',Form2.EditStartDir.Text);
    //---THUMBNAIL---//
    ini.WriteInteger('Thumbnail'         ,'Thumbnail scale                     .',Form4.ThumbnailScale.ItemIndex);
    ini.WriteBool   ('Thumbnail'         ,'Left-top align image on loading     .',Form4.LT.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Center-top align image on loading   .',Form4.CT.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Right-top align image on loading    .',Form4.RT.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Left-center align image on loading  .',Form4.LC.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Center-center align image on loading.',Form4.CC.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Right-center align image on loading .',Form4.RC.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Left-bottom align image on loading  .',Form4.LB.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Center-bottom align image on loading.',Form4.CB.Checked);
    ini.WriteBool   ('Thumbnail'         ,'Right-bottom align image on loading .',Form4.RB.Checked);
    ini.WriteInteger('Thumbnail'         ,'Scale factor thumbnail image        .',Form1.ScaleFactor.ItemIndex);
    ini.WriteInteger('Thumbnail'         ,'Scale for zoom image                .',Form4.ScaleForZoom.ItemIndex);
    //---OTHER---//
    ini.WriteInteger('Other'             ,'Panel 1 width                       .',Form1.Panel1.Width);
    ini.WriteInteger('Other'             ,'Panel 2 width                       .',Form1.Panel2.Width);
    ini.WriteInteger('Other'             ,'Panel 3 height                      .',Form1.Panel3.Height);
    ini.WriteInteger('Other'             ,'Panel 4 height                      .',Form1.Panel4.Height);
    ini.WriteInteger('Other'             ,'Width                               .',Form1.Width);
    ini.WriteInteger('Other'             ,'Height                              .',Form1.Height);
    ini.WriteInteger('Other'             ,'Left                                .',Form1.Left);
    ini.WriteInteger('Other'             ,'Top                                 .',Form1.Top);
    ini.WriteBool   ('Other'             ,'View file list                      .',Form1.Filelist1.Checked);
    ini.WriteBool   ('Other'             ,'View MrSID information              .',Form1.MrSIDinformation1.Checked);
    ini.WriteBool   ('Other'             ,'View image thumbnail                .',Form1.Imagethumbnail1.Checked);
    ini.WriteInteger('Other'             ,'Default DXF version                 .',Form1.SaveDialog2.FilterIndex);
    ini.WriteBool   ('Other'             ,'View Map                            .',Form1.Map1.Checked);
    ini.WriteBool   ('Other'             ,'View Command                        .',Form1.Command1.Checked);
    ini.WriteBool   ('Other'             ,'Clear other files already in list   .',Form2.ClearOtherFiles.Checked);
    ini.WriteBool   ('Other'             ,'Autoclose window after searching    .',Form2.Autoclosesearch.Checked);
  Finally
    ini.Free;
  End;
End;

procedure TForm3.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  NoteBook1.ActivePage:=TreeView1.Selected.Text;
  Titlu1.Caption:=NoteBook1.ActivePage+' settings';
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  LoadSettings(ExtractFilePath(Paramstr(0))+'settings.ini');
  Form3.Showprocessforgenerateinfofile1.Checked:=_Showprocessforgenerateinfofile;
  Form3.Showprocessforgeneratethumbnail.Checked:=_Showprocessforgeneratethumbnail;
  Form2.EditStartDir.Text:=_EditStartDir;
  Form2.DirectoryListBox1.Directory:=Form2.EditStartDir.Text;
  Form4.ThumbnailScale.ItemIndex:=_ThumbnailScale;//5x
  Form4.LT.Checked:=_LT;
  Form4.CT.Checked:=_CT;
  Form4.RT.Checked:=_RT;
  Form4.LC.Checked:=_LC;
  Form4.CC.Checked:=_CC;
  Form4.RC.Checked:=_RC;
  Form4.LB.Checked:=_LB;
  Form4.CB.Checked:=_CB;
  Form4.RB.Checked:=_RB;
  Form1.ScaleFactor.ItemIndex:=_ScaleFactor; //factor = 1:1
  Form4.ScaleForZoom.ItemIndex:=_ScaleForZoom;//scale = 1
  Form1.Panel1.Width:=_Panel1Width;
  Form1.Panel2.Width:=_Panel2Width;
  Form1.Panel3.Height:=_Panel3Height;
  Form1.Panel4.Height:=_Panel4Height;
  Form1.Splitter2Moved(Self);
  Form1.Width:=_Form1Width;
  Form1.Height:=_Form1Height;
  Form1.Left:=_Form1Left;
  Form1.Top:=_Form1Top;
  Form1.Filelist1.Checked:=Not _ViewFilelist;
  Form1.Filelist1Click(Self);
  Form1.MrSIDinformation1.Checked:=Not _ViewMrSIDinformation;
  Form1.MrSIDinformation1Click(Self);
  Form1.Imagethumbnail1.Checked:=Not _ViewImagethumbnail;
  Form1.Imagethumbnail1Click(Self);
  Form1.Map1.Checked:=Not _ViewMap;
  Form1.Map1Click(Self);
  Form1.Command1.Checked:=Not _ViewCommand;
  Form1.Command1Click(Self);
  Form1.SaveDialog2.FilterIndex:=_DXFFilterIndex;//Autocad 2000
  Form2.ClearOtherFiles.Checked:=_ClearOtherFiles;
  Form2.Autoclosesearch.Checked:=_Autoclosesearch;
  TempInfoFile:=GetTempDirectory+TempInfoFile;
  Titlu1.Caption:='General options';
  Notebook1.ActivePage:='General';
end;

procedure TForm3.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  SaveSettings(ExtractFilePath(Paramstr(0))+'settings.ini');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  If MessageDlg('You will reset to default all settings'#13'Are you sure?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
    Begin
      DefaultSettings;
      Showprocessforgenerateinfofile1.Checked:=_Showprocessforgenerateinfofile;
      Showprocessforgeneratethumbnail.Checked:=_Showprocessforgeneratethumbnail;
      Form2.EditStartDir.Text:=_EditStartDir;
      Form2.DirectoryListBox1.Directory:=Form2.EditStartDir.Text;
      Form4.ThumbnailScale.ItemIndex:=_ThumbnailScale;//5x
      Form4.LT.Checked:=_LT;
      Form4.CT.Checked:=_CT;
      Form4.RT.Checked:=_RT;
      Form4.LC.Checked:=_LC;
      Form4.CC.Checked:=_CC;
      Form4.RC.Checked:=_RC;
      Form4.LB.Checked:=_LB;
      Form4.CB.Checked:=_CB;
      Form4.RB.Checked:=_RB;
      Form1.ScaleFactor.ItemIndex:=_ScaleFactor; //factor = 1:1
      Form4.ScaleForZoom.ItemIndex:=_ScaleForZoom;//scale = 1
      Form1.Panel1.Width:=_Panel1Width;
      Form1.Panel2.Width:=_Panel2Width;
      Form1.Panel3.Height:=_Panel3Height;
      Form1.Panel4.Height:=_Panel4Height;
      Form1.Width:=_Form1Width;
      Form1.Height:=_Form1Height;
      Form1.Left:=_Form1Left;
      Form1.Top:=_Form1Top;
      Form1.Filelist1.Checked:=_ViewFilelist;
      Form1.MrSIDinformation1.Checked:=_ViewMrSIDinformation;
      Form1.Imagethumbnail1.Checked:=_ViewImagethumbnail;
      Form1.SaveDialog2.FilterIndex:=_DXFFilterIndex;//Autocad 2000
      Form1.Map1.Checked:=_ViewMap;
      Form1.Command1.Checked:=_ViewCommand;
      Form2.ClearOtherFiles.Checked:=_ClearOtherFiles;
      Form2.Autoclosesearch.Checked:=_Autoclosesearch;
    End;
end;

end.
