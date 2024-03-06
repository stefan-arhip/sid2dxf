unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Menus;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Left1: TSpinEdit;
    Label3: TLabel;
    Right1: TSpinEdit;
    Label4: TLabel;
    Bottom1: TSpinEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    ScaleForZoom: TComboBox;
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
    Button1: TButton;
    Top1: TSpinEdit;
    Label6: TLabel;
    ThumbnailScale: TComboBox;
    Label8: TLabel;
    ScaleFactorXX: TComboBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Button2: TButton;
    procedure Top1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Left1Change(Sender: TObject);
    procedure Right1Change(Sender: TObject);
    procedure Bottom1Change(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ScaleFactorXXChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function Execute:Boolean;
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.DFM}

Const Blocare:Boolean=False;

function TForm4.Execute: Boolean;
begin
  Result:=(ShowModal=mrOK);
//  Fisier:=Edit1.Text;
//  Eticheta:=ComboBox1.Text;
end;  

procedure TForm4.Top1Change(Sender: TObject);
begin
  //Top1.Value:=Shape1.Top-Image1.Top;
  If Not Blocare Then
    Form1.Shape1.Top:=Top1.Value+Form1.Image1.Top;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Blocare:=True;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  Blocare:=False;
  If Not Blocare Then
    Begin
      Blocare:=True;
      ScaleFactorXX.ItemIndex:=Form1.ScaleFactor.ItemIndex;
      Blocare:=False;
    End;
end;

procedure TForm4.Left1Change(Sender: TObject);
begin
  If Not Blocare Then
    Form1.Shape1.Left:=Left1.Value+Form1.Image1.Left;
end;

procedure TForm4.Right1Change(Sender: TObject);
begin
  If Not Blocare Then
    Form1.Shape1.Width:=Right1.Value-Form1.Shape1.Left+Form1.Image1.Left;
end;

procedure TForm4.Bottom1Change(Sender: TObject);
begin
  If Not Blocare Then
    Form1.Shape1.Height:=Bottom1.Value-Form1.Shape1.Top+Form1.Image1.Top;
end;        

procedure TForm4.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.ScaleFactorXXChange(Sender: TObject);
begin
  If Not Blocare Then
    Begin
      Blocare:=True;
      Form1.ScaleFactor.ItemIndex:=ScaleFactorXX.ItemIndex;
      Blocare:=False;
    End;
end;

end.
