unit Unit6;

interface

uses
  Forms, IniFiles, SysUtils;

Var ini:TIniFile;
    f:AnsiString;
    _Showprocessforgenerateinfofile,_Showprocessforgeneratethumbnail:Boolean;
    _EditStartDir:AnsiString;
    _ThumbnailScale:Integer;//5x
    _LT,_CT,_RT,_LC,_CC,_RC,_LB,_CB,_RB:Boolean;
    _ScaleFactor,_ScaleForZoom,_Panel1Width,_Panel2Width,_Panel3Height,_Panel4Height,_Form1Width,_Form1Height,_Form1Left,_Form1Top:Integer;
    _ViewFilelist,_ViewMrSIDinformation,_ViewImagethumbnail:Boolean;
    _DXFFilterIndex:Integer;//Autocad 2000
    _ViewMap,_ViewCommand,_ClearOtherFiles,_Autoclosesearch:Boolean;

Procedure DefaultSettings;
Procedure SaveSettings(f:AnsiString);
Procedure LoadSettings(f:AnsiString);

implementation

Procedure DefaultSettings;
Begin
  _Showprocessforgenerateinfofile:=False;
  _Showprocessforgeneratethumbnail:=False;
  _EditStartDir:=ExtractFilePath(Paramstr(0));
  _ThumbnailScale:=4;//5x
  _LT:=False;
  _CT:=False;
  _RT:=False;
  _LC:=False;
  _CC:=True;
  _RC:=False;
  _LB:=False;
  _CB:=False;
  _RB:=False;
  _ScaleFactor:=3; //factor = 1:1
  _ScaleForZoom:=1;//scale = 1
  _Panel1Width:=400;
  _Panel2Width:=400;
  _Panel3Height:=200;
  _Panel4Height:=100;
  _Form1Width:=800;
  _Form1Height:=500;
  _Form1Left:=(Screen.Width-_Form1Width) Div 2;
  _Form1Top:=(Screen.Height-_Form1Height) Div 2;
  _ViewFilelist:=True;
  _ViewMrSIDinformation:=False;
  _ViewImagethumbnail:=True;
  _DXFFilterIndex:=2;//Autocad 2000
  _ViewMap:=True;
  _ViewCommand:=False;
  _ClearOtherFiles:=False;
  _Autoclosesearch:=True;
End;

Procedure SaveSettings(f:AnsiString);
Var ini:TIniFile;
Begin
  DefaultSettings;
  ini:=TIniFile.Create(f);
  Try
    ini.WriteBool   ('General'           ,'Show process for generate info file .',_Showprocessforgenerateinfofile);
    ini.WriteBool   ('General'           ,'Show process for generate thumbnail .',_Showprocessforgeneratethumbnail);
    ini.WriteString ('File and directory','Default Searching directory         .',_EditStartDir);
    ini.WriteInteger('Thumbnail'         ,'Thumbnail scale                     .',_ThumbnailScale);
    ini.WriteBool   ('Thumbnail'         ,'Left-top align image on loading     .',_LT);
    ini.WriteBool   ('Thumbnail'         ,'Center-top align image on loading   .',_CT);
    ini.WriteBool   ('Thumbnail'         ,'Right-top align image on loading    .',_RT);
    ini.WriteBool   ('Thumbnail'         ,'Left-center align image on loading  .',_LC);
    ini.WriteBool   ('Thumbnail'         ,'Center-center align image on loading.',_CC);
    ini.WriteBool   ('Thumbnail'         ,'Right-center align image on loading .',_RC);
    ini.WriteBool   ('Thumbnail'         ,'Left-bottom align image on loading  .',_LB);
    ini.WriteBool   ('Thumbnail'         ,'Center-bottom align image on loading.',_CB);
    ini.WriteBool   ('Thumbnail'         ,'Right-bottom align image on loading .',_RB);
    ini.WriteInteger('Thumbnail'         ,'Scale factor thumbnail image        .',_ScaleFactor);
    ini.WriteInteger('Thumbnail'         ,'Scale for zoom image                .',_ScaleForZoom);
    ini.WriteInteger('Other'             ,'Panel 1 width                       .',_Panel1Width);
    ini.WriteInteger('Other'             ,'Panel 2 width                       .',_Panel2Width);
    ini.WriteInteger('Other'             ,'Panel 3 height                      .',_Panel3Height);
    ini.WriteInteger('Other'             ,'Panel 4 height                      .',_Panel4Height);
    ini.WriteInteger('Other'             ,'Width                               .',_Form1Width);
    ini.WriteInteger('Other'             ,'Height                              .',_Form1Height);
    ini.WriteInteger('Other'             ,'Left                                .',_Form1Left);
    ini.WriteInteger('Other'             ,'Top                                 .',_Form1Top);
    ini.WriteBool   ('Other'             ,'View file list                      .',_ViewFilelist);
    ini.WriteBool   ('Other'             ,'View MrSID information              .',_ViewMrSIDinformation);
    ini.WriteBool   ('Other'             ,'View image thumbnail                .',_ViewImagethumbnail);
    ini.WriteInteger('Other'             ,'Default DXF version                 .',_DXFFilterIndex);
    ini.WriteBool   ('Other'             ,'View Map                            .',_ViewMap);
    ini.WriteBool   ('Other'             ,'View Command                        .',_ViewCommand);
    ini.WriteBool   ('Other'             ,'Clear other files already in list   .',_ClearOtherFiles);
    ini.WriteBool   ('Other'             ,'Autoclose window after searching    .',_Autoclosesearch);
  Finally
    ini.Free;
  End;
End;

Procedure LoadSettings(f:AnsiString);
Var ini:TIniFile;
begin
  DefaultSettings;
  ini:=TIniFile.Create(f);
  Try
    _Showprocessforgenerateinfofile :=ini.ReadBool   ('General'           ,'Show process for generate info file .',_Showprocessforgenerateinfofile);
    _Showprocessforgeneratethumbnail:=ini.ReadBool   ('General'           ,'Show process for generate thumbnail .',_Showprocessforgeneratethumbnail);
    _EditStartDir                   :=ini.ReadString ('File and directory','Default Searching directory         .',_EditStartDir);
    _ThumbnailScale                 :=ini.ReadInteger('Thumbnail'         ,'Thumbnail scale                     .',_ThumbnailScale);
    _LT                             :=ini.ReadBool   ('Thumbnail'         ,'Left-top align image on loading     .',_LT);
    _CT                             :=ini.ReadBool   ('Thumbnail'         ,'Center-top align image on loading   .',_CT);
    _RT                             :=ini.ReadBool   ('Thumbnail'         ,'Right-top align image on loading    .',_RT);
    _LC                             :=ini.ReadBool   ('Thumbnail'         ,'Left-center align image on loading  .',_LC);
    _CC                             :=ini.ReadBool   ('Thumbnail'         ,'Center-center align image on loading.',_CC);
    _RC                             :=ini.ReadBool   ('Thumbnail'         ,'Right-center align image on loading .',_RC);
    _LB                             :=ini.ReadBool   ('Thumbnail'         ,'Left-bottom align image on loading  .',_LB);
    _CB                             :=ini.ReadBool   ('Thumbnail'         ,'Center-bottom align image on loading.',_CB);
    _RB                             :=ini.ReadBool   ('Thumbnail'         ,'Right-bottom align image on loading .',_RB);
    _ScaleFactor                    :=ini.ReadInteger('Thumbnail'         ,'Scale factor thumbnail image        .',_ScaleFactor);
    _ScaleForZoom                   :=ini.ReadInteger('Thumbnail'         ,'Scale for zoom image                .',_ScaleForZoom);
    _Panel1Width                    :=ini.ReadInteger('Other'             ,'Panel 1 width                       .',_Panel1Width);
    _Panel2Width                    :=ini.ReadInteger('Other'             ,'Panel 2 width                       .',_Panel2Width);
    _Panel3Height                   :=ini.ReadInteger('Other'             ,'Panel 3 height                      .',_Panel3Height);
    _Panel4Height                   :=ini.ReadInteger('Other'             ,'Panel 4 height                      .',_Panel4Height);
    _Form1Width                     :=ini.ReadInteger('Other'             ,'Width                               .',_Form1Width);
    _Form1Height                    :=ini.ReadInteger('Other'             ,'Height                              .',_Form1Height);
    _Form1Left                      :=ini.ReadInteger('Other'             ,'Left                                .',_Form1Left);
    _Form1Top                       :=ini.ReadInteger('Other'             ,'Top                                 .',_Form1Top);
    _ViewFilelist                   :=ini.ReadBool   ('Other'             ,'View file list                      .',_ViewFilelist);
    _ViewMrSIDinformation           :=ini.ReadBool   ('Other'             ,'View MrSID information              .',_ViewMrSIDinformation);
    _ViewImagethumbnail             :=ini.ReadBool   ('Other'             ,'View image thumbnail                .',_ViewImagethumbnail);
    _ViewMap                        :=ini.ReadBool   ('Other'             ,'View Map                            .',_ViewMap);
    _ViewCommand                    :=ini.ReadBool   ('Other'             ,'View Command                        .',_ViewCommand);
    _DXFFilterIndex                 :=ini.ReadInteger('Other'             ,'Default DXF version                 .',_DXFFilterIndex);
    _ClearOtherFiles                :=ini.ReadBool   ('Other'             ,'Clear other files already in list   .',_ClearOtherFiles);
    _Autoclosesearch                :=ini.ReadBool   ('Other'             ,'Autoclose window after searching    .',_Autoclosesearch);
  Except
    DefaultSettings;
    SaveSettings(f);
    ini.Free;
  End;
end;

end.
