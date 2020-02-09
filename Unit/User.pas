unit User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrUser = class(TForm)
    PageControl1: TPageControl;
    tabInputData: TTabSheet;
    tabDataUser: TTabSheet;
    Label1: TLabel;
    bSave: TBitBtn;
    bAdd: TBitBtn;
    lvUser: TListView;
    bEdit: TBitBtn;
    bDelete: TBitBtn;
    GroupBox1: TGroupBox;
    tUserID: TEdit;
    tUsername: TEdit;
    tAccessID: TComboBox;
    tPassword: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure lvUserDblClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frUser: TfrUser;
  sSave:Byte;

implementation

uses DataModule, ProcedureFunction;

{$R *.dfm}

procedure TfrUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrUser.FormCreate(Sender: TObject);
 var no :integer;
begin

  GroupBox1.Enabled:=False;

    SelectQuery('SELECT * FROM officer');

    lvUser.Clear;
    no:=0;

    With dm.Qview,list_LV do begin
    while not Eof do begin
      no:=no+1;
      list_LV:=lvUser.Items.Add;
      Caption:=IntToStr(no);
      SubItems.Add(FieldValues['UserID']);
      SubItems.Add(FieldValues['name']);
      SubItems.Add(FieldValues['accessID']);
      SubItems.Add(FieldValues['pass']);
      Next;
    end;
  end;


end;

procedure TfrUser.bEditClick(Sender: TObject);
begin
    if lvUser.SELECTed <> nil then
      begin

        if lvUser.Selected.SubItems[2]='ADMIN' then
        begin
        MessageDlg('ADMIN cannot edit !',mtWarning,[mbOK],0);
        Exit
        end;

      PageControl1.TabIndex:=0;
      if bAdd.Caption='&Add' then bAddClick(Self);

      sSave:=2;
      tUserID.Text:=lvUser.SELECTed.SubItems[0];
      tUsername.Text:=lvUser.SELECTed.SubItems[1];
      if lvUser.SELECTed.SubItems[2]='USER' then
      tAccessID.ItemIndex:=0
      else tAccessID.ItemIndex:=1;
      
      tPassword.Text:=lvUser.SELECTed.SubItems[3];
      tUserID.ReadOnly:=True;

      tUsername.SetFocus;
     end;
end;

procedure TfrUser.bAddClick(Sender: TObject);
begin
  if bAdd.Caption='&Add' then
    begin
      sSave:=1;
       bAdd.Caption:='&Cancel';
       GroupBox1.Enabled:=True;
       tUserID.ReadOnly:=False;
       tUserID.SetFocus;
    end
  else
    begin
      bAdd.Caption:='&Add';
      OnCreate(Self);
    end;

  tUserID.Clear;
  tUsername.Clear;
  tAccessID.Text:='';
  tPassword.Clear;
  if sSave=2 then PageControl1.TabIndex:=1;

end;

procedure TfrUser.bSaveClick(Sender: TObject);
begin
  if bAdd.Caption='&Add' then exit;

  if Trim(tUserID.Text)='' then
    begin
      tUserID.SetFocus;
      Exit
    end;
  if Trim(tUsername.Text)='' then
    begin
      tUsername.SetFocus;
      Exit
    end;
  if Trim(tAccessID.Text)='' then
    begin
      tPassword.SetFocus;
      Exit
    end;
  with dm.Qview do begin
    SQL.Clear;
    if sSave=1 then
      begin
       SelectQuery('SELECT UserID FROM officer WHERE userID='+
                  QuotedStr(tUserID.Text));
       if not Eof then
        begin
          MessageDlg('UserID '+tUserID.Text+' sudah ada dalam daabase !,'+#13+
          'Entri user baru !',mtWarning,[mbOK],0);
          tUserID.Clear;
          tUserID.SetFocus;
          exit
        end;
        SQL.Clear;
        SQL.Text:='INSERT into officer values(:pUserID,:pUsername,:pAccessID,:pPassword)';
      end
    else if sSave=2 then
      begin
        SQL.Clear;
        SQL.Text:='UPDATE officer set name=:pUsername, accessID=:pAccessID, pass=:pPassword WHERE UserID=:pUserID';
        end;

    Prepared;
    Parameters.ParamByName('pUserID').Value:=tUserID.Text;
    Parameters.ParamByName('pUsername').Value:=tUsername.Text;
    Parameters.ParamByName('pAccessID').Value:=tAccessID.Text;
    Parameters.ParamByName('pPassword').Value:=tPassword.Text;

    ExecSQL;

    bAddClick(Self);
  end;

end;

procedure TfrUser.lvUserDblClick(Sender: TObject);
begin
  if lvUser.Items.Count>0 then
  begin
    bEditClick(Self);
  end;
end;

procedure TfrUser.bDeleteClick(Sender: TObject);
begin
    if lvUser.Selected <> nil then
      begin
        if lvUser.Selected.SubItems[2]='ADMIN' then
        begin
        MessageDlg('ADMIN tidak bisa dihapus !',mtWarning,[mbOK],0);
        Exit
        end;


      if MessageDlg('You sure delete UserID '+lvUser.SELECTed.SubItems[0]+' ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
            ExcuteQuery('DELETE FROM officer WHERE userID="'+lvUser.SELECTed.SubItems[0]+'"');
            frUser.OnCreate(Self);
     end;

end;

end.
