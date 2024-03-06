unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ShellApi,
  ComCtrls, StdCtrls, Spin, Buttons, Menus, ExtCtrls, ClipBrd, Grids;

type
  TForm1 = class(TForm)
    PanelMare: TPanel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    Searchforfiles1: TMenuItem;
    Addfiles1: TMenuItem;
    Deleteselected2: TMenuItem;
    PopupMenu1: TPopupMenu;
    Searchforfiles2: TMenuItem;
    Addfile1: TMenuItem;
    Deleteselected1: TMenuItem;
    OpenDialog3: TOpenDialog;
    Options1: TMenuItem;
    Settings1: TMenuItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Splitter1: TSplitter;
    Panel30: TPanel;
    View1: TMenuItem;
    N5: TMenuItem;
    Copyselectedpath1: TMenuItem;
    Copyselectedpath2: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    Clearlist1: TMenuItem;
    N7: TMenuItem;
    Clearlist2: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    StringGrid1: TStringGrid;
    PopupMenu2: TPopupMenu;
    Pan1: TMenuItem;
    Zoom1: TMenuItem;
    Refresh1: TMenuItem;
    MenuItem2: TMenuItem;
    Saveimageas1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton3: TSpeedButton;
    Resetzoom1: TMenuItem;
    Filelist1: TMenuItem;
    MrSIDinformation1: TMenuItem;
    Imagethumbnail1: TMenuItem;
    Resetposition1: TMenuItem;
    Aligncenter1: TMenuItem;
    N8: TMenuItem;
    Aligntopleft1: TMenuItem;
    Alignbottomright1: TMenuItem;
    Removeduplicates1: TMenuItem;
    SpeedButton10: TSpeedButton;
    N9: TMenuItem;
    Aligntopright1: TMenuItem;
    Aligntobottomleft1: TMenuItem;
    Align1: TMenuItem;
    Panel3: TPanel;
    Map1: TMenuItem;
    Panel10: TPanel;
    Label_Z: TLabel;
    Label_S: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    ExportasDXFfile1: TMenuItem;
    SaveDialog2: TSaveDialog;
    Label_I: TLabel;
    Label3: TLabel;
    Panel11: TPanel;
    LabelCount: TLabel;
    ListBox1: TListBox;
    Splitter3: TSplitter;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    ListBox2: TListBox;
    Memo1: TMemo;
    Shape4: TShape;
    ListBox3: TListBox;
    N1: TMenuItem;
    Removeduplicates2: TMenuItem;
    Image2: TMenuItem;
    Pan2: TMenuItem;
    Zoom2: TMenuItem;
    N3: TMenuItem;
    Refresh2: TMenuItem;
    Resetzoom2: TMenuItem;
    Resetposition2: TMenuItem;
    N6: TMenuItem;
    Align2: TMenuItem;
    Aligntocenter1: TMenuItem;
    Aligntotopleft1: TMenuItem;
    Aligntotopright1: TMenuItem;
    Aligntobottomleft2: TMenuItem;
    Aligntobottomright1: TMenuItem;
    N10: TMenuItem;
    Saveimageas2: TMenuItem;
    ExportasDXFfile2: TMenuItem;
    Panel40: TPanel;
    Panel9: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Panel4: TPanel;
    Splitter4: TSplitter;
    txtConsole: TMemo;
    Panel12: TPanel;
    Timer1: TTimer;
    Command1: TMenuItem;
    ProgressBar1: TProgressBar;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    ScaleFactor: TComboBox;
    Panel13: TPanel;
    procedure SearchForFiles1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Addfile1Click(Sender: TObject);
    procedure Deleteselected1Click(Sender: TObject);
    procedure Settings1Click(Sender: TObject);
    procedure Copyselectedpath1Click(Sender: TObject);
    procedure Clearlist1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Splitter2Moved(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure Image1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure Pan1Click(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure Saveimageas1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Filelist1Click(Sender: TObject);
    procedure MrSIDinformation1Click(Sender: TObject);
    procedure Imagethumbnail1Click(Sender: TObject);
    procedure Resetposition1Click(Sender: TObject);
    procedure Aligncenter1Click(Sender: TObject);
    procedure Aligntopleft1Click(Sender: TObject);
    procedure Alignbottomright1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Resetzoom1Click(Sender: TObject);
    procedure Aligntopright1Click(Sender: TObject);
    procedure Aligntobottomleft1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    Procedure LoadImageThumbnail(savedFile:AnsiString;ScaleFactor:Extended);
    procedure Map1Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure ExportasDXFfile1Click(Sender: TObject);
    procedure Removeduplicates1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Command1Click(Sender: TObject);
    procedure Splitter4Moved(Sender: TObject);
    procedure Splitter3Moved(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ScaleFactorChange(Sender: TObject);
  private
    { Private declarations }
    MousePos1:TPoint;
    FirstPointSelected:Boolean;
    Procedure ThumbnailMap;
  public
    { Public declarations }
    Function LoadInfo(FileAddress:AnsiString):Boolean;
  end;

Function GetTempDirectory:AnsiString;

var Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.DFM} {$R mrsidgeo.RES}

Const crMove=1;
      crZoom=2;
      Zoomed:Boolean=False;
      thumbImage='thumb.jpg';
      zoomImage='zoom.jpg';
      zoomWorldFile='zoom.jgw';
      ProgPos=5;
      Blocare:Boolean=False;

Var   ImageX1,ImageY1,ImageX2,ImageY2,RezX,RezY:Extended;
      savedFile:AnsiString;
      decodeLocation,infoLocation:AnsiString;

Function GetTempDirectory:AnsiString;
Var TempFolder:Array[0..MAX_PATH] Of Char;
    t:AnsiString;
Begin
  GetTempPath(MAX_PATH,@TempFolder);
  t:=StrPas(TempFolder);
  If t[length(t)]<>'\' Then
    t:=t+'\';
  Result:=t;
  //Result:=ExtractFilePath(Paramstr(0));
End;

Function Extragere(t:AnsiString;i:Integer;b:Boolean):AnsiString;
Var s:AnsiString;
Begin
  s:=t;
  If b Then
    Delete(s,Length(s)-i+1,Length(s))
  Else
    Delete(s,1,Length(s)-i);
  Extragere:=s;
End;

procedure TForm1.SearchForFiles1Click(Sender: TObject);
Begin
  Form2.ShowModal;
End;

Function RunAndWait(ExecuteFile, ParamString, StartInString: string;showProcess:Boolean):Boolean;
var SEInfo: TShellExecuteInfo;
    ExitCode: DWORD;
    StartTime,StopTime:TDateTime;
begin
   Form1.ProgressBar1.Visible:=True;
   Form1.ProgressBar1.Position:=0;
   Form1.Timer1.Enabled:=True;
   StartTime:=Now();
   Form1.Enabled:=False;
   Form1.StatusBar1.Panels[4].Text:='   Processing image...';
   FillChar(SEInfo, SizeOf(SEInfo), 0) ;
   SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
   with SEInfo do begin
     fMask := SEE_MASK_NOCLOSEPROCESS;
     Wnd := Application.Handle;
     lpFile := PChar(ExecuteFile) ;
     lpParameters := PChar(ParamString) ;   {ParamString can contain the application parameters. }
     lpDirectory := PChar(StartInString) ;  {StartInString specifies the name of the working directory. If ommited, the current directory is used.}
     If ShowProcess Then
       nShow := SW_NORMAL
     Else
       nShow := SW_HIDE;
   end;
   if ShellExecuteEx(@SEInfo) then begin
     repeat
       Application.ProcessMessages;
       GetExitCodeProcess(SEInfo.hProcess, ExitCode) ;
     until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
     Result:=True;
   end
   else Result:=False;
   Form1.Enabled:=True;
   StopTime:=Now;
   Form1.Timer1.Enabled:=False;
   Form1.txtConsole.Clear;
   Form1.StatusBar1.Panels[4].Text:='   Image processed in '+FormatDateTime('s',StopTime-StartTime)+' second(s)';
   Form1.ProgressBar1.Visible:=False;
end;

Function TForm1.LoadInfo(FileAddress:AnsiString):Boolean;
begin
  Application.ProcessMessages;
  Screen.Cursor:=crHourglass;
  Form1.Enabled:=False;
  Result:=True;
  If (ListBox1.ItemIndex<>-1) And (ListBox1.Items.Capacity<>0) Then
    If RunAndWait('"'+infoLocation+'"',' "'+FileAddress+'" -log "'+TempInfoFile+'"',GetTempDirectory,Form3.Showprocessforgenerateinfofile1.Checked) Then
      Begin
        //
      End;
  Form1.Enabled:=True;
  Application.ProcessMessages;
  Screen.Cursor := crDefault;
end;

Function FaraExtensie(s:AnsiString):AnsiString;
Begin
  Delete(s,Length(s)-3,5);
  result:=s;
End;

Procedure TForm1.LoadImageThumbnail(savedFile:AnsiString;ScaleFactor:Extended);
Begin
  Image1.Stretch:=False;
  Image1.AutoSize:=True;
  Image1.Picture.LoadFromFile(savedFile);
  If Scalefactor<>1 Then
    Begin
      Image1.Stretch:=True;
      Image1.AutoSize:=False;
      Image1.Width:=Round(Image1.Width*ScaleFactor);
      Image1.Height:=Round(Image1.Height*ScaleFactor);
    End;
End;

procedure TForm1.ListBox1Click(Sender: TObject);
Label TryAgain;
Const Sc:Extended=5;
      Step:Extended=0.5;
Var   f1:TextFile;
      j:Integer;
      s1:AnsiString;
      s2:String[21];
Begin
  If LoadInfo(Form1.ListBox1.Items[Form1.ListBox1.ItemIndex]) Then
    Begin
      If FileExists(TempInfoFile) Then
        Begin
          Application.ProcessMessages;
          Screen.Cursor:=crHourglass;
          ImageX1:=0;
          ImageY1:=0;
          ImageX2:=0;
          ImageY2:=0;
          AssignFile(f1,TempInfoFile);
          Reset(f1);
          For j:=1 To 3 Do
            ReadLn(f1,s1);
          For j:=1 To 17 Do
            Begin
              Read(f1,s2);
              ReadLn(f1,s1);
              If j=2 Then
                RezX:=StrToFloat(s1);
              If j=3 Then
                RezY:=StrToFloat(s1);
              StringGrid1.Cells[1,j]:=s1;
            End;
          For j:=1 To 2 Do ReadLn(f1,s1);
          For j:=1 To 6 Do
            Begin
              Read(f1,s2);
              ReadLn(f1,s1);
              StringGrid1.Cells[1,j+18]:=s1;
            End;
          For j:=1 To 2 Do ReadLn(f1,s1);
          For j:=1 To 5 Do
            Begin
              Read(f1,s2);
              ReadLn(f1,s1);
              If j=1 Then
                ImageX1:=StrToFloat(Extragere(Extragere(s1,Length(s1)-1,False),Length(Extragere(s1,Length(s1)-1,False))-13,True));
              If j=2 Then
                ImageX2:=StrToFloat(Extragere(Extragere(s1,Length(s1)-1,False),Length(Extragere(s1,Length(s1)-1,False))-13,True));
              If j=1 Then
                ImageY2:=StrToFloat(Extragere(Extragere(s1,1,True),13,False));
              If j=3 Then
                ImageY1:=StrToFloat(Extragere(Extragere(s1,1,True),13,False));
              StringGrid1.Cells[1,j+25]:=s1;
            End;
          For j:=1 To 2 Do ReadLn(f1,s1);
          For j:=1 To 3 Do
            Begin
              Read(f1,s2);
              ReadLn(f1,s1);
              StringGrid1.Cells[1,j+31]:=s1;
            End;
          For j:=1 To 2 Do ReadLn(f1,s1);
          For j:=1 To 2 Do
            Begin
              Read(f1,s2);
              ReadLn(f1,s1);
              StringGrid1.Cells[1,j+35]:=s1;
            End;
          StringGrid1.Cells[1,39]:=FloatToStrF(ImageX2-ImageX1,ffFixed,16,6)+' x '+FloatToStrF(ImageY2-ImageY1,ffFixed,16,6);
          CloseFile(f1);
          With Form4 Do
            Begin
              Caption:='Processing image';
              Label3.Enabled:=False;
              Top1.Enabled:=False;
              Label1.Enabled:=False;
              Left1.Enabled:=False;
              Label2.Enabled:=False;
              Right1.Enabled:=False;
              Label4.Enabled:=False;
              Bottom1.Enabled:=False;
              Label5.Enabled:=False;
              ScaleForZoom.Enabled:=False;
              Label6.Enabled:=True;
              ThumbnailScale.Enabled:=True;
            End;
          If Form4.Execute Then
            Begin
              Sc:=StrToFloat(Form4.ThumbnailScale.Items[Form4.ThumbnailScale.ItemIndex]);
              savedFile:=GetTempDirectory+thumbImage;
TryAgain:
              s1:=' -input "'+ListBox1.Items[ListBox1.ItemIndex]+'"'+' -output "'+savedFile+'" '+' -s '+FloatToStr(Sc)+' -worldFile';
              If Imagethumbnail1.Checked Then
                Begin
                  If RunAndWait('"'+decodeLocation+'"',s1,'"'+GetTempDirectory+'"',Form3.Showprocessforgeneratethumbnail.Checked) Then
                    Begin
                      If FileExists(savedFile) Then
                        Begin
                          Zoomed:=False;
                          Zoom1.Enabled:=True;
                          FirstPointSelected:=False;
                          Shape1.Visible:=False;
                          LoadImageThumbnail(savedFile,StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
                          Resetposition1Click(Sender);
                          Image1.Width:=Round(Image1.Width*StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
                          Image1.Height:=Round(Image1.Height*StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
                          StatusBar1.Panels[2].Text:='Image ('+IntToStr(Image1.Width)+', '+IntToStr(Image1.Height)+')';
                        End
                      Else
                        If MessageDlg('Error creating the thumbnail file in scale '+FloatToStr(Sc)+'!'#13'Try again with scale '+FloatToStr(Sc-Step)+'?',mtWarning,[mbYes,mbNo],0)=mrYes Then
                          Begin
                            Sc:=Sc-Step;
                            Goto TryAgain;
                          End;
                    End;
                End;
              ThumbnailMap;
              If (ListBox1.Visible) And (Panel1.Visible) Then
                ListBox1.SetFocus;
              StatusBar1.Panels[1].Text:='Scale: '+FloatToStr(Sc);
            End;
          Application.ProcessMessages;
          Screen.Cursor:=crDefault;
        End;
    End;
End;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Addfile1Click(Sender: TObject);
Var i:Integer;
begin
  OpenDialog3.InitialDir:=Form2.EditStartDir.Text;
  If OpenDialog3.Execute Then
    For i:=0 To OpenDialog3.Files.Count-1 Do
      Begin
        ListBox1.Items.Add(OpenDialog3.Files[i]);
        LabelCount.Caption:= '   Files list (' + IntToStr(ListBox1.Items.Capacity)+')';
      End;
end;

procedure TForm1.Deleteselected1Click(Sender: TObject);
Var i,x:Integer;
begin
  If (ListBox1.ItemIndex<>-1) And (ListBox1.Items.Capacity<>0) Then
    Begin
      x:=0;
      For i:=ListBox1.Items.Count-1 DownTo 0 Do
        If ListBox1.Selected[i] Then Inc(x);
      If MessageDlg('Intend to delete '+IntToStr(x)+' files from list'#13'Proceed?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
        Begin
          For i:=ListBox1.Items.Count-1 DownTo 0 Do
            If ListBox1.Selected[i] Then ListBox1.Items.Delete(i) ;
        End;
      LabelCount.Caption:= '   Files list (' + IntToStr(ListBox1.Items.Capacity)+')';
    End;
end;

procedure TForm1.Settings1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.Copyselectedpath1Click(Sender: TObject);
Var i:Integer;
    s:AnsiString;
begin
  s:='';
  For i:=0 To ListBox1.Items.Count-1 Do
    If ListBox1.Selected[i] Then
      s:=s+ListBox1.Items[i]+#13;
  Clipboard.AsText:=s;
end;

procedure TForm1.Clearlist1Click(Sender: TObject);
begin
  If MessageDlg('Clear the entire list.'#13'Are you sure?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
    ListBox1.Clear;
end;

function GetCPUSpeed: Double;
const
  DelayTime = 500;
var
  TimerHi, TimerLo: DWORD;
  PriorityClass, Priority: Integer;
begin
  PriorityClass := GetPriorityClass(GetCurrentProcess);
  Priority      := GetThreadPriority(GetCurrentThread);
  SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
  SetThreadPriority(GetCurrentThread, THREAD_PRIORITY_TIME_CRITICAL);
  Sleep(10);
  asm
    dw 310Fh
    mov TimerLo, eax
    mov TimerHi, edx
  end;
  Sleep(DelayTime);
  asm
    dw 310Fh
    sub eax, TimerLo
    sbb edx, TimerHi
    mov TimerLo, eax
    mov TimerHi, edx
  end;
  SetThreadPriority(GetCurrentThread, Priority);
  SetPriorityClass(GetCurrentProcess, PriorityClass);
  Result := TimerLo / (1000 * DelayTime);
end;

procedure TForm1.About1Click(Sender: TObject);
//Var Speed:Double;
begin
//  Speed:=GetCPUSpeed;
//  If Speed<2000 Then
//    ShowMessage(Format('Your CPU speed: %f MHz'#13'      Slow man!', [Speed]))
//  Else
//    ShowMessage(Format('Your CPU speed: %f MHz'#13'      Wow!', [Speed]))
  Form5.ShowModal;
end;

procedure TForm1.Splitter2Moved(Sender: TObject);
begin
  StringGrid1.ColWidths[1]:=StringGrid1.Width-StringGrid1.ColWidths[0]-24;
  ThumbnailMap;
end;

procedure TForm1.FormCreate(Sender: TObject);
Var rStream:TResourceStream;
    fStream:TFileStream;
    ProgressBarStyle:Integer;
begin
  StatusBar1.Panels[ProgPos].Style:=psOwnerDraw;                     //enable status bar 2nd Panel custom drawing
  ProgressBar1.Parent:=StatusBar1;                                   //place the progress bar into the status bar
  ProgressBarStyle:=GetWindowLong(ProgressBar1.Handle,GWL_EXSTYLE);  //remove progress bar border
  ProgressBarStyle:=ProgressBarStyle-WS_EX_STATICEDGE;
  SetWindowLong(ProgressBar1.Handle,GWL_EXSTYLE,ProgressBarStyle);
  decodeLocation:=GetTempDirectory+'mrsidgeodecode.exe';
  rStream:=TResourceStream.Create(hInstance,'decode',RT_RCDATA);
  Try
    fStream:=TFileStream.Create(decodeLocation,fmCreate);
    Try
      fStream.CopyFrom(rStream,0);
    Finally
      fStream.Free;
    End;
  Finally
    rStream.Free;
  End;
  infoLocation:=GetTempDirectory+'mrsidgeoinfo.exe';
  rStream:=TResourceStream.Create(hInstance,'info',RT_RCDATA);
  Try
    fStream:=TFileStream.Create(infoLocation,fmCreate);
    Try
      fStream.CopyFrom(rStream,0);
    Finally
      fStream.Free;
    End;
  Finally
    rStream.Free;
  End;
  StringGrid1.Cells[0, 0]:='Basic image info';////////////////////
  StringGrid1.Cells[0, 1]:='          format';
  StringGrid1.Cells[0, 2]:='          width';
  StringGrid1.Cells[0, 3]:='          height';
  StringGrid1.Cells[0, 4]:='          nband';
  StringGrid1.Cells[0, 5]:='          color space';
  StringGrid1.Cells[0, 6]:='          datatype';
  StringGrid1.Cells[0, 7]:='          precision';
  StringGrid1.Cells[0, 8]:='          dyn range min';
  StringGrid1.Cells[0, 9]:='          dyn range max';
  StringGrid1.Cells[0,10]:='          background color';
  StringGrid1.Cells[0,11]:='          nodata color';
  StringGrid1.Cells[0,12]:='          nominal size';
  StringGrid1.Cells[0,13]:='          physical size';
  StringGrid1.Cells[0,14]:='          compression ratio';
  StringGrid1.Cells[0,15]:='          mag range';
  StringGrid1.Cells[0,16]:='          metadata records';
  StringGrid1.Cells[0,17]:='          num AOI regions';
  StringGrid1.Cells[0,18]:='Geo coordinate info';//////////////
  StringGrid1.Cells[0,19]:='          X UL';
  StringGrid1.Cells[0,20]:='          Y UL';
  StringGrid1.Cells[0,21]:='          X res';
  StringGrid1.Cells[0,22]:='          Y res';
  StringGrid1.Cells[0,23]:='          X rot';
  StringGrid1.Cells[0,24]:='          Y rot';
  StringGrid1.Cells[0,25]:='Geo points (pixel centers)';/////////////////
  StringGrid1.Cells[0,26]:='          upper left';
  StringGrid1.Cells[0,27]:='          upper right';
  StringGrid1.Cells[0,28]:='          lower left';
  StringGrid1.Cells[0,29]:='          lower right';
  StringGrid1.Cells[0,30]:='          center';
  StringGrid1.Cells[0,31]:='MrSID image info';///////////////
  StringGrid1.Cells[0,32]:='          number of levels';
  StringGrid1.Cells[0,33]:='          is locked';
  StringGrid1.Cells[0,34]:='          file version';
  StringGrid1.Cells[0,35]:='MrSID/MG2-specific image info';//////////////////
  StringGrid1.Cells[0,36]:='          is dithered';
  StringGrid1.Cells[0,37]:='          block size';
  StringGrid1.Cells[0,38]:='Dimension of original image';//////////////////
  StringGrid1.Cells[0,39]:='          Width and Height';
  MrSIDinformation1Click(Sender);
  With Image1 Do
    Begin
      Left:=0;
      Top:=0;
      Width:=0;
      Height:=0;
    End;
  With Shape1 Do
    Begin
      Left:=0;
      Top:=0;
      Width:=0;
      Height:=0;
    End;
  Screen.Cursors[crMove]:=LoadCursor(hInstance,'MOVE');
  Screen.Cursors[crZoom]:=LoadCursor(hInstance,'ZOOM');
  Image1.Cursor:=crMove;
end;

procedure TForm1.Image1StartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  GetCursorPos(MousePos1);
end;

Procedure TForm1.ThumbnailMap;
Var MaxX,MaxY,sc:Extended;
Begin
  MaxX:=2*(Image1.Width+Panel9.Width);
  MaxY:=2*(Image1.Height+Panel9.Height);
  If MaxX>MaxY Then
    sc:=Panel10.Width/MaxX
  Else
    sc:=Panel10.Height/MaxY;
  Shape3.Width:=Round(Panel9.Width*sc);
  Shape3.Height:=Round(Panel9.Height*sc);
  Shape3.Left:=(Panel10.Width-Shape3.Width) Div 2;
  Shape3.Top:=(Panel10.Height-Shape3.Height) Div 2;
  Label_S.Left:=Shape3.Left+3;
  Label_S.Top:=Shape3.Top+3;
  Shape4.Width:=Round(Image1.Width*sc);
  Shape4.Height:=Round(Image1.Height*sc);
  Shape4.Left:=Shape3.Left+Round(Image1.Left*Sc);
  Shape4.Top:=Shape3.Top+Round(Image1.Top*Sc);
  Label_I.Left:=Shape4.Left+Shape4.Width-Label_I.Width-3;
  Label_I.Top:=Shape4.Top+Shape4.Height-Label_I.Height-3;
  If Zoom1.Enabled Then
    Begin
      Shape2.Visible:=False;
      Label_Z.Visible:=False;
      Shape4.Visible:=(Image1.Width+Image1.Height)<>0;
      Label_I.Visible:=(Image1.Width+Image1.Height)<>0;
    End
  Else
    Begin
      Shape2.Visible:=True;
      Shape4.Visible:=False;
      Label_Z.Visible:=True;
      Label_I.Visible:=False;
      Shape2.Width:=Round(Image1.Width*sc);
      Shape2.Height:=Round(Image1.Height*sc);
      Shape2.Left:=Shape3.Left+Round(Image1.Left*Sc);
      Shape2.Top:=Shape3.Top+Round(Image1.Top*Sc);
      Label_Z.Left:=Shape2.Left+Shape2.Width-Label_Z.Width-3;
      Label_Z.Top:=Shape2.Top+Shape2.Height-Label_Z.Height-3;
    End;
  //Label1.Caption:='Image: '+IntToStr(Shape2.Width)+'x'+IntToStr(Shape2.Height)+' - '+IntToStr(Shape2.Left)+','+IntToStr(Shape2.Top);
  //Label2.Caption:='Screen: '+IntToStr(Shape3.Width)+'x'+IntToStr(Shape3.Height)+' - '+IntToStr(Shape3.Left)+','+IntToStr(Shape3.Top);
  //Label6.Caption:='Panel: '+IntToStr(Panel10.Width)+'x'+IntToStr(Panel10.Height);*)
End;

procedure TForm1.Image1EndDrag(Sender, Target: TObject; X, Y: Integer);
Var MousePos2:TPoint;
begin
  GetCursorPos(MousePos2);
  Image1.Visible:=False;
  Image1.Left:=Image1.Left+MousePos2.X-MousePos1.X;
  Image1.Top:=Image1.Top+MousePos2.Y-MousePos1.Y;
  Image1.Visible:=True;
  Shape1.Left:=Shape1.Left+MousePos2.X-MousePos1.X;
  Shape1.Top:=Shape1.Top+MousePos2.Y-MousePos1.Y;
  ThumbnailMap;
end;

procedure TForm1.Pan1Click(Sender: TObject);
begin
  Pan1.Checked:=True;
  Pan2.Checked:=True;
  Image1.Cursor:=crMove;
  Zoom1.Checked:=Not Pan1.Checked;
  Zoom2.Checked:=Not Pan2.Checked;
  SpeedButton2.Enabled:=Not Pan1.Checked;
  SpeedButton3.Enabled:=Not Zoom1.Checked;
  FirstPointSelected:=False;
  Shape1.Visible:=False;
  Case Pan1.Checked Of
    True:Image1.DragMode:=dmAutomatic;
    False:Image1.DragMode:=dmManual;
  End;
end;

procedure TForm1.Zoom1Click(Sender: TObject);
begin
  Zoom1.Checked:=True;
  Zoom2.Checked:=True;
  Image1.Cursor:=crZoom;
  Pan1.Checked:=Not Zoom1.Checked;
  Pan2.Checked:=Not Zoom2.Checked;
  SpeedButton2.Enabled:=Not Pan1.Checked;
  SpeedButton3.Enabled:=Not Zoom1.Checked;
  FirstPointSelected:=False;
  Shape1.Visible:=False;
  Case Pan1.Checked Of
    True:Image1.DragMode:=dmAutomatic;
    False:Image1.DragMode:=dmManual;
  End;
end;

procedure TForm1.Saveimageas1Click(Sender: TObject);
begin
  If SaveDialog1.Execute Then
    If Not Zoom1.Enabled Then
      Begin
        CopyFile(PChar(GetTempDirectory+zoomImage),PChar(SaveDialog1.FileName),False);
        CopyFile(PChar(GetTempDirectory+zoomWorldFile),PChar(FaraExtensie(SaveDialog1.FileName)+'.jgw'),False);
      End
    Else
      Begin
        CopyFile(PChar(GetTempDirectory+thumbImage),PChar(SaveDialog1.FileName),False);
        CopyFile(PChar(GetTempDirectory+FaraExtensie(thumbImage)+'.jgw'),PChar(FaraExtensie(SaveDialog1.FileName)+'.jgw'),False);
      End;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var s1:AnsiString;
    ZoomX1,ZoomY1,ZoomX2,ZoomY2,ZoomTemp:Extended;
    TempMouseCursor:Integer;
begin
  If (Zoom1.Checked) And (Button=mbLeft) Then
    Begin
      If FirstPointSelected Then
        Begin
          TempMouseCursor:=Screen.Cursor;
          Application.ProcessMessages;
          Screen.Cursor:=crHourglass;
          FirstPointSelected:=False;
          StatusBar1.Panels[3].Text:='Zoom selection ('+IntToStr(Shape1.Left-Image1.Left)+','+IntToStr(Shape1.Top-Image1.Top)+') '+
                                                    '('+IntToStr(Shape1.Left-Image1.Left+Shape1.Width)+','+IntToStr(Shape1.Top-Image1.Top+Shape1.Height)+')';
          //Scale4Zoom:=StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);////// scara 0.5 sau 1.0
          ZoomX1:=(RezX/Image1.Width*(Shape1.Left-Image1.Left+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
          ZoomX2:=(RezX/Image1.Width*(Shape1.Left+Shape1.Width-Image1.Left+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
          ZoomY1:=(RezY/Image1.Height*(Shape1.Top-Image1.Top+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
          ZoomY2:=(RezY/Image1.Height*(Shape1.Top+Shape1.Height-Image1.Top+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
          If ZoomX1>ZoomX2 Then
            Begin
              ZoomTemp:=ZoomX2;
              ZoomX2:=ZoomX1;
              ZoomX1:=ZoomTemp;
            End;
          If ZoomY1>ZoomY2 Then
            Begin
              ZoomTemp:=ZoomY2;
              ZoomY2:=ZoomY1;
              ZoomY1:=ZoomTemp;
            End;
          s1:=' -input "'+ListBox1.Items[ListBox1.ItemIndex]+'"'+' -output "'+GetTempDirectory+zoomImage+'" '+' -s '+Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]+
                          ' -ulxy '+FloatToStr(ZoomX1)+' '+FloatToStr(ZoomY1)+
                          ' -lrxy '+FloatToStr(ZoomX2)+' '+FloatToStr(ZoomY2)+' -worldFile';
          With Form4 Do
            Begin
              Caption:='Zoomimg image';
              Label3.Enabled:=True;
              Top1.Enabled:=True;
              Label1.Enabled:=True;
              Left1.Enabled:=True;
              Label2.Enabled:=True;
              Right1.Enabled:=True;
              Label4.Enabled:=True;
              Bottom1.Enabled:=True;
              Label5.Enabled:=True;
              ScaleForZoom.Enabled:=True;
              Label6.Enabled:=False;
              ThumbnailScale.Enabled:=False;
              Top1.MinValue:=0;
              Top1.MaxValue:=Image1.Height;
              Top1.Value:=Shape1.Top-Image1.Top;
              Left1.MinValue:=0;
              Left1.MaxValue:=Image1.Width;
              Left1.Value:=Shape1.Left-Image1.Left;
              Bottom1.MinValue:=0;
              Bottom1.MaxValue:=Image1.Height;
              Bottom1.Value:=Shape1.Top-Image1.Top+Shape1.Height;
              Right1.MinValue:=0;
              Right1.MaxValue:=Image1.Width;
              Right1.Value:=Shape1.Left-Image1.Left+Shape1.Width;
              //ScaleForZoom.ItemIndex:=0;//
            End;
          If Form4.Execute Then
            Begin
              StatusBar1.Panels[3].Text:='Zoom selection ('+IntToStr(Form4.Left1.Value)+','+IntToStr(Form4.Top1.Value)+') '+
                                                        '('+IntToStr(Form4.Right1.Value)+','+IntToStr(Form4.Bottom1.Value)+')';
              //Scale4Zoom:=StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);////// scara 0.5 sau 1.0
              ZoomX1:=(RezX/Image1.Width*(Form4.Left1.Value+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
              ZoomX2:=(RezX/Image1.Width*(Form4.Right1.Value+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
              ZoomY1:=(RezY/Image1.Height*(Form4.Top1.Value+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
              ZoomY2:=(RezY/Image1.Height*(Form4.Bottom1.Value+1))*0.5/StrToFloat(Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]);
              If ZoomX1>ZoomX2 Then
                Begin
                  ZoomTemp:=ZoomX2;
                  ZoomX2:=ZoomX1;
                  ZoomX1:=ZoomTemp;
                End;
              If ZoomY1>ZoomY2 Then
                Begin
                  ZoomTemp:=ZoomY2;
                  ZoomY2:=ZoomY1;
                  ZoomY1:=ZoomTemp;
                End;
              s1:=' -input "'+ListBox1.Items[ListBox1.ItemIndex]+'"'+' -output "'+GetTempDirectory+zoomImage+'" '+' -s '+Form4.ScaleForZoom.Items[Form4.ScaleForZoom.ItemIndex]+
                              ' -ulxy '+FloatToStr(ZoomX1)+' '+FloatToStr(ZoomY1)+
                              ' -lrxy '+FloatToStr(ZoomX2)+' '+FloatToStr(ZoomY2)+' -worldFile';
              If RunAndWait('"'+decodeLocation+'"',s1,'"'+GetTempDirectory+'"',Form3.Showprocessforgeneratethumbnail.Checked) Then
                Begin
                  //
                End;
              If FileExists(GetTempDirectory+zoomImage) Then
                Begin
                  LoadImageThumbnail(GetTempDirectory+zoomImage,StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
                  Resetposition1Click(Sender);
                End;
              Zoomed:=True;
              Zoom1.Enabled:=False;
              Pan1Click(Sender);
            End;
          Shape1.Visible:=False;
          Application.ProcessMessages;
          Screen.Cursor:=TempMouseCursor;
        End
      Else
        Begin
          Shape1.Visible:=False;
          Shape1.Left:=X+Image1.Left;
          Shape1.Top:=Y+Image1.Top;
          Shape1.Width:=0;
          Shape1.Height:=0;
          FirstPointSelected:=True;
          Shape1.Visible:=True;
        End;
    End;
  ThumbnailMap;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Var b:Boolean;
begin
  StatusBar1.Panels[0].Text:='Mouse ('+IntToStr(X)+', '+IntToStr(Y)+')';
  If Zoom1.Checked Then
    Begin
      b:=Shape1.Visible;
      Shape1.Visible:=False;
      Shape1.Width:=0;
      Shape1.Height:=0;
      If FirstPointSelected Then
        Begin
          Shape1.Width:=X-Shape1.Left+Image1.Left;
          Shape1.Height:=Y-Shape1.Top+Image1.Top;
        End;
      If b Then Shape1.Visible:=True;
    End;
end;

procedure TForm1.Shape1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Var b:Boolean;
begin
  StatusBar1.Panels[0].Text:='('+IntToStr(X)+', '+IntToStr(Y)+')';
  If Zoom1.Checked Then
    Begin
      b:=Shape1.Visible;
      Shape1.Visible:=False;
      Shape1.Width:=0;
      Shape1.Height:=0;
      If FirstPointSelected Then
        Begin
          Shape1.Width:=X;
          Shape1.Height:=Y;
        End;
      If b Then Shape1.Visible:=True;
    End;
end;

procedure TForm1.Filelist1Click(Sender: TObject);
begin
  Filelist1.Checked:=Not Filelist1.Checked;
  Splitter3.Visible:=Filelist1.Checked;
  Panel1.Visible:=Filelist1.Checked;
end;

procedure TForm1.MrSIDinformation1Click(Sender: TObject);
begin
  MrSIDinformation1.Checked:=Not MrSIDinformation1.Checked;
  StringGrid1.Visible:=MrSIDinformation1.Checked;
  Splitter2.Visible:=MrSIDinformation1.Checked;
  Panel2.Visible:=MrSIDinformation1.Checked;
end;

procedure TForm1.Imagethumbnail1Click(Sender: TObject);
begin
  Imagethumbnail1.Checked:=Not Imagethumbnail1.Checked;
  Panel9.Visible:=Imagethumbnail1.Checked;
  Image1.Visible:=Imagethumbnail1.Checked;
  Panel5.Visible:=Imagethumbnail1.Checked;
end;

procedure TForm1.Resetposition1Click(Sender: TObject);
begin
  If Form4.LT.Checked Then
    Begin
      Image1.Left:=0;
      Image1.Top:=0;
    End Else
  If Form4.CT.Checked Then
    Begin
      Image1.Left:=(Panel9.Width-Image1.Width) Div 2;
      Image1.Top:=0;
    End Else
  If Form4.RT.Checked Then
    Begin
      Image1.Left:=(Panel9.Width-Image1.Width);
      Image1.Top:=0;
    End Else
  If Form4.LC.Checked Then
    Begin
      Image1.Left:=0;
      Image1.Top:=(Panel9.Height-Image1.Height) Div 2;
    End Else
  If Form4.CC.Checked Then
    Begin
      Image1.Left:=(Panel9.Width-Image1.Width) Div 2;
      Image1.Top:=(Panel9.Height-Image1.Height) Div 2;
    End Else
  If Form4.RC.Checked Then
    Begin
      Image1.Left:=Panel9.Width-Image1.Width;
      Image1.Top:=(Panel9.Height-Image1.Height) Div 2;
    End Else
  If Form4.LB.Checked Then
    Begin
      Image1.Left:=0;
      Image1.Top:=Panel9.Height-Image1.Height;
    End Else
  If Form4.CB.Checked Then
    Begin
      Image1.Left:=(Panel9.Width-Image1.Width) Div 2;
      Image1.Top:=Panel9.Height-Image1.Height;
    End Else
  If Form4.RB.Checked Then
    Begin
      Image1.Left:=Panel9.Width-Image1.Width;
      Image1.Top:=Panel9.Height-Image1.Height;
    End;
  ThumbnailMap;  
end;

procedure TForm1.Aligncenter1Click(Sender: TObject);
begin
  Image1.Left:=(Panel9.Width-Image1.Width) Div 2;
  Image1.Top:=(Panel9.Height-Image1.Height) Div 2;
  ThumbnailMap;
end;

procedure TForm1.Aligntopleft1Click(Sender: TObject);
begin
  Image1.Left:=0;
  Image1.Top:=0;
  ThumbnailMap;
end;

procedure TForm1.Alignbottomright1Click(Sender: TObject);
begin
  Image1.Left:=Panel9.Width-Image1.Width;
  Image1.Top:=Panel9.Height-Image1.Height;
  ThumbnailMap;
end;

procedure TForm1.Refresh1Click(Sender: TObject);
Var punct,dimens:TPoint;
//    savedFile:AnsiString;
begin
  If FileExists(savedFile) Then
    Begin
      punct.x:=Image1.Left;
      punct.y:=Image1.Top;
      dimens.x:=Image1.Width;
      dimens.y:=Image1.Height;
      If Zoom1.Enabled Then
        savedFile:=GetTempDirectory+thumbImage
      Else
        savedFile:=GetTempDirectory+zoomImage;
      LoadImageThumbnail(savedFile,StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
      Resetposition1Click(Sender);
    End;
end;

procedure TForm1.Resetzoom1Click(Sender: TObject);
begin
  Zoomed:=False;
  Zoom1.Enabled:=True;
  If FileExists(savedFile) Then
    Begin
      FirstPointSelected:=False;
      Shape1.Visible:=False;
      savedFile:=GetTempDirectory+thumbImage;
      LoadImageThumbnail(savedFile,StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
      Resetposition1Click(Sender);
      StatusBar1.Panels[2].Text:='Image ('+IntToStr(Image1.Width)+', '+IntToStr(Image1.Height)+')';
    End;
end;

procedure TForm1.Aligntopright1Click(Sender: TObject);
begin
  Image1.Left:=Panel9.Width-Image1.Width;
  Image1.Top:=0;
  ThumbnailMap;
end;

procedure TForm1.Aligntobottomleft1Click(Sender: TObject);
begin
  Image1.Left:=0;
  Image1.Top:=Panel9.Height-Image1.Height;
  ThumbnailMap;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin 
  If DeleteFile(TempInfoFile) And
     DeleteFile(GetTempDirectory+thumbImage) And
     DeleteFile(GetTempDirectory+FaraExtensie(thumbImage)+'.jgw') And
     DeleteFile(GetTempDirectory+zoomImage) And
     DeleteFile(GetTempDirectory+zoomWorldFile) And
     DeleteFile(GetTempDirectory+'mrsidgeodecode.exe') And
     DeleteFile(GetTempDirectory+'mrsidgeoinfo.exe')
    Then //;
end;

procedure TForm1.Map1Click(Sender: TObject);
begin
  Map1.Checked:=Not Map1.Checked;
  Splitter3.Visible:=Map1.Checked;
  Panel3.Visible:=Map1.Checked;
end;

procedure TForm1.Splitter1Moved(Sender: TObject);
begin
  If Panel1.Width<250 Then
    Panel1.Width:=250;
  ThumbnailMap;  
end;

procedure TForm1.ExportasDXFfile1Click(Sender: TObject);
Var f2:TextFile;
    s2,RasterFile:AnsiString;
    i:Integer;
    x1,y1,x2,y2,sx,sy,px,py,ScX,ScY:Extended;
    procedure dxf__(List:TListBox);
      var f1:TextFile;
          j:integer;
          s1:AnsiString;
      begin
        AssignFile(f1,SaveDialog2.FileName);
        Rewrite(f1);
        For j:=0 To List.Items.Capacity-1 Do
          Begin
            s1:=List.Items[j];
            If s1='REPLACE X1' Then
              s1:=FloatToStr(x1)
            Else If s1='REPLACE Y1' Then
              s1:=FloatToStr(y1)
            Else If s1='REPLACE X2' Then
              s1:=FloatToStr(x2)
            Else If s1='REPLACE Y2' Then
              s1:=FloatToStr(y2)
            Else If s1='REPLACE SIZE X' Then
              s1:=FloatToStr(sx)
            Else If s1='REPLACE SIZE Y' Then
              s1:=FloatToStr(sy)
            Else If s1='REPLACE POZ X' Then
              s1:=FloatToStr(px)
            Else If s1='REPLACE POZ Y' Then
              s1:=FloatToStr(py)
            Else If s1='REPLACE RASTER FILE' Then
              s1:=RasterFile
            Else If s1='REPLACE SCALE X' Then
              s1:=FloatToStr(ScX)
            Else If s1='REPLACE SCALE Y' Then
              s1:=FloatToStr(ScY)
            Else If s1='REPLACE RASTER NAME' Then
              s1:=FaraExtensie(ExtractFileName(RasterFile));
            WriteLn(f1,s1);
          End;
        CloseFile(f1);
      end;
begin
  If SaveDialog2.Execute Then
    Begin
      If Not Zoom1.Enabled Then
        Begin
          CopyFile(PChar(GetTempDirectory+zoomImage),PChar(FaraExtensie(SaveDialog2.FileName)+'.jpg'),False);
          CopyFile(PChar(GetTempDirectory+zoomWorldFile),PChar(FaraExtensie(SaveDialog2.FileName)+'.jgw'),False);
          AssignFile(f2,GetTempDirectory+zoomWorldFile);
        End
      Else
        Begin
          CopyFile(PChar(GetTempDirectory+thumbImage),PChar(FaraExtensie(SaveDialog2.FileName)+'.jpg'),False);
          CopyFile(PChar(GetTempDirectory+FaraExtensie(thumbImage)+'.jgw'),PChar(FaraExtensie(SaveDialog2.FileName)+'.jgw'),False);
          AssignFile(f2,GetTempDirectory+FaraExtensie(thumbImage)+'.jgw');
        End;
      Reset(f2);
      ReadLn(f2,s2);
      ScX:=StrToFloat(s2);
      For i:=1 To 3 Do
        ReadLn(f2,s2);
      ScY:=-StrToFloat(s2);
      ReadLn(f2,s2);
      sx:=Image1.Width*StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]);
      sy:=Image1.Height*StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]);
      x1:=StrToFloat(s2)-0.5*ScX;
      ReadLn(f2,s2);
      y2:=StrToFloat(s2)+0.5*ScY;
      CloseFile(f2);
      x2:=x1+ScX*(sx+0.5);
      y1:=y2-ScY*(sy+0.5);
      px:=x1+sx;
      py:=y1-sy;
      RasterFile:=FaraExtensie(SaveDialog2.FileName)+'.jpg';
      If SaveDialog2.FilterIndex=1 Then
        dxf__(ListBox2)                 //acad 2000
      Else
        dxf__(ListBox3);                //acad 2004
      End;
end;

procedure TForm1.Removeduplicates1Click(Sender: TObject);
Label Repetare;
Var i,j,k,Max:Integer;
begin
  If MessageDlg('Remove duplicates?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
    Begin
      k:=0;
Repetare:
      Max:=ListBox1.Items.Capacity-1;
      i:=Max;
      While i>=1 Do
        Begin
          j:=i-1;
          While j>=0 Do
            Begin
              If ListBox1.Items[i]=ListBox1.Items[j] Then
                Begin
                  ListBox1.Items.Delete(j);
                  Inc(k);
                  Goto Repetare;
                End;
              Dec(j);
            End;
          Dec(i);
        End;
      MessageDlg(IntToStr(k)+' duplicates removed!',mtInformation,[mbOk],0);
    End;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var  lpszBuffer:    Array [0..1024] of Char;
     hwndCon:       HWND;
     hsysMenu:      HMENU;
     heditMenu:     HMENU;
     dwIndex:       Integer;
     s:String;
   function nr2txt(s:string):integer;
   var c:integer;
       NR:EXTENDED;
   begin
     result:=0;
     val(s,nr,c);
     if c=0 then
       result:=ROUND(nr);
   end;
begin
  txtConsole.Text:='';                                                                        // Clear text
  hwndCon:=StrToIntDef(IntToStr(FindWindow('ConsoleWindowClass', nil)), 0);                   // Get window handle
  if IsWindow(hwndCon) then                                                                   // Check window
  begin
    hsysMenu:=GetSystemMenu(hwndCon, False);                                                  // Get system menu
    if not(hsysMenu=0) then                                                                 // Check system menu
    begin
      for dwIndex:=0 to Pred(GetMenuItemCount(hsysMenu)) do                                   // Walk items looking for the edit sub menu
      begin
        if (GetMenuString(hsysMenu, dwIndex, @lpszBuffer, 1024, MF_BYPOSITION) > 0) then      // Get menu string
          begin
            if (StrIComp(lpszBuffer, '&Edit') = 0) then                                       // Check for edit
              begin
                heditMenu:=GetSubMenu(hsysMenu, dwIndex);                                     // Get sub menu handle
                if not(heditMenu = 0) then                                                    // Check sub menu handle
                begin
                  SendMessage(hwndCon, WM_SYSCOMMAND, GetMenuItemID(heditMenu, 3), 0);        // Send "Select All" command
                  SendMessage(hwndCon, WM_SYSCOMMAND, GetMenuItemID(heditMenu, 1), 0);        // Send "Copy" command
                  txtConsole.Text:=Clipboard.AsText;                                          // Get clipboard text
                  s:=txtConsole.Lines[txtConsole.Lines.Count-1];
                  If s<>'' Then If s[Length(s)]='%' Then
                    Form1.StatusBar1.Panels[4].Text:='   Processing image... ['+txtConsole.Lines[txtConsole.Lines.Count-1]+']'
                  Else
                    Form1.StatusBar1.Panels[4].Text:='   Processing image...';
                  delete(s,length(s),1);
                  ProgressBar1.Position:=nr2txt(trim(s));
                  Application.ProcessMessages;
               end;
            end;
         end;
      end;
    end;
  end;
end;

procedure TForm1.Command1Click(Sender: TObject);
begin
  Command1.Checked:=Not Command1.Checked;
  Panel4.Visible:=Command1.Checked;
  Splitter4.Visible:=Command1.Checked;
end;

procedure TForm1.Splitter4Moved(Sender: TObject);
begin
  If Panel4.Height<100 Then
    Panel4.Height:=100;
  ThumbnailMap;
end;

procedure TForm1.Splitter3Moved(Sender: TObject);
begin
  If Panel3.Height<100 Then
    Panel3.Height:=100;
  ThumbnailMap;  
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Blocare:=False;
  Shape4.Width:=0;
  Shape4.Height:=0;
  Shape4.Left:=0;
  Shape4.Top:=0;
  ThumbnailMap;
end;

procedure TForm1.StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
begin
  If Panel=StatusBar.Panels[ProgPos] Then
    With ProgressBar1 Do
      Begin
        Top:=Rect.Top;
        Left:=Rect.Left;
        Width:=Rect.Right-Rect.Left-5;
        Height:=Rect.Bottom-Rect.Top;
      End;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Pan1Click(Sender);
end;

procedure TForm1.ScaleFactorChange(Sender: TObject);
Var savedFile:String;
begin
  If Not Blocare Then
    Begin
      Blocare:=True;
      Form4.ScaleFactorXX.ItemIndex:=ScaleFactor.ItemIndex;
      Blocare:=False;
    End;
  If Zoom1.Enabled Then
    savedFile:=GetTempDirectory+thumbImage
  Else
    savedFile:=GetTempDirectory+zoomImage;
  If FileExists(savedFile) Then
    Begin
      LoadImageThumbnail(savedFile,StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
      Image1.Width:=Round(Image1.Width*StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
      Image1.Height:=Round(Image1.Height*StrToFloat(Form1.ScaleFactor.Items[Form1.ScaleFactor.ItemIndex]));
      Resetposition1Click(Sender);
      StatusBar1.Panels[2].Text:='Image ('+IntToStr(Image1.Width)+', '+IntToStr(Image1.Height)+')';
    End;
  ThumbnailMap;  
end;


end.
