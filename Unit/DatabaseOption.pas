unit DatabaseOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,IniFiles;

type
  TfrDatabaseOption = class(TForm)
    tPath: TEdit;
    bBrowse: TBitBtn;
    bConnection: TButton;
    odlg_DBOption: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bBrowseClick(Sender: TObject);
    procedure bConnectionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SettingConnection;
  end;

var
  frDatabaseOption: TfrDatabaseOption;
  Create_InIFile:TIniFile;
  sPath:string;

implementation

uses DataModule,comObj, ADODB;

{$R *.dfm}
procedure TfrDatabaseOption.SettingConnection;
begin
  Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    sPath:=Create_InIFile.ReadString('database','path',sPath);
  finally
    Create_InIFile.Free
  end;
  if (not FileExists(sPath)) and (Trim(sPath)<>'') then
  begin
    ShowMessage('You most selected database !');
    exit
  end;
  With dm.AdoConn do
    begin
      try
        Connected:=False;
        {ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source='
        +sPath+';Persist Security Info=False;';}

        ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;User ID=admin;Data Source='+sPath+
                          ';Mode=Share Deny None;Persist Security Info=True;Jet OLEDB:System database="";Jet '+
                          'OLEDB:Registry Path="";Jet OLEDB:Database Password=yanwars;'+
                          'Jet OLEDB:Engine Type=6;Jet OLEDB:Database Locking Mode=0;Jet '+
                          'OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
                          'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
                          'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Compact Without Replica Repair=False;'+
                          'Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False';

        Connected:=True;
      Except
        on EOleException do
          begin
            ShowMessage('Connection Failed, please select database !');
            Connected:=False;
            frDatabaseOption.ShowModal;
          end;
    end;
end;
end;
procedure TfrDatabaseOption.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// Action:=caFree;
end;

procedure TfrDatabaseOption.bBrowseClick(Sender: TObject);
begin

    if odlg_DBOption.Execute=True then
      begin
        tPath.Text:=odlg_DBOption.FileName;
        Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
        try
          Create_InIFile.WriteString('database','Path',odlg_DBOption.FileName);
        finally
          Create_InIFile.Free;
        end; // try
      end;
end;

procedure TfrDatabaseOption.bConnectionClick(Sender: TObject);
begin
  if FileExists(odlg_DBOption.FileName) then
    begin
     SettingConnection;
     Close;
    end;
end;

procedure TfrDatabaseOption.FormCreate(Sender: TObject);
begin
  Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    sPath:=Create_InIFile.ReadString('database','path',sPath);
    tPath.Text:=sPath;
  finally
    Create_InIFile.Free
  end;
end;

end.
