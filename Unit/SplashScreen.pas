unit SplashScreen;
interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms,Dialogs;

type
  TfrSplashScreen = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject;
    var Action: TCloseAction);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSplashScreen: TfrSplashScreen;

implementation

uses MainMenu;
{$R *.dfm}

//================Batas Awal Kode Utama===================
Procedure Animasi(Pilih : Byte);
Var  i, BandingLebar, BandingTinggi,
    myWidth, myHeight: LongInt;
Const Pembagi : LongInt = 200;
begin
    myWidth := frSplashScreen.Width ;
    myHeight := frSplashScreen.Height;
    frSplashScreen.AlphaBlend := True;
    BandingLebar := myWidth Div Pembagi;
    BandingTinggi := myHeight Div Pembagi;
    For i := 1 To Pembagi Do
        Begin
        If Pilih = 1 Then
        Begin
            frSplashScreen.AlphaBlendValue := i + 55;
            frSplashScreen.Width := BandingLebar * i;
            frSplashScreen.Height := BandingTinggi * i;
        End
        Else
        Begin
            frSplashScreen.AlphaBlendValue := 255 -(i + 55);
            frSplashScreen.Width := BandingLebar * (pembagi - i);
            frSplashScreen.Height := BandingTinggi * (pembagi - i);
        End;
            frSplashScreen.Left := (Screen.Width - frSplashScreen.Width) div 2;
            frSplashScreen.Top:=(Screen.Height - frSplashScreen.Height) div 2;
            frSplashScreen.Show;



    End;
End;
//--------------------------------------------
procedure TfrSplashScreen.FormCreate(Sender: TObject);
begin
    Animasi (1);
end;
//---------------------------------------------
procedure TfrSplashScreen.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
   Animasi (2);
    frSplashScreen.Close;
    frMainMenu.Show ;
end;
//===============Batas Akhir Kode Utama====================

procedure TfrSplashScreen.FormDblClick(Sender: TObject);
begin
  Animasi(2);
  Close;
end;

end.
