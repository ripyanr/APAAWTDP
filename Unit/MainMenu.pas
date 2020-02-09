unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, sSkinManager, StdCtrls, Buttons,
  ExtCtrls, DB, ADODB,iniFiles, frxClass, frxDBSet;
const
  InputBoxMessage = WM_USER + 200;
type
  TfrMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    sbInfo: TStatusBar;
    sSkinManager1: TsSkinManager;
    wallpaper: TImage;
    pnl_Menu: TPanel;
    Label3: TLabel;
    lblap: TLabel;
    Label5: TLabel;
    gp_Setting: TGroupBox;
    B_mTool: TBitBtn;
    grReport: TGroupBox;
    B_mRepTransaction: TBitBtn;
    B_mRepMaster: TBitBtn;
    GpUser: TGroupBox;
    B_mPass: TBitBtn;
    B_mLogout: TBitBtn;
    grTransaction: TGroupBox;
    B_mSalesCommission: TBitBtn;
    B_mAdvertising: TBitBtn;
    grMaster: TGroupBox;
    B_mSales: TBitBtn;
    B_mAdvertiser: TBitBtn;
    B_mAdvertisement: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    pnl_Login: TPanel;
    b_Login: TBitBtn;
    B_Exit: TBitBtn;
    Pnl_Master: TPanel;
    PageControl1: TPageControl;
    TabSeles: TTabSheet;
    lvSales: TListView;
    TabSheet2: TTabSheet;
    lvAdvertiser: TListView;
    TabSheet3: TTabSheet;
    lvAdvertisment: TListView;
    cbCategory: TComboBox;
    tSearch: TEdit;
    bAdd: TSpeedButton;
    bEdit: TSpeedButton;
    bBack: TSpeedButton;
    bDelete: TSpeedButton;
    tUserID: TEdit;
    tPassword: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Qlogin: TADOQuery;
    User1: TMenuItem;
    Administrator1: TMenuItem;
    ChangePassword1: TMenuItem;
    Logout1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    DataMaster1: TMenuItem;
    Advertiser1: TMenuItem;
    Sales1: TMenuItem;
    Advertisement1: TMenuItem;
    Transaction1: TMenuItem;
    Advertising1: TMenuItem;
    akingofCommission1: TMenuItem;
    Report1: TMenuItem;
    Master1: TMenuItem;
    ransaction2: TMenuItem;
    Advertising2: TMenuItem;
    akingofCommission2: TMenuItem;
    Tools1: TMenuItem;
    SettingConnection1: TMenuItem;
    Advance1: TMenuItem;
    Skin1: TMenuItem;
    Skin11: TMenuItem;
    Skin21: TMenuItem;
    Skin31: TMenuItem;
    Skin41: TMenuItem;
    Skin51: TMenuItem;
    frxLogin: TfrxDBDataset;
    ds1: TDataSource;
    lblinfo2: TLabel;
    lbl1: TLabel;
    img1: TImage;
    lbl2: TLabel;
    procedure tSearchChange(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lvAdvertismentColumnClick(Sender: TObject;
      Column: TListColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure lvAdvertiserColumnClick(Sender: TObject;
      Column: TListColumn);
    procedure lvSalesColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvSalesDblClick(Sender: TObject);
    procedure lvAdvertiserDblClick(Sender: TObject);
    procedure lvAdvertismentDblClick(Sender: TObject);
    procedure B_mSalesClick(Sender: TObject);
    procedure B_mAdvertiserClick(Sender: TObject);
    procedure B_mAdvertisementClick(Sender: TObject);
    procedure B_mAdvertisingClick(Sender: TObject);
    procedure b_LoginClick(Sender: TObject);
    procedure bBackClick(Sender: TObject);
    procedure B_ExitClick(Sender: TObject);
    procedure B_mLogoutClick(Sender: TObject);
    procedure tUserIDKeyPress(Sender: TObject; var Key: Char);
    procedure tPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure B_mSalesCommissionClick(Sender: TObject);
    procedure B_mRepMasterClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure SettingConnection1Click(Sender: TObject);
    procedure B_mRepTransactionClick(Sender: TObject);
    procedure Skin11Click(Sender: TObject);
    procedure Skin21Click(Sender: TObject);
    procedure Skin31Click(Sender: TObject);
    procedure Skin41Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Skin51Click(Sender: TObject);
    procedure B_mPassClick(Sender: TObject);
    procedure Advance1Click(Sender: TObject);
    procedure Administrator1Click(Sender: TObject);
    procedure Master1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChangePassword1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure Advertiser1Click(Sender: TObject);
    procedure Sales1Click(Sender: TObject);
    procedure Advertisement1Click(Sender: TObject);
    procedure Advertising1Click(Sender: TObject);
    procedure akingofCommission1Click(Sender: TObject);
    procedure Advertising2Click(Sender: TObject);
    procedure akingofCommission2Click(Sender: TObject);
    procedure B_mToolClick(Sender: TObject);
  private
    { Private declarations }

    procedure view_sales;
    procedure view_advertiser;
    procedure View_Advertisment;
    procedure view_Category;
    procedure edit_sales;
    procedure edit_advertiser;
    procedure edit_advertisment;
    procedure first_condition;
    procedure second_condition;
    procedure selectSkin;
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
  public
    { Public declarations }
  end;

var
  frMainMenu: TfrMainMenu;
  skn:String;
  skn1,skn2,skn3,skn4:Boolean;
  Create_InIFile:TIniFile;
implementation

uses  DatabaseOption, User,InputMaster, ProcedureFunction, DataModule, AdvertisingTrans,
  ReportMaster, MonthlyReport, Backup;

{$R *.dfm}
// start of my procedure------------------------------------------------
procedure TfrMainMenu.selectSkin;
begin
  Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
try
  if Skin11.Checked=True then
    begin
      Create_InIFile.WriteString('skin','SkinName','Office2010 Blue');
      Create_InIFile.WriteInteger('skin','option1',1);
      Create_InIFile.WriteInteger('skin','option2',0);
      Create_InIFile.WriteInteger('skin','option3',0);
      Create_InIFile.WriteInteger('skin','option4',0);
      Create_InIFile.WriteInteger('skin','option5',0);
      Create_InIFile.WriteInteger('skin','active',1);
    end;
  if Skin21.Checked=True then
    begin
      Create_InIFile.WriteString('skin','SkinName','Office2007 Black');
      Create_InIFile.WriteInteger('skin','option1',0);
      Create_InIFile.WriteInteger('skin','option2',1);
      Create_InIFile.WriteInteger('skin','option3',0);
      Create_InIFile.WriteInteger('skin','option4',0);
      Create_InIFile.WriteInteger('skin','option5',0);
      Create_InIFile.WriteInteger('skin','active',1);
    end;
 if Skin31.Checked=True then
    begin
      Create_InIFile.WriteString('skin','SkinName','Neutral4');
      Create_InIFile.WriteInteger('skin','option1',0);
      Create_InIFile.WriteInteger('skin','option2',0);
      Create_InIFile.WriteInteger('skin','option3',1);
      Create_InIFile.WriteInteger('skin','option4',0);
      Create_InIFile.WriteInteger('skin','option5',0);
      Create_InIFile.WriteInteger('skin','active',1);
    end;
if Skin41.Checked=True then
    begin
      Create_InIFile.WriteString('skin','SkinName','WLM');
      Create_InIFile.WriteInteger('skin','option1',0);
      Create_InIFile.WriteInteger('skin','option2',0);
      Create_InIFile.WriteInteger('skin','option3',0);
      Create_InIFile.WriteInteger('skin','option4',1);
      Create_InIFile.WriteInteger('skin','option5',0);
      Create_InIFile.WriteInteger('skin','active',1);
    end;
  if Skin51.Checked=True then
    begin
      Create_InIFile.WriteString('skin','SkinName','');
      Create_InIFile.WriteInteger('skin','option1',0);
      Create_InIFile.WriteInteger('skin','option2',0);
      Create_InIFile.WriteInteger('skin','option3',0);
      Create_InIFile.WriteInteger('skin','option4',0);
      Create_InIFile.WriteInteger('skin','option5',1);
      Create_InIFile.WriteInteger('skin','active',0);
    end;

  finally
    Create_InIFile.Free
  end; // end for try
end;

procedure TfrMainMenu.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    {
      // Change button text:
      hButton := FindWindowEx(hInputForm, 0, 'TButton', nil);
      SendMessage(hButton, WM_SETTEXT, 0, Integer(PChar('Cancel')));
    }
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure TfrMainMenu.edit_sales;
begin
 If lvSales.SELECTed<>nil then
  begin
    Application.CreateForm(TfrInputMaster,frInputMaster);
    check_sls:=2;
    with frInputMaster, lvSales.SELECTed do
    begin
      tRegNo.Text:=Caption;
      tName_Sls.Text:=SubItems.Strings[0];
      tTelp.Text:=SubItems.Strings[1];
      tEmail.Text:=SubItems.Strings[2];
      tAddress_Sls.Text:=SubItems.Strings[3];
      bAdd.Tag:=1;
    end;
    frInputMaster.ShowModal;
  end;
end;
procedure TfrMainMenu.edit_advertiser;
begin
  If lvAdvertiser.SELECTed<>nil then
  begin
    check_adsr:=2;
    Application.CreateForm(TfrInputMaster,frInputMaster);
    with frInputMaster, lvAdvertiser.SELECTed do
    begin
      tNoID_Adsr.Text:=Caption;
      tName_Adsr.Text:=SubItems.Strings[0];
      tType_Adsr.Text:=SubItems.Strings[1];
      tPosition_Adsr.Text:=SubItems.Strings[2];
      tTelp_Adsr.Text:=SubItems.Strings[3];
      tEmail_Adsr.Text:=SubItems.Strings[4];
      tAddress_Adsr.Text:=SubItems.Strings[5];
    end;
    frInputMaster.ShowModal;
  end;
end;
procedure TfrMainMenu.edit_advertisment;
begin
If lvAdvertisment.SELECTed<>nil then
begin
    Application.CreateForm(TfrInputMaster,frInputMaster);
    check_Advt:=2;
    with frInputMaster, lvAdvertisment.SELECTed do
    begin
      tKd_adv.Text:=Caption;
      tJns_Adv.Text:=SubItems.Strings[0];

      if SubItems.Strings[1]='Full Color' then
        rbFc_Adv.Checked:=True
      else
        rbBW_Adv.Checked:=True;

      tJml_Adv.Text:=SubItems.Strings[2];
      tTinggi_Adv.Text:=SubItems.Strings[3];
      tTarif_Adv.Text:=SubItems.Strings[4];
      
    end;
    frInputMaster.ShowModal;
  end;
end;
procedure TfrMainMenu.view_Category;
begin

  with cbCategory do
  begin
    Clear;

      if PageControl1.TabIndex=0 then
      begin
        Items.Add('Registration Number');
        Items.Add('Sales Name');
        Items.Add('Sales Contact');
        Items.Add('Sales Email');
        Items.Add('Sales Address');
      end
      else if PageControl1.TabIndex=1 then
      begin
        Items.Add('Advertiser No Identity');
        Items.Add('Advertiser Name');
        Items.Add('Organization');
        Items.Add('Position');
        Items.Add('Advertiser Contact');
        Items.Add('Advertiser Email');
        Items.Add('Advertiser Address');
      end
      else if PageControl1.TabIndex=2 then
      begin
        Items.Add('Advertisement Code');
        Items.Add('Advertisement Type');
        Items.Add('Color Type (BW=Black White or FC=Full Color)');
        Items.Add('Base Price');
      end;

    ItemIndex:=0;
  end;

end;
procedure TfrMainMenu.view_sales;
begin

  case  cbCategory.ItemIndex of
  0:sCategory:='sales_regno';
  1:sCategory:='sales_name';
  2:sCategory:='Sales_contact';
  3:sCategory:='Sales_email';
  4:sCategory:='sales_address';
  else exit;
  end;

    SelectQuery('SELECT * FROM sales WHERE '+sCategory+' LIKE ' +
    QuotedStr(Trim(tSearch.Text)+'%'));

    lvSales.Clear;
    with dm.Qview,list_LV do
    begin
      while not Eof do
      begin
        list_LV:=lvSales.Items.Add;
        Caption:=FieldValues['sales_regno'];
        SubItems.Add(FieldValues['sales_name']);
        SubItems.Add(FieldValues['sales_contact']);
        SubItems.Add(FieldValues['sales_email']);
        SubItems.Add(FieldValues['sales_address']);
        Next;
      end;
    end;
end;

procedure TfrMainMenu.view_advertiser;
begin

  Case cbCategory.ItemIndex Of
    0:sCategory:='advertiser_id';
    1:sCategory:='advertiser_name';
    2:sCategory:='organization_name';
    3:sCategory:='positions';
    4:sCategory:='advertiser_contact';
    5:sCategory:='advertiser_email';
    6:sCategory:='advertiser_address';
  else exit;
  end;


    SelectQuery('SELECT * FROM advertiser WHERE '+sCategory+' LIKE ' +
              QuotedStr(Trim(tSearch.Text)+'%')) ;

    lvAdvertiser.Clear;
    with dm.Qview,list_LV do
    begin
      while not Eof do
      begin
        list_LV:=lvAdvertiser.Items.Add;
        Caption:=FieldValues['advertiser_id'];
        SubItems.Add(FieldValues['advertiser_name']);
        SubItems.Add(FieldValues['organization_name']);
        SubItems.Add(FieldValues['positions']);
        SubItems.Add(FieldValues['advertiser_contact']);
        if FieldByName('advertiser_email').AsString<>'' then
          SubItems.Add(FieldValues['advertiser_email'])
        else SubItems.Add('') ;
        if FieldByName('advertiser_address').AsString<>'' then
          SubItems.Add( FieldValues['advertiser_address'])
        else SubItems.Add('') ;;
        Next;
      end;
    end;

end;

procedure TfrMainMenu.View_Advertisment;
begin

  Case cbCategory.ItemIndex Of
    0:sCategory:='adv_code';
    1:sCategory:='adv_type';
    2:sCategory:='color_type';
    3:sCategory:='base_price';
  else exit;
  end;

  SelectQuery('SELECT * FROM advertisement WHERE '+sCategory+' LIKE ' +
  QuotedStr(Trim(tSearch.Text)+'%')) ;

  lvAdvertisment.Clear;
  with dm.Qview,list_LV do
  begin
    While not Eof do
    begin
      list_LV:=lvAdvertisment.Items.Add;
      Caption:=FieldValues['adv_code'];
      SubItems.Add(FieldValues['adv_type']);
      if FieldValues['color_type']='BW' then
        SubItems.Add('Black White') else
          SubItems.Add('Full Color');
      SubItems.Add(FieldValues['min_col']);
      SubItems.Add(FieldValues['min_height']);
      SubItems.Add(FieldValues['base_price']);
      Next;
    end;

  end;
end;

Procedure TfrMainMenu.first_condition;
begin
  pnl_Menu.Enabled:=False;
  pnl_Login.Visible:=True;
  Pnl_Master.Visible:=False;
  Label2.Visible:=False;
  GpUser.Visible:=False;
  sbInfo.Visible:=False;
  wallpaper.Visible:=True;

  User1.Visible:=False;
  DataMaster1.Visible:=False;
  Transaction1.Visible:=False;
  Report1.Visible:=False;
  Tools1.Visible:=False;

end;

Procedure TfrMainMenu.second_condition;
begin
  pnl_Menu.Enabled:=True;
  pnl_Login.Visible:=False;
  Label2.Visible:=True;
  GpUser.Visible:=True;
  sbInfo.Visible:=True;

  User1.Visible:=True;
  DataMaster1.Visible:=True;
  Transaction1.Visible:=True;
  Report1.Visible:=True;
  Tools1.Visible:=True;

  if sbInfo.Panels[5].Text<>'ADMIN' then
  begin
    Administrator1.Enabled:=False;
    B_mTool.Enabled:=False;
    Advance1.Enabled:=False;
    if sbInfo.Panels[5].Text<>'USER' then
    begin
      Transaction1.Enabled:=False;
      Report1.Enabled:=False;
      Tools1.Enabled:=False;
      User1.Enabled:=False;
      B_mRepMaster.Enabled:=False;
      B_mRepTransaction.Enabled:=False;
      B_mSalesCommission.Enabled:=False;
      B_mAdvertising.Enabled:=False;
    end;
  end;

  if sbInfo.Panels[5].Text<>'GUEST' then
  begin
      Transaction1.Enabled:=True;
      Report1.Enabled:=True;
      Tools1.Enabled:=True;
      User1.Enabled:=True;
      B_mRepMaster.Enabled:=True;
      B_mRepTransaction.Enabled:=True;
      B_mSalesCommission.Enabled:=True;
      B_mAdvertising.Enabled:=True;

      if sbInfo.Panels[5].Text='ADMIN' then
      begin
        Administrator1.Enabled:=True;
        B_mTool.Enabled:=True;
        Advance1.Enabled:=True;
      end;
  end;

  end;


// end of my procedure--------------------------------------------------

procedure TfrMainMenu.tSearchChange(Sender: TObject);
begin
    case  PageControl1.TabIndex Of
      0:view_sales;
      1:view_advertiser;
      2:View_Advertisment;
    else exit;
    end;

    case  PageControl1.TabIndex Of
     0:lblinfo2.Caption:='Records Count = '+IntToStr(lvSales.Items.Count)+' record';
     1:lblinfo2.Caption:='Records Count = '+IntToStr(lvAdvertiser.Items.Count)+' record';
     2:lblinfo2.Caption:='Records Count = '+IntToStr(lvAdvertisment.Items.Count)+' record';
    else exit;
    end;

end;

procedure TfrMainMenu.bDeleteClick(Sender: TObject);
var listAktif:TListView;
    data:string;
begin

if sbInfo.Panels[5].Text='GUEST' then
begin
  MessageDlg('Guest don`t have access for delete !',mtWarning,[mbOK],0);
  Exit
end;



 case PageControl1.TabIndex of
  0:listAktif:=lvSales;
  1:listAktif:=lvAdvertiser;
  else listAktif:=lvAdvertisment;
 end;

 if listAktif.Selected <> nil then
 begin
   case PageControl1.TabIndex of
    0:data:='SELECT * FROM sales_commission WHERE sales_regno="'+lvSales.Selected.Caption+'"';
    1:data:='SELECT * FROM Advertising_Transaction WHERE advertiser_id="'+lvAdvertiser.Selected.Caption+'"';
    2:data:='SELECT * FROM detail_advertising_trans WHERE adv_code="'+lvAdvertisment.Selected.Caption+'"';
  end;
   SelectQuery(data);
  if not dm.Qview.Eof then
  begin
    MessageDlg('Cannot delete '+ listAktif.Selected.Caption +' because used in other process !',mtWarning,[mbOK],0);
    Exit;
  end;

 end;


 if listAktif.Selected <> nil then
 begin
  case PageControl1.TabIndex of
    0:data:='DELETE FROM sales WHERE sales_regno="'+lvSales.Selected.Caption+'"';
    1:data:='DELETE FROM Advertiser WHERE advertiser_id="'+lvAdvertiser.Selected.Caption+'"';
    2:data:='DELETE FROM advertisement WHERE adv_code="'+lvAdvertisment.Selected.Caption+'"';
  end;
  if MessageDlg('You sure delete '+ listAktif.Selected.Caption +' ?',mtWarning,[mbYes,mbNo],0)=mrYes then
  begin
    ExcuteQuery(data);
    tSearchChange(Self);
  end;
 end;

end;

procedure TfrMainMenu.bEditClick(Sender: TObject);
begin
  if sbInfo.Panels[5].Text='GUEST' then
begin
  MessageDlg('Guest don`t have access for edit !',mtWarning,[mbOK],0);
  Exit
end;

 case PageControl1.TabIndex of
  0:edit_sales;
  1:edit_advertiser;
  2:edit_advertisment;
 end;
end;

procedure TfrMainMenu.bAddClick(Sender: TObject);
begin

  if sbInfo.Panels[5].Text='GUEST' then
  begin
    MessageDlg('Guest don`t have access for Add !',mtWarning,[mbOK],0);
    Exit
  end;

    case PageControl1.TabIndex of
      0:check_sls:=1;
      1:check_adsr:=1;
      2:check_Advt:=1;
    end;

 Application.CreateForm(TfrInputMaster,frInputMaster);
 frInputMaster.ShowModal;
end;

procedure TfrMainMenu.FormCreate(Sender: TObject);
begin
try
  frDatabaseOption.SettingConnection;
except
  ShowMessage('Connection filed ,Check database setting !');

end; //try
  first_condition;
  LastSortedColomn:=-1;
  Ascending:=True;
  WindowState:=wsMaximized;

  skn1:=true;
  skn2:=false;
  skn3:=false;
  skn4:=false;
  skn4:=false;

  sSkinManager1.SkinDirectory:=ExtractFilePath(Application.ExeName)+'/skins';
  sSkinManager1.Active:=True;
  //ini file
  Create_InIFile:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));

  try
    sSkinManager1.Active:=Create_InIFile.ReadBool('Skin','aktif',skn1);
    sSkinManager1.SkinName:=Create_InIFile.ReadString('Skin','SkinName',skn);


    //skin
    Skin11.Checked:=Create_InIFile.ReadBool('Skin','option1',skn1);
    Skin21.Checked:=Create_InIFile.ReadBool('Skin','option2',skn2);
    Skin31.Checked:=Create_InIFile.ReadBool('Skin','option3',skn3);
    Skin41.Checked:=Create_InIFile.ReadBool('Skin','option4',skn3);
    Skin51.Checked:=Create_InIFile.ReadBool('Skin','option5',skn3);
    //---------------------------------------------------------

    finally
      Create_InIFile.Free;
  end;//try
end;


procedure TfrMainMenu.lvAdvertismentColumnClick(Sender: TObject;
  Column: TListColumn);
begin
if Column.Index=LastSortedColomn then
  Ascending:=not Ascending
else
  LastSortedColomn:=Column.Index;
  TListView(Sender).CustomSort(@SortByColomn, Column.Index);
end;

procedure TfrMainMenu.PageControl1Change(Sender: TObject);
begin
  view_Category;
  tSearchChange(Self);
end;

procedure TfrMainMenu.lvAdvertiserColumnClick(Sender: TObject;
  Column: TListColumn);
begin
if Column.Index=LastSortedColomn then
  Ascending:=not Ascending
else
  LastSortedColomn:=Column.Index;
  TListView(Sender).CustomSort(@SortByColomn, Column.Index);
end;

procedure TfrMainMenu.lvSalesColumnClick(Sender: TObject;
  Column: TListColumn);
begin
if Column.Index=LastSortedColomn then
  Ascending:=not Ascending
else
  LastSortedColomn:=Column.Index;
  TListView(Sender).CustomSort(@SortByColomn, Column.Index);
end;

procedure TfrMainMenu.lvSalesDblClick(Sender: TObject);
begin
 bEditClick(Self);
end;

procedure TfrMainMenu.lvAdvertiserDblClick(Sender: TObject);
begin
 bEditClick(Self);
end;

procedure TfrMainMenu.lvAdvertismentDblClick(Sender: TObject);
begin
 bEditClick(Self);
end;

procedure TfrMainMenu.B_mSalesClick(Sender: TObject);
begin
   Pnl_Master.Visible:=True;
   PageControl1.TabIndex:=0;
   PageControl1Change(Self);
   wallpaper.Visible:=False;
end;

procedure TfrMainMenu.B_mAdvertiserClick(Sender: TObject);
begin
    Pnl_Master.Visible:=True;
    PageControl1.TabIndex:=1;
    PageControl1Change(Self);
    wallpaper.Visible:=False;
end;

procedure TfrMainMenu.B_mAdvertisementClick(Sender: TObject);
begin
    Pnl_Master.Visible:=True;
    PageControl1.TabIndex:=2;
    PageControl1Change(Self);
    wallpaper.Visible:=False;
end;

procedure TfrMainMenu.B_mAdvertisingClick(Sender: TObject);
begin
 Application.CreateForm(TfrAdvertisingTrans,frAdvertisingTrans);
 frAdvertisingTrans.PageControl1.TabIndex:=0;
 frAdvertisingTrans.ShowModal;
end;

procedure TfrMainMenu.b_LoginClick(Sender: TObject);
begin
//----------------------------- Validasi ---------------------------------
   if Trim(tUserID.Text)='' then
    begin
      tUserID.SetFocus;
      exit
    end;
    if Trim(tPassword.Text)='' then
    begin
      tPassword.SetFocus;
      exit
    end;
    if dm.AdoConn.Connected=False then
    begin
    frDatabaseOption.ShowModal;
    exit;
  end;

  Qlogin.SQL.Clear;
  Qlogin.SQL.Text:='SELECT * FROM officer WHERE UserID='+QuotedStr(tUserID.Text)+
                   ' And pass='+QuotedStr(tPassword.Text);
  Qlogin.Open;
  if Qlogin.Eof then
    begin
      MessageDlg('Sorry Combination UserID with Password is wrong',mtWarning,[mbOK],0);
      tUserID.Clear;
      tPassword.Clear;
      tUserID.SetFocus;
      exit
    end;

  //----------------------------------------------------------------------------

  dm.sUserID:=Qlogin.FieldValues['UserID'];
  dm.sUsername:=Qlogin.FieldValues['name'];
  dm.sAccessLevel:=Qlogin.FieldValues['accessID'];


  with frMainMenu.sbInfo do begin
    Panels[1].Text:=dm.sUserID;
    Panels[3].Text:=dm.sUsername;
    Panels[5].Text:=dm.sAccessLevel;
    Panels[7].Text:=FormatDateTime('dd/mm/yyyy HH:MM:SS',Now);
  end;

  tUserID.Clear;
  tPassword.Clear;
  second_condition;
  B_mSales.SetFocus;

end;

procedure TfrMainMenu.bBackClick(Sender: TObject);
begin
Pnl_Master.Visible:=False;
wallpaper.Visible:=true;
end;

procedure TfrMainMenu.B_ExitClick(Sender: TObject);
begin
  selectSkin;
  Application.Terminate;
end;

procedure TfrMainMenu.B_mLogoutClick(Sender: TObject);
begin
  first_condition;
end;

procedure TfrMainMenu.tUserIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then tPassword.SetFocus;
end;

procedure TfrMainMenu.tPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then b_LoginClick(Self);
end;

procedure TfrMainMenu.B_mSalesCommissionClick(Sender: TObject);
begin
 Application.CreateForm(TfrAdvertisingTrans,frAdvertisingTrans);
 frAdvertisingTrans.PageControl1.TabIndex:=2;
 frAdvertisingTrans.tSearch2Change(Self);
 frAdvertisingTrans.ShowModal;
end;

procedure TfrMainMenu.B_mRepMasterClick(Sender: TObject);
begin
 Application.CreateForm(TfrReportMaster,frReportMaster);
 frReportMaster.ShowModal;
end;

procedure TfrMainMenu.Exit1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TfrMainMenu.SettingConnection1Click(Sender: TObject);
begin
  //Application.CreateForm(TfrPilihDatabase,frPilihDatabase);
  frDatabaseOption.ShowModal;
end;

procedure TfrMainMenu.B_mRepTransactionClick(Sender: TObject);
begin
 Application.CreateForm(TfrMonthReport,frMonthReport);
 frMonthReport.ShowModal;
end;

procedure TfrMainMenu.Skin11Click(Sender: TObject);
begin
if sSkinManager1.Active=false then
begin
  sSkinManager1.SkinName:='Office2010 Blue';
  sSkinManager1.Active:=True;
  frMainMenu.Hide;
  frMainMenu.Show;
end
else sSkinManager1.SkinName:='Office2010 Blue';

  Skin11.Checked:=true;
  Skin21.Checked:=false;
  Skin31.Checked:=false;
  Skin41.Checked:=false;
  Skin51.Checked:=false;

end;

procedure TfrMainMenu.Skin21Click(Sender: TObject);
begin
if sSkinManager1.Active=false then
begin
  sSkinManager1.SkinName:='Office2007 Black';
  sSkinManager1.Active:=True;
  frMainMenu.Hide;
  frMainMenu.Show;
end
else sSkinManager1.SkinName:='Office2007 Black';

  Skin11.Checked:=false;
  Skin21.Checked:=True;
  Skin31.Checked:=false;
  Skin41.Checked:=false;
  Skin51.Checked:=false;

end;



procedure TfrMainMenu.Skin31Click(Sender: TObject);
begin
if sSkinManager1.Active=false then
begin
  sSkinManager1.SkinName:='Neutral4';
  sSkinManager1.Active:=True;
  frMainMenu.Hide;
  frMainMenu.Show;
end
else sSkinManager1.SkinName:='Neutral4';

  Skin11.Checked:=false;
  Skin21.Checked:=false;
  Skin31.Checked:=true;
  Skin41.Checked:=false;
  Skin51.Checked:=false;
end;

procedure TfrMainMenu.Skin41Click(Sender: TObject);
begin
if sSkinManager1.Active=false then
begin
  sSkinManager1.SkinName:='WLM';
  sSkinManager1.Active:=True;
  frMainMenu.Hide;
  frMainMenu.Show;
end
else sSkinManager1.SkinName:='WLM';

  Skin11.Checked:=false;
  Skin21.Checked:=false;
  Skin31.Checked:=false;
  Skin41.Checked:=true;
  Skin51.Checked:=false;
end;

procedure TfrMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 selectSkin;
end;

procedure TfrMainMenu.Skin51Click(Sender: TObject);
begin

  Skin11.Checked:=false;
  Skin21.Checked:=false;
  Skin31.Checked:=false;
  Skin41.Checked:=false;
  Skin51.Checked:=true;
  sSkinManager1.SkinRemoving:=true;
  sSkinManager1.Active:=False;

end;

procedure TfrMainMenu.B_mPassClick(Sender: TObject);
var sOldPass, sNewPass:string;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  sOldPass := InputBox('Change Password', 'Please Enter a Old Password', '');
  SelectQuery('Select pass from officer where userID="'+sbInfo.Panels[1].Text + '" And Pass="'+sOldPass+'"');
  if dm.Qview.RecordCount=1 then
  begin
    PostMessage(Handle, InputBoxMessage, 0, 0);
    sNewPass := InputBox('Change Password', 'Please Enter a New Password', '');

    if Length(sNewPass)>30 then
      ShowMessage('Then Passsword character too long !!!')
    else
      begin
      excuteQuery('Update officer set pass='+QuotedStr(sNewPass)+' where userID="'+sbInfo.Panels[1].Text+'"');
      ShowMessage('Password changed !');
      end;
   end
   else
    ShowMessage('Old Password is Wrong !')


end;

procedure TfrMainMenu.Advance1Click(Sender: TObject);
begin
  Application.CreateForm(TfrAdvance,frAdvance);
  frAdvance.ShowModal;
end;

procedure TfrMainMenu.Administrator1Click(Sender: TObject);
begin
  Application.CreateForm(TfrUser,frUser);
  frUser.ShowModal;
end;

procedure TfrMainMenu.Master1Click(Sender: TObject);
begin
 B_mRepMasterClick(Self);
end;

procedure TfrMainMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=VK_F1 then bAddClick(self);
  IF key=VK_F2 then bEditClick(self);
  IF key=VK_F3 then bDeleteClick(self);
  IF key=VK_Escape then Exit1Click(self);
end;

procedure TfrMainMenu.ChangePassword1Click(Sender: TObject);
begin
 B_mPassClick(Self);
end;

procedure TfrMainMenu.Logout1Click(Sender: TObject);
begin
 B_mLogoutClick(Self);
end;

procedure TfrMainMenu.Advertiser1Click(Sender: TObject);
begin
 B_mAdvertiserClick(Self);
end;

procedure TfrMainMenu.Sales1Click(Sender: TObject);
begin
 B_mSalesClick(Self);
end;

procedure TfrMainMenu.Advertisement1Click(Sender: TObject);
begin
 B_mAdvertisementClick(Self);
end;

procedure TfrMainMenu.Advertising1Click(Sender: TObject);
begin
 B_mAdvertisingClick(Self);
end;

procedure TfrMainMenu.akingofCommission1Click(Sender: TObject);
begin
  B_mSalesCommissionClick(Self);
end;

procedure TfrMainMenu.Advertising2Click(Sender: TObject);
begin
 Application.CreateForm(TfrMonthReport,frMonthReport);
 frMonthReport.RgOption.ItemIndex:=0;
 frMonthReport.RgOption.Enabled:=False;
 frMonthReport.ShowModal;
end;

procedure TfrMainMenu.akingofCommission2Click(Sender: TObject);
begin
 Application.CreateForm(TfrMonthReport,frMonthReport);
 frMonthReport.RgOption.ItemIndex:=1;
 frMonthReport.RgOption.Enabled:=False;
 frMonthReport.ShowModal;
end;

procedure TfrMainMenu.B_mToolClick(Sender: TObject);
begin
  Application.CreateForm(TfrAdvance,frAdvance);
  frAdvance.ShowModal;
end;

end.
