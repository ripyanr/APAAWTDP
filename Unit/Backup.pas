unit Backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sGauge, ExtCtrls,IniFiles;

type
  TfrAdvance = class(TForm)
    Panel1: TPanel;
    lb_info: TLabel;
    Label5: TLabel;
    pbar: TsGauge;
    BBU: TBitBtn;
    b_res: TBitBtn;
    odlg_DBOption: TOpenDialog;
    procedure BBUClick(Sender: TObject);
    procedure b_resClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure CopyFileP(source,destination:string);
  public
    { Public declarations }
  end;

var
  frAdvance: TfrAdvance;
  inf:string;
  oldPath,NewPath:string;
  Create_IniFile:TIniFile;
implementation

uses DataModule;

{$R *.dfm}

procedure TfrAdvance.CopyFileP(source,destination:string);
var
  fromF,toF: file of Byte;
  buffer:array[0..4096] of char;
  Numread:integer;
  FileLength:Longint;
begin
  AssignFile(fromF,source);
  reset(fromF);
  AssignFile(toF,destination);
  Rewrite(toF);
  FileLength:=fileSize(fromF);
    with pbar do
      begin
      pbar.Progress:=0;
        MinValue:=0;
        MaxValue:=FileLength;
        while FileLength>0 do
          begin

            BlockRead(fromF,buffer[0],SizeOf(buffer),Numread);
            FileLength:=FileLength-Numread;
            BlockWrite(toF,buffer[0],Numread);
            label5.Caption:='Mohon tunggu....Proses'+inf+' data..';
            Application.ProcessMessages;
            Progress:=Progress+numread;
            label5.Caption:=inf+' data berhasil';
            lb_info.Caption:=inf+' Database';
          end;
        CloseFile(fromF);
        CloseFile(toF);
        BBU.Enabled:=True;
        b_res.Enabled:=True;
     end;

end;
procedure TfrAdvance.BBUClick(Sender: TObject);
begin

    Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    try

      oldPath:=Create_InIFile.ReadString('database','path',oldPath);

      if FileExists(pchar(oldPath)) then
      begin
        BBU.Enabled:=False;
        inf:='backup';
        if not DirectoryExists(pchar('backup')) then CreateDir(pchar('backup'));
        CopyFileP(pchar(oldPath),pchar('backup\backup_db'+FormatDateTime('ddMMyy_hhmmss' ,Now)+'.accdb'));
      end
      else ShowMessage('Database tidak ditemukan !');

  finally
    Create_InIFile.Free
  end;
end;

procedure TfrAdvance.b_resClick(Sender: TObject);
begin
    Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    try
      oldPath:=Create_InIFile.ReadString('database','path',oldPath);

      if odlg_DBOption.Execute=true then
      begin
      NewPath:=odlg_DBOption.FileName;
         if oldPath=NewPath then
         begin
          ShowMessage('Database tersebut sedang digunakan oleh aplikasi !');
          exit
         end;
        NewPath:=odlg_DBOption.FileName;
        dm.AdoConn.Connected:=False;
        DeleteFile(pchar(oldPath));
        b_res.Enabled:=False;
         inf:='restore';
        CopyFileP(pchar(NewPath),pchar(oldPath));
        DeleteFile(pchar(NewPath));
      end;

      finally
        Create_InIFile.Free;
  end;
end;

procedure TfrAdvance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
