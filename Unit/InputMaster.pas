unit InputMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrInputMaster = class(TForm)
    PageControl1: TPageControl;
    TabSeles: TTabSheet;
    TabAdvertiser: TTabSheet;
    TabAdvertisment: TTabSheet;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    tRegNo: TEdit;
    tName_Sls: TEdit;
    tTelp: TEdit;
    tEmail: TEdit;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bSave: TSpeedButton;
    bAdd: TSpeedButton;
    GroupBox3: TGroupBox;
    tTarif_Adv: TEdit;
    Label17: TLabel;
    tTinggi_Adv: TEdit;
    tJml_Adv: TEdit;
    Label16: TLabel;
    Label14: TLabel;
    rbBW_Adv: TRadioButton;
    rbFc_Adv: TRadioButton;
    tKd_adv: TEdit;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    tJns_Adv: TEdit;
    lblInfo: TLabel;
    tAddress_Sls: TMemo;
    tAddress_Adsr: TMemo;
    tType_Adsr: TComboBox;
    tName_Adsr: TEdit;
    tTelp_Adsr: TEdit;
    tNoID_Adsr: TEdit;
    tPosition_Adsr: TEdit;
    Label12: TLabel;
    tEmail_Adsr: TEdit;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure tJml_AdvKeyPress(Sender: TObject; var Key: Char);
    procedure tTinggi_AdvKeyPress(Sender: TObject; var Key: Char);
    procedure tTarif_AdvKeyPress(Sender: TObject; var Key: Char);
    procedure tAddress_SlsKeyPress(Sender: TObject; var Key: Char);
    procedure tAddress_AdsrKeyPress(Sender: TObject; var Key: Char);
    procedure tType_AdsrEnter(Sender: TObject);
    procedure tJml_AdvChange(Sender: TObject);
    procedure tTarif_AdvChange(Sender: TObject);
    procedure tTinggi_AdvChange(Sender: TObject);
    procedure tTelp_AdsrKeyPress(Sender: TObject; var Key: Char);
    procedure tTelpKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Clear_text;
    procedure input_sales;
    procedure input_advertiser;
    Procedure Input_Advertisment;

    procedure Save_sales;
    procedure Save_advertiser;
    Procedure Save_advertisment;

    procedure AutoNo_seles;
    procedure AutoNo_advertiser;
    procedure AutoNo_advertisment;
  public
    { Public declarations }
  end;

var
  frInputMaster: TfrInputMaster;

implementation

uses DataModule, ADODB, DB,ProcedureFunction,
  MainMenu;

{$R *.dfm}
procedure TfrInputMaster.AutoNo_advertiser;
var ikode:integer;
    skode:string;
    ithn:byte;
    ithn2:byte;
    iMonth:byte;
    sMonth:string;
begin
    sMonth:=FormatDateTime('mm',Now);
    iMonth:=StrToInt(sMonth);
   case iMonth of
    1: sMonth:='I';
    2: sMonth:='II';
    3: sMonth:='III';
    4: sMonth:='IV';
    5: sMonth:='V';
    6: sMonth:='VI';
    7: sMonth:='VII';
    8: sMonth:='VIII';
    9: sMonth:='IX';
   10: sMonth:='X';
   11: sMonth:='XI';
   12: sMonth:='XII';
   end;

   with dm.Qinput do
   begin
    SQL.Clear;
    SQL.Text:='SELECT LEFT(advertiser_ID,3) as noID, Right(advertiser_ID,2) as thn FROM advertiser ORDER BY Right(advertiser_ID,2), Left(advertiser_ID,3)';
    Open;

    if not Eof then
    begin
       Last;
       ithn:=StrToInt(FieldValues['thn']);
       ithn2:=StrToInt(FormatDateTime('yy',Now ));
       ikode:=StrToInt(FieldValues['noID'])+1;
       if ithn2 > ithn then ikode:=1;
       skode:=IntToStr(ikode);
       skode:=copy('000',1,3- length(skode))+skode;
       if ikode > 999 then
       begin
          ShowMessage('id Advertiser sudah penuh !');
          close;
       end;
       tNoID_Adsr.Text:=skode+'/CUST/DP/'+sMonth+'/'+FormatDateTime('yy',Now);
    end
    else
      tNoID_Adsr.Text:='001/CUST/DP/'+sMonth+'/'+FormatDateTime('yy',Now);
   end;
end;
procedure TfrInputMaster.AutoNo_advertisment;
var ikode:integer;
    skode:string;
begin
   with dm.Qinput do
   begin
    SQL.Clear;
    SQL.Text:='SELECT LEFT(adv_code,2) as kode FROM advertisement ORDER BY adv_code';
    Open;

    if not Eof then
    begin
       Last;
       ikode:=StrToInt(FieldValues['kode'])+1;
       skode:=IntToStr(ikode);
       if ikode > 99 then
       begin
          ShowMessage('Advertisement code already full !');
          close;
       end;
       skode:=copy('00',1,2- length(skode))+skode;
       tKd_adv.Text:=skode+'ADV';
    end
    else
      tKd_adv.Text:='01ADV';
   end;
end;
procedure TfrInputMaster.AutoNo_seles;
var ikode:integer;
    skode:string;
    iMonth:byte;
    ithn:Byte;
    ithn2:Byte;
    sMonth:string;
begin
    sMonth:=FormatDateTime('mm',Now);
    iMonth:=StrToInt(sMonth);
   case iMonth of
    1: sMonth:='I';
    2: sMonth:='II';
    3: sMonth:='III';
    4: sMonth:='IV';
    5: sMonth:='V';
    6: sMonth:='VI';
    7: sMonth:='VII';
    8: sMonth:='VIII';
    9: sMonth:='IX';
   10: sMonth:='X';
   11: sMonth:='XI';
   12: sMonth:='XII';
   end;

   with dm.Qinput do
   begin
    SQL.Clear;
    SQL.Text:='SELECT LEFT(sales_regno,2) as regno, Right(sales_regno,4) as thn  FROM sales ORDER BY Right(sales_regno,4),LEFT(sales_regno,2)';
    Open;

    if not Eof then
    begin
       Last;
       ithn:=StrToInt(FieldValues['thn']);
       ithn2:=StrToInt(FormatDateTime('yyyy',Now ));
       ikode:=StrToInt(FieldValues['regno'])+1;
       if ithn2 > ithn then ikode:=1;
       skode:=IntToStr(ikode);
       skode:=copy('00',1,2- length(skode))+skode;
       if ikode > 99 then
       begin
          ShowMessage('Sales Reg No already full !');
          close;
       end;
       tRegNo.Text:=skode+'-CR/ST/PR-DP/I/'+sMonth+'-'+FormatDateTime('yyyy',Now);
    end
    else
    tRegNo.Text:='01-CR/ST/PR-DP/I/'+sMonth+'-'+FormatDateTime('yyyy',Now);
   end;
end;

procedure TfrInputMaster.Save_advertisment;
 var sColor:string;
begin

  if rbBW_Adv.Checked=True then sColor:='BW' else sColor:='FC';

 With dm,dm.Qinput do
 begin
  SQL.Clear;

  Case check_Advt of

    1:SQL.Text:='INSERT INTO Advertisement values(:pCode,:pType,:pColor,'+
                ':pMinCol,:pMinHeight,:pBase_Price)';

    2:SQL.Text:='UPDATE Advertisement set adv_type=:pType, color_type='+
              ':pColor,min_col=:pMinCol, min_height=:pMinHeight,base_price='+
              ':pBase_Price WHERE adv_code=:pCode';

   end;

  Prepared;
    Parameters.ParamByName('pCode').Value:=tKd_adv.Text;
    Parameters.ParamByName('pType').Value:=tJns_Adv.Text;
    Parameters.ParamByName('pColor').Value:=sColor;
    Parameters.ParamByName('pMinCol').Value:=tJml_Adv.Text;
    Parameters.ParamByName('pMinHeight').Value:=tTinggi_Adv.Text;
    Parameters.ParamByName('pBase_Price').Value:=tTarif_Adv.Text;

  ExecSQL;

  if frMainMenu<> nil then frMainMenu.tSearchChange(Self);
  if check_Advt=2 then frInputMaster.Close;
end;
end;
Procedure TfrInputMaster.Input_Advertisment;
begin

  if bAdd.Tag=0 then
  begin
    check_advt:=1;
    bAdd.Tag:=1;
    AutoNo_advertisment;
    rbBW_Adv.Checked:=True;
    tJns_Adv.SetFocus;
  end
  else
  begin
    if check_Advt=2 then Close;
    bAdd.Tag:=0;
  end;
end;

procedure TfrInputMaster.Save_sales;
begin

  if Trim(tTelp.Text)='' then tTelp.Text:='-';
  if Trim(tEmail.Text)='' then tEmail.Text:='-';

 With dm,dm.Qinput do
 begin
  SQL.Clear;
  case check_sls of
    1:SQL.Text:='INSERT Into Sales values(:pNoReg,:pName,:pContact,:pEmail,:pAddress)';
    2:SQL.Text:='UPDATE Sales set sales_name=:pName,sales_contact=:pContact,sales_email=:pEmail,sales_address=:pAddress '+
                 'WHERE sales_regno=:pNoReg';
  end;

  Prepared;
    Parameters.ParamByName('pNoReg').Value:=tRegNo.Text;
    Parameters.ParamByName('pName').Value:=tName_Sls.Text;
    Parameters.ParamByName('pContact').Value:=tTelp.Text;
    Parameters.ParamByName('pEmail').Value:=tEmail.Text;
    Parameters.ParamByName('pAddress').Value:=tAddress_Sls.Text;
  ExecSQL;

  if frMainMenu<> nil then frMainMenu.tSearchChange(Self);
  if check_sls=2 then frInputMaster.Close;
 end;
end;
procedure TfrInputMaster.input_advertiser;
begin

  if bAdd.Tag=0 then
  begin
    check_adsr:=1;
    bAdd.Tag:=1;
    AutoNo_advertiser;
    tName_Adsr.SetFocus;
  end
  else
  begin
    if check_adsr=2 then Close;
    bAdd.Tag:=0;
  end;
end;
procedure TfrInputMaster.Save_advertiser;
begin
if Trim(tTelp_Adsr.Text)='' then tTelp_Adsr.Text:='-';

 With dm,dm.Qinput do
 begin
  SQL.Clear;
  case  check_adsr of
    1:SQL.Text:='INSERT Into advertiser values(:pNoID,:pName,:pORG,:pPos,:pContact,:pEmail,:pAddress)';
    2:SQL.Text:='UPDATE advertiser set advertiser_name=:pName,organization_name=:pORG,positions=:pPos,'+
                'advertiser_contact=:pContact,advertiser_email=:pEmail,advertiser_address=:pAddress '+
                'WHERE advertiser_id=:pNoID';
  end;

    Prepared;
    Parameters.ParamByName('pNoID').Value:=tNoID_Adsr.Text;
    Parameters.ParamByName('pName').Value:=tName_Adsr.Text;
    Parameters.ParamByName('pORG').Value:=tType_Adsr.Text;
    Parameters.ParamByName('pPos').Value:=tPosition_Adsr.Text;
    Parameters.ParamByName('pContact').Value:=tTelp_Adsr.Text;
    Parameters.ParamByName('pEmail').Value:=tEmail_Adsr.Text;
    Parameters.ParamByName('pAddress').Value:=tAddress_Adsr.Text;
    ExecSQL;

  if frMainMenu<> nil then frMainMenu.tSearchChange(Self);
  if check_adsr=2 then frInputMaster.Close;
 end;
end;
Procedure TfrInputMaster.input_sales;
begin

  if bAdd.Tag=0 then
  begin
    check_sls:=1;
    bAdd.Tag:=1;
    AutoNo_seles;
    tName_Sls.SetFocus;
  end
  else
  begin
    if check_sls=2 then Close;
    bAdd.Tag:=0;
  end;

end;
procedure TfrInputMaster.Clear_Text;
var i : integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TEdit then TEdit(Components[i]).Clear;
    if Components[i] is TComboBox then TComboBox(Components[i]).Clear;
    if Components[i] is TMemo then TMemo(Components[i]).Clear;
  end;
end;

procedure TfrInputMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrInputMaster.FormCreate(Sender: TObject);
begin
 Clear_Text;
 PageControl1.TabIndex:=frMainMenu.PageControl1.TabIndex;
 frInputMaster.bAdd.Tag:=1;
end;

procedure TfrInputMaster.bAddClick(Sender: TObject);
begin
Clear_Text;
 if bAdd.Tag=1 then
  begin
    GroupBox1.Enabled:=False;
    GroupBox2.Enabled:=False;
    GroupBox3.Enabled:=False;
  end
  else
  begin
    GroupBox1.Enabled:=True;
    GroupBox2.Enabled:=True;
    GroupBox3.Enabled:=True;
  end;

  case PageControl1.TabIndex of
  0:input_sales;
  1:input_advertiser;
  2:Input_Advertisment;
  end;

 case bAdd.Tag of
  0: bAdd.Caption:='Add';
  1: bAdd.Caption:='Cancel';
 end;

  case bAdd.Tag of
  0: bSave.Caption:='Close';
  1: bSave.Caption:='Save';
 end;

end;

procedure TfrInputMaster.bSaveClick(Sender: TObject);
var i : integer;
begin
  if bAdd.Tag=0 then Close
  else
  begin
    for i:=0 to ComponentCount-1 do
    begin
    if Components[i] is TEdit then
      if (TEdit(Components[i]).Tag=PageControl1.TabIndex) And
      (Trim(TEdit(Components[i]).Text)='') then
      begin
        TEdit(Components[i]).SetFocus;
        lblInfo.Caption:='anda harus mengisi isian tersebut !';
        exit;
      end;
    if Components[i] is TComboBox then
      if (TComboBox(Components[i]).Tag=PageControl1.TabIndex) And
      (Trim(TComboBox(Components[i]).Text)='') then
      begin
        TComboBox(Components[i]).SetFocus;
        lblInfo.Caption:='anda harus mengisi isian tersebut';
        exit;
      end;
    if Components[i] is TMemo then
      if (TMemo(Components[i]).Tag=PageControl1.TabIndex) And
      (Trim(TMemo(Components[i]).Text)='') then
      begin
        TMemo(Components[i]).SetFocus;
        lblInfo.Caption:='anda harus mengisi isian tersebut !';
        exit;
      end;
    end;

    if PageControl1.TabIndex=0 then
    begin
      if tEmail.Text='-' then tEmail.Text:='';
      if Trim(tEmail.Text)<>'' then
      if not EmailValidation(tEmail.Text) then
      begin
        tEmail.SetFocus;
        lblInfo.Caption:='Salah menulis email ! (contoh yang benar :email_name@domain_neme.com)';
        Exit;
      end;
    end;

    if PageControl1.TabIndex=1 then
    begin
      if tEmail_Adsr.Text='-' then tEmail_Adsr.Text:='';
      if Trim(tEmail_Adsr.Text)<>'' then
      if not EmailValidation(tEmail_Adsr.Text) then
      begin
        tEmail_Adsr.SetFocus;
        lblInfo.Caption:='Salah menulis email ! (contoh yang benar :email_name@domain_neme.com)';
        Exit;
      end;
    end;

    case PageControl1.TabIndex of
      0:Save_sales;
      1:Save_advertiser;
      2:Save_advertisment;
    end;
    bAdd.Tag:=1;
    bAddClick(Self);
  end;
end;

procedure TfrInputMaster.FormActivate(Sender: TObject);
begin
 if bAdd.Tag=1 then
 begin

  bAdd.Caption:='Cancel';
  IF PageControl1.TabIndex =0 then
  begin
    if check_sls=1 then AutoNo_seles;
    tName_Sls.SetFocus;
  end
  else if PageControl1.TabIndex = 1 then
  begin
    if check_adsr=1 then AutoNo_advertiser;
    tName_Adsr.SetFocus;
  end
  else if PageControl1.TabIndex = 2 then
  begin
    if check_Advt=1 then
    begin
      AutoNo_advertisment;
      rbBW_Adv.Checked:=True;
    end;
    tJns_Adv.SetFocus;
  end;

 end;
end;

procedure TfrInputMaster.PageControl1Change(Sender: TObject);
begin
 if bAdd.Tag=1 then
 begin

  check_sls:=0;
  check_adsr:=0;
  check_Advt:=0;

  bAddClick(Self);
  lblInfo.Caption:='Data dihapus.... !';
 end;
end;

procedure TfrInputMaster.tJml_AdvKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputMaster.tTinggi_AdvKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputMaster.tTarif_AdvKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputMaster.tAddress_SlsKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then key:=#32;
end;

procedure TfrInputMaster.tAddress_AdsrKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then key:=#32;
end;

procedure TfrInputMaster.tType_AdsrEnter(Sender: TObject);
begin

  SelectQuery('select distinct organization_name from advertiser');
  tType_Adsr.Items.Clear;
  while not dm.Qview.Eof do
  begin
    tType_Adsr.Items.Add(dm.Qview.FieldValues['organization_name']);
    dm.Qview.Next;
  end;
end;
procedure TfrInputMaster.tJml_AdvChange(Sender: TObject);
begin
 if tJml_Adv.Text='0' then tJml_Adv.Text:='1';
end;

procedure TfrInputMaster.tTarif_AdvChange(Sender: TObject);
begin
 if tTarif_Adv.Text='0' then tTarif_Adv.Text:='1';
end;

procedure TfrInputMaster.tTinggi_AdvChange(Sender: TObject);
begin
 if tTinggi_Adv.Text='0' then tTinggi_Adv.Text:='1';
end;

procedure TfrInputMaster.tTelp_AdsrKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9',#8,#13,#40,#41,#45]) then key:=#0;
end;

procedure TfrInputMaster.tTelpKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#8,#13,#40,#41,#45]) then key:=#0;
end;

procedure TfrInputMaster.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=VK_F5 then bSaveClick(self);
  IF key=VK_F4 then bAddClick(self);
  IF key=VK_Escape then Close;
end;

end.
