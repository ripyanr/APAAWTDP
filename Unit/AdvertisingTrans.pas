unit AdvertisingTrans;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrAdvertisingTrans = class(TForm)
    PageControl1: TPageControl;
    TabAdversiting_Trans: TTabSheet;
    TabDataTransaction: TTabSheet;
    bAdd: TSpeedButton;
    bSave: TSpeedButton;
    pnlTrans: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtDate_Trans: TDateTimePicker;
    tNo_Trans: TEdit;
    pnlSales: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblReg_No: TLabel;
    lblName_Sls: TLabel;
    tFind_Sls: TEdit;
    LvFind: TListView;
    pnlAdsr: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblNo_Id: TLabel;
    lblName_Adsr: TLabel;
    pnlAdvt: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    lblKode: TLabel;
    lblType_Advt: TLabel;
    pnlEdition: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    tHeight: TEdit;
    tFirstPost: TEdit;
    tLastColumn: TEdit;
    tFirstColumn: TEdit;
    tPage: TEdit;
    tEdition: TEdit;
    pnlPrice: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    tSelling_Price: TEdit;
    tTot_Price: TEdit;
    tDisc: TEdit;
    tNominal_Disc: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    tFind_Adsr: TEdit;
    tFind_Advt: TEdit;
    bClose: TSpeedButton;
    bReset: TSpeedButton;
    lbNextEditionCount: TLabel;
    tNext_EdCount: TEdit;
    bINSERT: TBitBtn;
    Label24: TLabel;
    tWage: TEdit;
    lblPercent_wage: TLabel;
    Bevel3: TBevel;
    pnlBG: TPanel;
    shpAdvt_new: TShape;
    pnlDetail: TPanel;
    tTotal_Pay: TMemo;
    Label21: TLabel;
    lvDetail: TListView;
    bClear: TSpeedButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    Label25: TLabel;
    Label26: TLabel;
    lblOrganization: TLabel;
    lblPosition: TLabel;
    Shape1: TShape;
    Label27: TLabel;
    lblcd: TLabel;
    tContent: TMemo;
    Label10: TLabel;
    lbl_Color: TLabel;
    lvAdvertising: TListView;
    tSearch: TEdit;
    cbCategory: TComboBox;
    Panel1: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Panel2: TPanel;
    rb_Filter_by_D: TRadioButton;
    Rb_Filter_by_E: TRadioButton;
    tFilter_Edition: TEdit;
    dtFilter1: TDateTimePicker;
    dtFilter2: TDateTimePicker;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    rb_DisbleFilter: TRadioButton;
    Label32: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    lbl_Adv_No: TLabel;
    lbl_Adv_ID: TLabel;
    lbl_Adv_Name: TLabel;
    lbl_Regno: TLabel;
    lbl_sls_name: TLabel;
    lbl_Commission: TLabel;
    lbl_PayTot: TLabel;
    Label40: TLabel;
    Label38: TLabel;
    lbl_date_trans: TLabel;
    TabCommission: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    lvCommission: TListView;
    lvCommission_detail: TListView;
    grMakingCommission: TGroupBox;
    dtCreate_Commission: TDateTimePicker;
    Label39: TLabel;
    bCreate: TBitBtn;
    tSearch2: TEdit;
    cbCategory2: TComboBox;
    Panel5: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    rb_filterDate: TRadioButton;
    dtFilter3: TDateTimePicker;
    dtFilter4: TDateTimePicker;
    rb_disfilter: TRadioButton;
    Qcomm: TADOQuery;
    QDetailComm: TADOQuery;
    Label41: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    lbl_Invoice_no: TLabel;
    lbl_invoice_date: TLabel;
    lbl_sales_name: TLabel;
    lbl_sales_regno: TLabel;
    lbl_Commission_total: TLabel;
    lbl_Status: TLabel;
    Label48: TLabel;
    rgStatus: TRadioGroup;
    BitBtn1: TBitBtn;
    bMoreDetail: TBitBtn;
    bDelete: TBitBtn;
    bPayment: TBitBtn;
    bPrintInvoice: TBitBtn;
    bDeleteInvoice: TBitBtn;
    bRemoveFromList: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label23: TLabel;
    lblinfo: TLabel;
    lblinfo2: TLabel;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure tFind_SlsEnter(Sender: TObject);
    procedure tFind_SlsExit(Sender: TObject);
    procedure tFind_SlsChange(Sender: TObject);
    procedure tFind_AdsrEnter(Sender: TObject);
    procedure tFind_AdsrExit(Sender: TObject);
    procedure tFind_AdvtExit(Sender: TObject);
    procedure tFind_AdvtEnter(Sender: TObject);
    procedure tFind_AdsrChange(Sender: TObject);
    procedure tFind_AdvtChange(Sender: TObject);
    procedure tFind_SlsKeyPress(Sender: TObject; var Key: Char);
    procedure LvFindCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure LvFindExit(Sender: TObject);
    procedure LvFindEnter(Sender: TObject);
    procedure tFind_AdsrKeyPress(Sender: TObject; var Key: Char);
    procedure tFind_AdvtKeyPress(Sender: TObject; var Key: Char);
    procedure LvFindDblClick(Sender: TObject);
    procedure tEditionChange(Sender: TObject);
    procedure tPageChange(Sender: TObject);
    procedure tFirstColumnChange(Sender: TObject);
    procedure tLastColumnChange(Sender: TObject);
    procedure tFirstPostChange(Sender: TObject);
    procedure tHeightChange(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure tEditionKeyPress(Sender: TObject; var Key: Char);
    procedure tPageKeyPress(Sender: TObject; var Key: Char);
    procedure tFirstColumnKeyPress(Sender: TObject; var Key: Char);
    procedure tLastColumnKeyPress(Sender: TObject; var Key: Char);
    procedure tFirstPostKeyPress(Sender: TObject; var Key: Char);
    procedure tHeightKeyPress(Sender: TObject; var Key: Char);
    procedure tDiscKeyPress(Sender: TObject; var Key: Char);
    procedure tSelling_PriceKeyPress(Sender: TObject; var Key: Char);
    procedure tHeightExit(Sender: TObject);
    procedure tDiscChange(Sender: TObject);
    procedure tSelling_PriceChange(Sender: TObject);
    procedure bINSERTClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure tWageKeyPress(Sender: TObject; var Key: Char);
    procedure bClearClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown4Click(Sender: TObject; Button: TUDBtnType);
    procedure tNext_EdCountKeyPress(Sender: TObject; var Key: Char);
    procedure bResetClick(Sender: TObject);
    procedure tSearchChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Rb_Filter_by_EClick(Sender: TObject);
    procedure rb_DisbleFilterClick(Sender: TObject);
    procedure rb_Filter_by_DClick(Sender: TObject);
    procedure tFilter_EditionChange(Sender: TObject);
    procedure dtFilter1Change(Sender: TObject);
    procedure dtFilter2Change(Sender: TObject);
    procedure lvAdvertisingChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure rb_disfilterClick(Sender: TObject);
    procedure rb_filterDateClick(Sender: TObject);
    procedure tSearch2Change(Sender: TObject);
    procedure bCreateClick(Sender: TObject);
    procedure dtFilter3Change(Sender: TObject);
    procedure dtFilter4Change(Sender: TObject);
    procedure lvCommissionChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure rgStatusClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lvAdvertisingDblClick(Sender: TObject);
    procedure bMoreDetailClick(Sender: TObject);
    procedure bPaymentClick(Sender: TObject);
    procedure bPrintInvoiceClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure bRemoveFromListClick(Sender: TObject);
    procedure bDeleteInvoiceClick(Sender: TObject);
    procedure tEditionContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tPageContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tFirstColumnContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tLastColumnContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tFirstPostContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tHeightContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tNext_EdCountContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tDiscContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);

  private
    { Private declarations }
    procedure PositionLV;
    procedure Validation_Input;
    procedure Validation_InputEdition;
    procedure Validation_PanelPrice;
    Procedure AutoNo_Advertising;
    Procedure AutoNo_Commission;
    Procedure Delete_Component;
    Procedure View_Advertisment;
    procedure Position_Advt;
    procedure Formula_TotPrice;
    Procedure Validation_Advt;
    procedure View_Detail;
  public
    { Public declarations }
  end;

var
  frAdvertisingTrans: TfrAdvertisingTrans;
  sNo_ID:string;
  sName:string;
  sORG:string;
  sType:string;
  filterTrans:byte;
  filterComm:byte;
  sInvoice:string;
  sStatus:string;

  iMin_ColumnCount:integer;
  iMin_ColumnHeight:integer;
  iMin_PageCount:integer;



implementation

uses ProcedureFunction, DataModule, 
  DetailAdvertiserment, SeachAdvertiser;

{$R *.dfm}
Procedure TfrAdvertisingTrans.View_Detail;
begin
  with dm.Qview,list_LV do
  begin
  lvDetail.Clear;
   SelectQuery('SELECT * FROM temp_detail_advt');
   while not Eof do
   begin
      list_LV:=lvDetail.Items.Add;
      Caption:=IntToStr(RecNo);
      SubItems.Add(FieldValues['adv_code']);
      SubItems.Add(FieldValues['Summary_of_adv']);
      SubItems.Add(FieldValues['edition']);
      SubItems.Add(FieldValues['page']);
      SubItems.Add(FieldValues['first_col']);
      SubItems.Add(FieldValues['col_count']);
      SubItems.Add(FieldValues['first_pos']);
      SubItems.Add(FieldValues['col_height']);
      SubItems.Add(FieldValues['selling_price']);
      SubItems.Add(FieldValues['disc']);
      SubItems.Add(FieldValues['price_total']);
      Next;
   end;
   if lvDetail.Items.Count<>0 then
    begin
      SelectQuery('SELECT sum(price_total) as total_pay FROM temp_detail_advt');
      tTotal_Pay.Text:=FieldValues['total_pay'];
      SelectQuery('SELECT distinct edition FROM temp_detail_advt');
    end;
  end;
end;
Procedure TfrAdvertisingTrans.Validation_Advt;
var ilastColumn:integer;
    iLastPosition:integer;
begin

  if Length(tFirstColumn.Text)=0 then exit;
  if Length(tLastColumn.Text)=0 then exit;
  if Length(tFirstPost.Text)=0 then exit;
  if Length(tHeight.Text)=0 then exit;

  ilastColumn:=StrToInt(tFirstColumn.Text)+ StrToInt(tLastColumn.Text)-1;
  iLastPosition:=StrToInt(tFirstPost.Text)+ StrToInt(tHeight.Text);

  SelectQuery('SELECT * FROM '+sfield+' WHERE edition='+
  sEdition+' And Page='+tPage.Text+

  ' And (( (('+tFirstColumn.Text+' > First_col)'+
  ' OR ('+tFirstColumn.Text+' = First_col))'+
  ' And (('+tFirstColumn.Text+' < First_col + col_count-1)'+
  ' OR ('+tFirstColumn.Text+' = First_col + col_count-1)))'+

  ' OR ( ((First_Col > '+tFirstColumn.Text+')'+
  ' OR (First_Col = '+tFirstColumn.Text+'))'+
  ' And ((First_Col < '+IntToStr(ilastColumn)+')'+
  ' OR (First_Col = '+IntToStr(ilastColumn)+'))))'+

  ' And (( (('+tFirstPost.Text+' > first_Pos)'+
  ' OR ('+tFirstPost.Text+' = first_Pos))'+
  ' And (('+tFirstPost.Text+' < first_Pos + col_height)'+
  ' OR ('+tFirstPost.Text+' = first_Pos + col_height)))'+

  ' OR (First_Pos > '+tFirstPost.Text+
  ' And First_Pos < '+IntToStr(iLastPosition)+'))');



  if dm.Qview.RecordCount>0 then
  begin
  shpAdvt_new.Brush.Color:=clBlack;
  //ShowMessage('Ges Ayaan euy ????!!!!');
  exit;
  end
  else shpAdvt_new.Brush.Color:=clWhite;
end;

procedure TfrAdvertisingTrans.Formula_TotPrice;
var sell_price:Currency;
    tot_price:Currency;
    iDisc:Single;
begin
//----------------- Process price-----------------------------------------------

  if Trim(tSelling_Price.Text)='' then sell_price:=0 else
    sell_price:=StrToCurr(tSelling_Price.Text);

  if Trim(tDisc.Text)='' then iDisc:=0 else
    iDisc:=StrToFloat(tDisc.Text);

  tot_price:=sell_price*(jml_y* (StrToFloat(IntToStr(jml_x))/10));
  iDisc:= tot_price * (iDisc/100);

  tNominal_Disc.Text:=FloatToStr(iDisc);
  tTot_Price.Text:=CurrToStr(tot_price-iDisc);

end;
procedure TfrAdvertisingTrans.Position_Advt;
begin

  shpAdvt_new.Visible:=True;
 //--------------------- Validation First Column -------------------------------

   if Trim(tFirstColumn.Text)='' then
   begin
    x1:=0;
    tLastColumn.Text:='';
   end
   else
   begin
    x1:=StrToInt(tFirstColumn.Text);
    if (x1+iMin_ColumnCount-1)>5 then
    begin
      MessageDlg('Kolom pertama terlalu besar!',mtWarning,[mbOK],0);
      tFirstColumn.Text:=IntToStr(5-iMin_ColumnCount+1);
      x1:=StrToInt(tFirstColumn.Text);
      tLastColumn.Text:=IntToStr(iMin_ColumnCount);
    end;
   end;

//------------------------Validation Column Count ------------------------------

   if Trim(tLastColumn.Text)='' then  jml_x:=0 else
   begin
    jml_x:=StrToInt(tLastColumn.Text);
    if jml_x < iMin_ColumnCount then
    begin
      MessageDlg('Jumlah kolom terlalu sedikit !',mtWarning,[mbOK],0);
      tLastColumn.Text:=IntToStr(iMin_ColumnCount);
      jml_x:=StrToInt(tLastColumn.Text);
    end
    else if (x1+jml_x-1) > 5 then
    begin
      MessageDlg('Jumlah kolom terlau banyak !',mtWarning,[mbOK],0);
      tLastColumn.Text:=IntToStr(jml_x-((x1+jml_x-1)-5));
      jml_x:=StrToInt(tLastColumn.Text);
    end;

   end;

//---------------------------Validation First Position--------------------------

   if Trim(tFirstPost.Text)='' then
   begin
    y1:=0;
    tHeight.Text:='';
   end
   else
   begin
    y1:=StrToInt(tFirstPost.Text);
    if (y1+iMin_ColumnHeight) > pnlBG.Height then
    begin
      MessageDlg('Posisi pertama terlalu besar !',mtWarning,[mbOK],0);
      y1:=y1-((y1+iMin_ColumnHeight)-pnlBG.Height);
      tFirstPost.Text:=IntToStr(y1);
    end;
   end;
//------------------------Validation Column Height -----------------------------


   if Trim(tHeight.Text)='' then
    jml_y:=0
   else
   begin
    jml_y:=StrToInt(tHeight.Text);
    if (y1+jml_y) > pnlBG.Height then
    begin
      MessageDlg('Kolom terlalu tinggi!',mtWarning,[mbOK],0);
      jml_y:=jml_y-((y1+jml_y)-pnlBG.Height);
      tHeight.Text:=IntToStr(jml_y);
    end;
   end;

//------------------- Setting Position------------------------------------------
   shpAdvt_New.BringToFront;

   ispace:=(x1*3)-3;
   shpAdvt_New.Left:=(x1*50)-50+ispace;

   ispace:=(jml_x*3)-3;
   shpAdvt_New.Width:=jml_x*50+ispace;

   shpAdvt_New.Top:=y1;
   shpAdvt_New.Height:=jml_y;

  Formula_TotPrice;
  sEdition:=tEdition.Text;
  sfield:='detail_advertising_trans';
  Validation_Advt;
  if shpAdvt_new.Brush.Color<>clBlack then
  begin
    sfield:='temp_detail_advt';
    Validation_Advt;
  end;
end;


procedure TfrAdvertisingTrans.Delete_Component;
var j : integer;
begin
  for j:=0 to ComponentCount-1 do
  begin
    if Components[ComponentCount-1] is TShape then
      if TShape(Components[ComponentCount-1]).Tag=2 then
         TShape(Components[ComponentCount-1]).Destroy;
  end;
end;

procedure TfrAdvertisingTrans.View_Advertisment;
var x:array[1..100] of TShape;
begin
  SelectQuery('SELECT * FROM '+sfield+' WHERE edition='+IntToStr(iedition)+
  ' and page='+IntToStr(iPage));
  with dm.Qview do
  begin
    First;
	  while not Eof do
    begin
		  x[RecNo]:=TShape.Create(Self);
		    with x[RecNo] do
        begin
			    Parent:=pnlBG;
			    if sfield='detail_advertising_trans' then
          begin
            Name:='advt'+IntToStr(RecNo);
            Brush.Color:=clGreen;
          end
          else
          begin
            Name:='Advt_new'+IntToStr(RecNo);
            Brush.Color:=clYellow;
          end;

          ispace:=(StrToInt(FieldValues['first_col'])*3)-3;
          Left:=(StrToInt(FieldValues['first_col'])*50)-50+ispace;

          ispace:=(StrToInt(FieldValues['col_count'])*3)-3;
			    Width:=(StrToInt(FieldValues['col_count'])*50)+ispace;

			    top:=StrToInt(FieldValues['first_pos']);
			    Height:=StrToInt(FieldValues['col_height']);
			    Tag:=2;
        end;
	    Next;
    end;
  end;
end;


procedure TfrAdvertisingTrans.AutoNo_Advertising;
var ikode:integer;
    ithn:Byte;
    ithn2:Byte;
    skode:string;
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

    SelectQuery('SELECT left(advertising_no,3) as NoTrans, right(advertising_no,2) as thn FROM advertising_transaction ORDER  BY right(advertising_no,2), left(advertising_no,3)');

    if not dm.Qview.Eof then
    begin
       dm.Qview.Last;
       ithn:=StrToInt(dm.Qview.FieldValues['thn']);
       ithn2:=StrToInt(FormatDateTime('yy',Now ));
       ikode:=StrToInt(dm.Qview.FieldValues['NoTrans'])+1;
       if ithn2 > ithn then ikode:=1;
       skode:=IntToStr(ikode);
       skode:=copy('000',1,3- length(skode))+skode;
       if ikode > 999 then
       begin
          ShowMessage('No. Advertising Sudah Penuh!');
          close;
       end;
       tNo_Trans.Text:=skode+'/ADV/DP/'+sMonth+'-'+FormatDateTime('yy',Now);

    end
    else
      tNo_Trans.Text:='001/ADV/DP/'+sMonth+'-'+FormatDateTime('yy',Now);

end;

procedure TfrAdvertisingTrans.AutoNo_Commission;
var ikode:integer;
    skode:string;
    ithn:Byte;
    ithn2:Byte;
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

   dm.Qinput.SQL.Clear;
   dm.Qinput.SQL.Text:='SELECT LEFT(invoice_no,3) as NoComm, Right(invoice_no,2) as thn FROM taking_of_commission ORDER BY Right(invoice_no,2),LEFT(invoice_no,3)';
   dm.Qinput.Open;

    if dm.Qinput.RecordCount >0 then
    begin

    dm.Qinput.Last;
       ithn:=StrToInt(dm.Qinput['thn']);
       ithn2:=StrToInt(FormatDateTime('yy',Now ));
       ikode:=StrToInt(dm.Qinput.FieldValues['NoCOmm'])+1;
       if ithn2 > ithn then ikode:=1;
       skode:=IntToStr(ikode);
       skode:=copy('000',1,3- length(skode))+skode;
       if ikode > 999 then
       begin
          ShowMessage('No Bukti sudah penuh !');
          close;
       end;
       sInvoice:=skode+'/KMS-ADV/DP/'+sMonth+'-'+FormatDateTime('yy',Now);
    end
    else
      sInvoice:='001/KMS-ADV/DP/'+sMonth+'-'+FormatDateTime('yy',Now);

end;


Procedure TfrAdvertisingTrans.Validation_PanelPrice;
begin
 if (Length(tFirstColumn.Text)<>0) And (Length(tLastColumn.Text)<>0) And
    (Length(tFirstPost.Text)<>0) And (Length(tHeight.Text)<>0) then
    pnlPrice.Enabled:=True Else pnlPrice.Enabled:=False;
end;
Procedure TfrAdvertisingTrans.Validation_InputEdition;
begin
  if trim(tEdition.Text)='' then
  begin
    tPage.Enabled:=False;
    tFirstColumn.Enabled:=False;
    tLastColumn.Enabled:=False;
    tFirstPost.Enabled:=False;
    tHeight.Enabled:=False;

    UpDown1.Enabled:=false;
    UpDown2.Enabled:=false;
    UpDown3.Enabled:=false;
    UpDown4.Enabled:=false;
  end
  else
    begin
      tPage.Enabled:=True;
     if Trim(tPage.Text)<>'' then
     begin
      tFirstColumn.Enabled:=True;
      tLastColumn.Enabled:=True;
      tFirstPost.Enabled:=True;

      tHeight.Enabled:=True;
      UpDown1.Enabled:=True;
      UpDown2.Enabled:=True;
      UpDown3.Enabled:=True;
      UpDown4.Enabled:=True;
     end
     else
     begin
      tFirstColumn.Enabled:=False;
      tLastColumn.Enabled:=False;
      tFirstPost.Enabled:=False;
      tHeight.Enabled:=False;

      UpDown1.Enabled:=false;
      UpDown2.Enabled:=false;
      UpDown3.Enabled:=false;
      UpDown4.Enabled:=false;
     end;
    end;
end;
procedure TfrAdvertisingTrans.Validation_Input;
begin
  if Length(lblNo_Id.Caption)>0 then
  begin
    pnlAdvt.Enabled:=True;
    if Length(lblKode.Caption)>0 then
      pnlEdition.Enabled:=True
    else
      pnlEdition.Enabled:=False;
  end
  else
  begin
    pnlAdvt.Enabled:=False;
    pnlEdition.Enabled:=False;
  end;
end;
procedure TfrAdvertisingTrans.PositionLV;
begin
lvFind.Clear;
with dm.Qview,list_LV do
 begin

  while not Eof do
  begin
    list_LV:=lvFind.Items.Add;
    Caption:=FieldValues[sNo_ID];
    SubItems.Add(FieldValues[sName]);
    SubItems.Add(FieldValues[sORG]);
    SubItems.Add(FieldValues[sType]);
    Next;
  end;

  if lvFind.Items.Count> 0 then
  begin
    lvFind.SELECTed:=list_LV;
    list_LV.MakeVisible(True);
  end;

 end;
  Case lvFind.Items.Count of
    0..1 :lvFind.Height:=45;
    2 :lvFind.Height:=70;
    3 :lvFind.Height:=30*lvFind.Items.Count;
    4 :lvFind.Height:=25*lvFind.Items.Count;
    5..15:lvFind.Height:=20*lvFind.Items.Count+15;
  else
    lvFind.Height:=20*15;
  end;
end;
procedure Clear_text;
var i : integer;
begin
  with frAdvertisingTrans do begin
  for i:=0 to frAdvertisingTrans.ComponentCount-1 do
  begin
    if (Components[i] is TEdit) And (Length(TEdit(Components[i]).Text)<>0) then
      TEdit(Components[i]).Clear;
    if Components[i] is TMemo then TMemo(Components[i]).Clear;
    if (Components[i] is TLabel) And (TLabel(Components[i]).Tag=1) then
      TLabel(Components[i]).Caption:='';

  tWage.Visible:=False;
  lvDetail.Items.Clear;
  end;
  end;
end;
procedure TfrAdvertisingTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfrAdvertisingTrans.FormCreate(Sender: TObject);
begin
  Clear_text;
  pnlTrans.Enabled:=False;
  pnlSales.Enabled:=False;
  pnlAdsr.Enabled:=False;
  pnlPrice.Enabled:=False;
  bAdd.Tag:=0;

  PageControl1Change(Self);

end;

procedure TfrAdvertisingTrans.bCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrAdvertisingTrans.tFind_SlsEnter(Sender: TObject);
begin
 lvFind.Visible:=True;
 lvFind.Columns[0].Caption:='Reg No';
 lvFind.Columns[1].Caption:='Name';
 lvFind.Left:=pnlSales.Left+tFind_Sls.Left;
 lvFind.Top:=pnlSales.Top+tFind_Sls.Top+tFind_Sls.Height;
 lvFind.Width:=tFind_Sls.Width;
 lvFind.Tag:=0;
 tFind_SlsChange(Self);
end;

procedure TfrAdvertisingTrans.tFind_SlsExit(Sender: TObject);
begin
 if lvFind.Focused=False then
  lvFind.Visible:=False;

end;

procedure TfrAdvertisingTrans.tFind_SlsChange(Sender: TObject);
var sField:string;
begin



  sNo_ID:='sales_regno';
  sName:='sales_name';
  sORG:='sales_contact';
  sType:='sales_email';

  if Check_FirstInput(tFind_Sls.Text) then sField:=sName else sField:=sNo_ID;
  SelectQuery('SELECT TOP 18 * FROM Sales WHERE '+sField+' LIKE'+QuotedStr(Trim(tFind_Sls.Text)+'%'));

 PositionLV;


end;

procedure TfrAdvertisingTrans.tFind_AdsrEnter(Sender: TObject);
begin
 lvFind.Visible:=True;
  lvFind.Columns[0].Caption:='Id Number';
 lvFind.Columns[1].Caption:='Name';
 lvFind.Left:=pnlAdsr.Left+tFind_Adsr.Left;
 lvFind.Top:=pnlAdsr.Top+tFind_Adsr.Top+tFind_Adsr.Height;
 lvFind.Width:=tFind_Adsr.Width;
 lvFind.Tag:=1;
 tFind_AdsrChange(Self);

end;

procedure TfrAdvertisingTrans.tFind_AdsrExit(Sender: TObject);
begin
 if lvFind.Focused=False then
  lvFind.Visible:=False;
end;

procedure TfrAdvertisingTrans.tFind_AdvtExit(Sender: TObject);
begin
 if lvFind.Focused=False then
  lvFind.Visible:=False;
end;

procedure TfrAdvertisingTrans.tFind_AdvtEnter(Sender: TObject);
begin
 lvFind.Visible:=True;
 lvFind.Columns[0].Caption:='Code';
 lvFind.Columns[1].Caption:='Type';
 lvFind.Left:=pnlAdvt.Left+tFind_Advt.Left;
 lvFind.Top:=pnlAdvt.Top+tFind_Advt.Top+tFind_Advt.Height;
 lvFind.Width:=tFind_Advt.Width;
 lvFind.Tag:=2;
 tFind_AdvtChange(Self);
end;

procedure TfrAdvertisingTrans.tFind_AdsrChange(Sender: TObject);
var sField:string;
begin

  sNo_ID:='advertiser_id';
  sName:='advertiser_name';
  sORG:='Organization_name';
  sType:='Positions';
  if Check_FirstInput(tFind_Adsr.Text) then sField:=sName else sField:=sNo_ID;
  SelectQuery('SELECT TOP 18 * FROM Advertiser WHERE '+sField+' LIKE'+QuotedStr(Trim(tFind_Adsr.Text)+'%'));

  PositionLV;
end;

procedure TfrAdvertisingTrans.tFind_AdvtChange(Sender: TObject);
var sField:string;
begin
 sNo_ID:='adv_code';
 sName:='adv_type';
 sORG:='color_type';
 sType:='base_price';
  if Check_FirstInput(tFind_Advt.Text) then sField:=sName else sField:=sNo_ID;
 SelectQuery('SELECT TOP 18 * FROM Advertisement WHERE '+sField+' LIKE'+QuotedStr(Trim(tFind_Advt.Text)+'%'));

 PositionLV;
 Validation_Input;
end;

procedure TfrAdvertisingTrans.tFind_SlsKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) And (LvFind.Items.Count>0) then
  begin
    lvFindDblClick(Self);

  end;
end;

procedure TfrAdvertisingTrans.LvFindCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.SELECTed=True then
  Sender.Canvas.Brush.Color:=clSkyBlue;
end;

procedure TfrAdvertisingTrans.LvFindExit(Sender: TObject);
begin
 lvFind.Clear;
 lvFind.Visible:=False;
 tEditionChange(Self);
end;

procedure TfrAdvertisingTrans.LvFindEnter(Sender: TObject);
begin
 lvFind.Visible:=True;
end;

procedure TfrAdvertisingTrans.tFind_AdsrKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) And (LvFind.Items.Count>0)  then
  begin
    lvFindDblClick(Self);
    tFind_Advt.SetFocus;
  end;
end;
procedure TfrAdvertisingTrans.tFind_AdvtKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) And (LvFind.Items.Count>0)  then
  begin
    lvFindDblClick(Self);
    tEdition.SetFocus;
  end;
end;

procedure TfrAdvertisingTrans.LvFindDblClick(Sender: TObject);
begin

  if (lvFind.SELECTed<>nil) then
  begin
    if lvFind.Tag=0 then
    begin

      lblReg_No.Caption:=lvFind.SELECTed.Caption;
      lblName_Sls.Caption:=lvFind.SELECTed.SubItems[0];
      tWage.Visible:=True;
      lblPercent_wage.Caption:='%';
    end
    else if lvFind.Tag=1 then
    begin
      lblNo_Id.Caption:=lvFind.SELECTed.Caption;
      lblName_Adsr.Caption:=lvFind.SELECTed.SubItems[0];
      lblOrganization.Caption:=lvFind.Selected.SubItems[1];
      lblPosition.Caption:=lvFind.Selected.SubItems[2];
    end
    else if lvFind.Tag=2 then
    begin
      lblKode.Caption:=lvFind.SELECTed.Caption;
      lblType_Advt.Caption:=lvFind.SELECTed.SubItems[0];
      lbl_Color.Caption:=lvFind.SELECTed.SubItems[1];
      SelectQuery('SELECT * FROM advertisement WHERE adv_code="'+lblKode.Caption+'"');

      iMin_ColumnCount:=StrToInt(dm.Qview.FieldValues['min_col']);
      iMin_ColumnHeight:=StrToInt(dm.Qview.FieldValues['Min_height']);
      tSelling_Price.Text:=dm.Qview.FieldValues['base_price'];

      Position_Advt;
    end;
    Validation_Input;
    case lvFind.Tag Of
      0:tWage.SetFocus;
      1:tFind_Advt.SetFocus;
      2:tContent.SetFocus;
    end;
  end;
end;

procedure TfrAdvertisingTrans.tEditionChange(Sender: TObject);
begin

  if tEdition.Text='0' then tEdition.Text:='1';

 Validation_InputEdition;
  if Length(tPage.Text)<>0 then tPage.Clear;

   if Trim(tEdition.Text)<>'' then
    iedition:=StrToInt(tEdition.Text)
  else
  iedition:=0;

end;

procedure TfrAdvertisingTrans.tPageChange(Sender: TObject);
begin

  if tPage.Text='0' then tPage.Text:='1';


  Validation_InputEdition;

  if Length(tFirstColumn.Text)<>0 then tFirstColumn.Clear;
  if Length(tLastColumn.Text)<>0 then tLastColumn.Clear;
  if Length(tFirstPost.Text)<>0 then tFirstPost.Clear;
  if Length(tHeight.Text)<>0 then tHeight.Clear;

   if Trim(tPage.Text)<>'' then
    iPage:=StrToInt(tPage.Text)
   else
    iPage:=0;

  Delete_Component;
  //View_News;

  sfield:='detail_advertising_trans';
  View_Advertisment;

  sfield:='temp_detail_advt';
  View_Advertisment;

end;

procedure TfrAdvertisingTrans.tFirstColumnChange(Sender: TObject);
begin
  if tFirstColumn.Text='0' then tFirstColumn.Text:='1';
  Validation_PanelPrice;
  if bAdd.Tag=1 then Position_Advt;
end;

procedure TfrAdvertisingTrans.tLastColumnChange(Sender: TObject);
begin

  if tLastColumn.Text='0' then tLastColumn.Text:='1';
  Validation_PanelPrice;
  if bAdd.Tag=1 then Position_Advt;
end;

procedure TfrAdvertisingTrans.tFirstPostChange(Sender: TObject);
begin

  if tFirstPost.Text='0' then tFirstPost.Text:='1';
  Validation_PanelPrice;
  if bAdd.Tag=1 then Position_Advt;
end;

procedure TfrAdvertisingTrans.tHeightChange(Sender: TObject);
begin
  if tHeight.Text='0' then tHeight.Text:='1';
  Validation_PanelPrice;
  if bAdd.Tag=1 then
  Position_Advt;


end;

procedure TfrAdvertisingTrans.bAddClick(Sender: TObject);
begin
  if bAdd.Tag=1 then
  begin
    Delete_Component;
    Clear_text;
    bAdd.Tag:=0;
    pnlTrans.Enabled:=False;
    pnlSales.Enabled:=False;
    pnlAdsr.Enabled:=False;
    pnlAdvt.Enabled:=False;
    pnlEdition.Enabled:=False;
    pnlPrice.Enabled:=False;
  end
  else
  begin
    Clear_text;
    bAdd.Tag:=1;
    pnlTrans.Enabled:=True;
    pnlAdsr.Enabled:=True;
    pnlSales.Enabled:=True;
    AutoNo_Advertising;
    dtDate_Trans.Date;
    ExcuteQuery('DELETE FROM temp_detail_advt');
    tFind_Sls.SetFocus;
  end;



 case bAdd.Tag of
  0: bAdd.Caption:='Add';
  1: bAdd.Caption:='Cancel';
 end;
end;

procedure TfrAdvertisingTrans.tEditionKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) and (tPage.Enabled=True) then tPage.SetFocus;
end;

procedure TfrAdvertisingTrans.tPageKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) and (tFirstColumn.Enabled=True) then tFirstColumn.SetFocus;
end;

procedure TfrAdvertisingTrans.tFirstColumnKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13,',']) then key:=#0;
  if (key=#13) And (tLastColumn.Enabled=True) then tLastColumn.SetFocus;
end;

procedure TfrAdvertisingTrans.tLastColumnKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13,',']) then key:=#0;
  if (key=#13) And (tFirstPost.Enabled=True) then tFirstPost.SetFocus;
end;

procedure TfrAdvertisingTrans.tFirstPostKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) And (tHeight.Enabled=True) then tHeight.SetFocus;
end;

procedure TfrAdvertisingTrans.tHeightKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) And (tSelling_Price.Enabled=True) then tSelling_Price.SetFocus;
end;

procedure TfrAdvertisingTrans.tDiscKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) And (tNext_EdCount.Enabled=True) then tNext_EdCount.SetFocus;
end;

procedure TfrAdvertisingTrans.tSelling_PriceKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) And (tDisc.Enabled=True) then tDisc.SetFocus;
end;

procedure TfrAdvertisingTrans.tHeightExit(Sender: TObject);
begin
 if Trim(tHeight.Text)<>'' then
  if StrToInt(tHeight.Text)<iMin_ColumnHeight then
  begin
    MessageDlg('Minimal tinggi kolom harus '+IntToStr(iMin_ColumnHeight),mtWarning,[mbOK],0);
    tHeight.Text:=IntToStr(iMin_ColumnHeight);
    tHeight.SetFocus;
  end;
end;

procedure TfrAdvertisingTrans.tDiscChange(Sender: TObject);
begin
  if bAdd.Tag=1 then Formula_TotPrice;
end;

procedure TfrAdvertisingTrans.tSelling_PriceChange(Sender: TObject);
begin
  if bAdd.Tag=1 then Formula_TotPrice;
  if Length(tSelling_Price.Text)=0 then

  begin
    tDisc.Clear;
    tNominal_Disc.Clear;
    tTot_Price.Clear;
  end;
end;

procedure TfrAdvertisingTrans.bINSERTClick(Sender: TObject);
var i:integer;
    sNextEdCount:Integer;
begin

   if Length(trim(tContent.Text))< 5 then
  begin
    MessageDlg('Input isi judul tidak boleh kurang dari 5 karakter!!!',mtWarning,[mbOK],0);
    tContent.SetFocus;
    exit
  end;

  if Length(tSelling_Price.Text)=0 then
  begin
    MessageDlg('Harga jual harus diisi !!!',mtWarning,[mbOK],0);
    tSelling_Price.SetFocus;
    exit
  end;

  if Length(tNext_EdCount.Text)=0 then sNextEdCount:=0 else
  sNextEdCount:=StrToInt(tNext_EdCount.Text);

  With dm.Qview,list_LV do
  begin


    for i:=1 to sNextEdCount+1 do
    begin
      sEdition:=IntToStr(StrToInt(tEdition.Text)+i-1);
      sfield:='detail_advertising_trans';
      Validation_Advt;

      if shpAdvt_new.Brush.Color<>clBlack then
      begin
        sfield:='temp_detail_advt';
        Validation_Advt;
      end;

      if shpAdvt_new.Brush.Color=clBlack then
      begin
      MessageDlg('Ruang Iklan sudah dipesan orang lain !',mtWarning,[mbOK],0);
      tFirstColumn.SetFocus;
      View_Detail;
      exit
     end;

      SelectQuery('select * from temp_detail_advt');
      if dm.Qview.RecordCount> 10 then
      begin
       MessageDlg ('Maksimal 10 daftar !',mtWarning,[mbOK],0);
      Exit
      end;

      SQL.Clear;
      SQL.Text:='INSERT Into temp_detail_advt Values(:pNoTrans,:pkdAdvt,:pContent,:pEdition,'+
      ':pPage,:pFirstCol,:pColCount,:pFirstPos,:pColHeigt,:pSellPrice,:pDisc,:pTotPrice)';

      Prepared;
      Parameters.ParamByName('pNoTrans').Value:=tNo_Trans.Text ;
      Parameters.ParamByName('pkdAdvt').Value:=lblKode.Caption;
      Parameters.ParamByName('pContent').Value:=tContent.Text;
      Parameters.ParamByName('pEdition').Value:=IntToStr(StrToInt(tEdition.Text)+i-1);

      Parameters.ParamByName('pPage').Value:=tPage.Text;
      Parameters.ParamByName('PFirstCol').Value:=tFirstColumn.Text;
      Parameters.ParamByName('pColCount').Value:=tLastColumn.Text;
      Parameters.ParamByName('pFirstPos').Value:=tFirstPost.Text;
      Parameters.ParamByName('pColHeigt').Value:=tHeight.Text;
      Parameters.ParamByName('pSellPrice').Value:=tSelling_Price.Text;
      if Trim(tDisc.Text)='' then tDisc.Text:='0';
      Parameters.ParamByName('pDisc').Value:=tDisc.Text;
      Parameters.ParamByName('pTotPrice').Value:=tTot_Price.Text;
      ExecSQL;

    end;
    View_Detail;
  end;

  lblKode.Caption:='';
  lblType_Advt.Caption:='';
  tEdition.Clear;
  tContent.Clear;
  lbl_Color.Caption:='';
  tSelling_Price.Clear;


  tFind_Advt.SetFocus;
end;

procedure TfrAdvertisingTrans.bSaveClick(Sender: TObject);
var i:integer;
begin
  if bAdd.Tag=0 then exit;

  if (tWage.Visible=True) and (Length(tWage.Text)=0) then
  begin
    MessageDlg('Komisi tidak boleh dikosongkan !',mtWarning,[mbOK],0);
    tWage.SetFocus;
    exit
  end;

  if Length(lblNo_Id.Caption)=0 then
  begin
    MessageDlg('No. Id Tidak boleh dikosongkan !',mtWarning,[mbOK],0);
    tFind_Adsr.SetFocus;
    exit
  end;

    if lvDetail.Items.Count=0 then
  begin
    MessageDlg('Jenis iklan belum dimasukan !',mtWarning,[mbOK],0);
    tEdition.SetFocus;
    exit
  end;

  With dm.Qinput do
  begin
    SQL.Clear;
    SQL.Text:='INSERT INTO advertising_transaction(advertising_no,trans_date,advertiser_id, '+
              'pay_total) Values(:pNoTrans,:pDate,:pID_Adsr,:pTotPay)';
    Prepared;
    Parameters.ParamByName('pNoTrans').Value:=tNo_Trans.Text;
    Parameters.ParamByName('pDate').Value:=FormatDateTime('dd/mm/yyyy',dtDate_Trans.Date);
    Parameters.ParamByName('pID_Adsr').Value:=lblNo_Id.Caption;
    Parameters.ParamByName('pTotPay').Value:=tTotal_Pay.Text;
    ExecSQL;

    if tWage.Visible=True then
    begin
      SQL.Clear;
      SQL.Text:='INSERT INTO sales_commission Values(:pNoTrans,:pRegNo,:pWage)';
      Prepared;
      Parameters.ParamByName('pNoTrans').Value:=tNo_Trans.Text;
      Parameters.ParamByName('pRegNo').Value:=lblReg_No.Caption;
      Parameters.ParamByName('pWage').Value:=tWage.Text;
      ExecSQL;
    end;

    for i:= 0 to lvDetail.Items.Count-1 do
    begin

      SQL.Clear;
      SQL.Text:='INSERT Into detail_advertising_trans Values(:pNoTrans,:pkdAdvt,:pContent,:pEdition,'+
      ':pPage,:pFirstCol,:pColCount,:pFirstPos,:pColHeigt,:pSellPrice,:pDic,:pTotPrice)';
      Prepared;
      Parameters.ParamByName('pNoTrans').Value:=tNo_Trans.Text;
      Parameters.ParamByName('pkdAdvt').Value:=lvDetail.Items[i].SubItems[0];
      Parameters.ParamByName('pContent').Value:=lvDetail.Items[i].SubItems[1];
      Parameters.ParamByName('pEdition').Value:=lvDetail.Items[i].SubItems[2];
      Parameters.ParamByName('pPage').Value:=lvDetail.Items[i].SubItems[3];
      Parameters.ParamByName('PFirstCol').Value:=lvDetail.Items[i].SubItems[4];
      Parameters.ParamByName('pColCount').Value:=lvDetail.Items[i].SubItems[5];
      Parameters.ParamByName('pFirstPos').Value:=lvDetail.Items[i].SubItems[6];
      Parameters.ParamByName('pColHeigt').Value:=lvDetail.Items[i].SubItems[7];
      Parameters.ParamByName('pSellPrice').Value:=lvDetail.Items[i].SubItems[8];
      Parameters.ParamByName('pDic').Value:=lvDetail.Items[i].SubItems[9];
      Parameters.ParamByName('pTotPrice').Value:=lvDetail.Items[i].SubItems[10];
      ExecSQL;
    end;
    bAddClick(Self);
  end;



end;

procedure TfrAdvertisingTrans.tWageKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if (key=#13) And (Trim(tWage.Text)<>'') then tFind_Adsr.SetFocus;
end;

procedure TfrAdvertisingTrans.bClearClick(Sender: TObject);
begin
    lblReg_No.Caption:='';
    lblName_Sls.Caption:= '';
    tWage.Clear;
    tWage.Visible:=False;
    lblPercent_wage.Caption:='';
end;

procedure TfrAdvertisingTrans.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
  begin
 UpDown1.Max:=(5+1)-iMin_ColumnCount;
 UpDown1.Min:=1;
 if Length(tFirstColumn.Text)<>0 then
  UpDown1.Position:=StrToInt(tFirstColumn.Text)
 else
 UpDown1.Position:=1;
 UpDown1.Associate:=tFirstColumn;

end;

procedure TfrAdvertisingTrans.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin

 UpDown2.Max:=5;
 UpDown2.Min:=iMin_ColumnCount;

  if Length(tLastColumn.Text)<>0 then
  UpDown2.Position:=StrToInt(tLastColumn.Text)
 else
  UpDown2.Position:=iMin_ColumnCount;

 UpDown2.Associate:=tLastColumn;

end;

procedure TfrAdvertisingTrans.UpDown3Click(Sender: TObject;
  Button: TUDBtnType);
begin
 UpDown3.Max:=pnlBG.Height-iMin_ColumnHeight;
 UpDown3.Min:=0;

  if Length(tFirstPost.Text)<>0 then
  UpDown3.Position:=StrToInt(tFirstPost.Text)
 else
  UpDown3.Position:=0;
 UpDown3.Associate:=tFirstPost;
end;

procedure TfrAdvertisingTrans.UpDown4Click(Sender: TObject;
  Button: TUDBtnType);
begin

 UpDown4.Max:=jml_y;
 UpDown4.Min:=iMin_ColumnHeight;
  if Length(tHeight.Text)<>0 then
  UpDown4.Position:=StrToInt(tHeight.Text)
 else
  UpDown4.Position:=iMin_ColumnHeight-1;
 UpDown4.Associate:=tHeight;
end;

procedure TfrAdvertisingTrans.tNext_EdCountKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
  if key=#13 then bINSERTClick(Self);
end;

procedure TfrAdvertisingTrans.bResetClick(Sender: TObject);
begin
  ExcuteQuery('DELETE FROM temp_detail_advt');
  View_Detail;
end;

procedure TfrAdvertisingTrans.tSearchChange(Sender: TObject);
var iEdition_filter:integer;
begin
  lbl_Adv_No.Caption:='';
  lbl_date_trans.Caption:='';
  lbl_Adv_ID.Caption:='';
  lbl_Adv_Name.Caption:='';
  lbl_Regno.Caption:='';
  lbl_PayTot.Caption:='';
  lbl_sls_name.Caption:='';
  lbl_Commission.Caption:='';


  case  cbCategory.ItemIndex of
        0:sCategory:='advertising_transaction.advertising_no';
        1:sCategory:='trans_date';
        2:sCategory:='advertising_transaction.advertiser_id';
        3:sCategory:='advertiser_name';
        4:sCategory:='organization_name';
        5:sCategory:='positions';
      else Exit;
      end;

  if filterTrans= 1 then
   begin

    SelectQuery('SELECT advertising_transaction.advertising_no, advertising_transaction.trans_date, '+
                'advertising_transaction.advertiser_id, advertiser.advertiser_name, '+
                'advertiser.organization_name, advertiser.positions, advertising_transaction.pay_total '+
                'FROM advertiser INNER JOIN advertising_transaction ON advertiser.advertiser_id = '+
                'advertising_transaction.advertiser_id WHERE '+sCategory+' LIKE ' +
                QuotedStr(Trim(tSearch.Text)+'%'));
    end

   else if filterTrans=2 then
   begin
    if Trim(tFilter_Edition.Text)='' then iEdition_filter:=0
    else iEdition_filter:=StrToInt(trim(tFilter_Edition.Text));


    SelectQuery('SELECT advertising_transaction.advertising_no, advertising_transaction.trans_date, '+
                'advertising_transaction.advertiser_id, advertiser.advertiser_name, '+
                'advertiser.organization_name, advertiser.positions, advertising_transaction.pay_total, '+
                'detail_advertising_trans.edition FROM (advertiser INNER JOIN advertising_transaction ON '+
                'advertiser.advertiser_id = advertising_transaction.advertiser_id) INNER JOIN '+
                'detail_advertising_trans ON advertising_transaction.advertising_no = '+
                'detail_advertising_trans.advertising_no WHERE detail_advertising_trans.edition = '+ IntToStr(iEdition_filter) +
                ' AND '+sCategory+' LIKE ' + QuotedStr(Trim(tSearch.Text)+'%'));

    end

    else if filterTrans=3 then
    begin
    dm.Qview.SQL.Clear;
    dm.Qview.SQL.Text:='SELECT advertising_transaction.advertising_no, advertising_transaction.trans_date, '+
                        'advertising_transaction.advertiser_id, advertiser.advertiser_name, '+
                        'advertiser.organization_name, advertiser.positions, advertising_transaction.pay_total '+
                        'FROM advertiser INNER JOIN advertising_transaction ON advertiser.advertiser_id = '+
                        'advertising_transaction.advertiser_id WHERE advertising_transaction.trans_date BETWEEN :date1 AND :date2 '+
                        ' AND '+sCategory+' LIKE ' +QuotedStr(Trim(tSearch.Text)+'%');

     dm.Qview.Prepared;
     dm.Qview.Parameters.ParamByName('date1').Value:=DateToStr(dtFilter1.Date);
     dm.Qview.Parameters.ParamByName('date2').Value:=DateToStr(dtFilter2.Date);
     dm.Qview.open;
    end;




    lvAdvertising.Clear;
    with dm.Qview,list_LV do
    begin
      while not Eof do
      begin
        list_LV:=lvAdvertising.Items.Add;
        Caption:=FieldValues['advertising_no'];
        SubItems.Add(FieldValues['trans_date']);
        SubItems.Add(FieldValues['advertiser_id']);
        SubItems.Add(FieldValues['advertiser_name']);
        SubItems.Add(FieldValues['organization_name']);
        SubItems.Add(FieldValues['positions']);
        SubItems.Add(FieldValues['pay_total']);
        Next;
      end;
    end;
 lblinfo.Caption:='Records Count = '+IntToStr(lvAdvertising.Items.Count)+' record';
end;

procedure TfrAdvertisingTrans.PageControl1Change(Sender: TObject);
begin
if PageControl1.TabIndex=1 then
      begin
        cbCategory.Items.Clear;
        cbCategory.Items.Add('No Advertising');
        cbCategory.Items.Add('Tanggal Transaksi');
        cbCategory.Items.Add('No. Id Advertiser');
        cbCategory.Items.Add('Nama Advertiser');
        cbCategory.Items.Add('Organisasi/ Perusahaan');
        cbCategory.Items.Add('Jabatan');
        cbCategory.ItemIndex:=0;
        rb_DisbleFilter.Checked:=True;
        rb_DisbleFilterClick(Self);
      end
else if PageControl1.TabIndex=2 then
      begin
        cbCategory2.Items.Clear;
        cbCategory2.Items.Add('No Bukti');
        cbCategory2.Items.Add('Tanggal');
        cbCategory2.Items.Add('No.Reg');
        cbCategory2.Items.Add('Nama Sales');
        cbCategory2.ItemIndex:=0;
        rb_disfilter.Checked:=True;
        rb_disfilterClick(Self);
      end;
end;

procedure TfrAdvertisingTrans.Rb_Filter_by_EClick(Sender: TObject);
begin
   if Rb_Filter_by_E.Checked=True then
   begin
    tFilter_Edition.Enabled:=True;
    tFilter_Edition.SetFocus;

    dtFilter1.Enabled:=False;
    dtFilter2.Enabled:=False;
    filterTrans:=2;
    tSearchChange(Self);
   end;


end;

procedure TfrAdvertisingTrans.rb_DisbleFilterClick(Sender: TObject);
begin
    tFilter_Edition.Enabled:=False;
    dtFilter1.Enabled:=False;
    dtFilter2.Enabled:=False;
    filterTrans:=1;
    tFilter_Edition.Clear;
end;

procedure TfrAdvertisingTrans.rb_Filter_by_DClick(Sender: TObject);
begin
   if rb_Filter_by_D.Checked=True then
   begin
    tFilter_Edition.Enabled:=false;
    dtFilter1.Enabled:=True;
    dtFilter2.Enabled:=True;
    filterTrans:=3;
    dtFilter1.SetFocus;
    tFilter_Edition.Clear;
   end;

end;

procedure TfrAdvertisingTrans.tFilter_EditionChange(Sender: TObject);
begin
tSearchChange(Self);
end;

procedure TfrAdvertisingTrans.dtFilter1Change(Sender: TObject);
begin
tSearchChange(Self);
end;

procedure TfrAdvertisingTrans.dtFilter2Change(Sender: TObject);
begin
tSearchChange(Self);
end;

procedure TfrAdvertisingTrans.lvAdvertisingChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
 if lvAdvertising.Selected<> nil then
    begin
      lbl_Adv_No.Caption:=lvAdvertising.Selected.Caption;
      lbl_date_trans.Caption:=lvAdvertising.Selected.SubItems[0];
      lbl_Adv_ID.Caption:=lvAdvertising.Selected.SubItems[1];
      lbl_Adv_Name.Caption:=lvAdvertising.Selected.SubItems[2];
      lbl_PayTot.Caption:=lvAdvertising.Selected.SubItems[5];


       SelectQuery('SELECT sales_commission.advertising_no, sales_commission.sales_regno, '+
                   'sales.sales_name, sales_commission.sales_commission FROM sales '+
                   'INNER JOIN sales_commission ON sales.sales_regno = sales_commission.sales_regno '+
                   'WHERE sales_commission.advertising_no='+ QuotedStr(Trim(lvAdvertising.Selected.Caption)));

       if Not dm.Qview.Eof then
       begin
        lbl_Regno.Caption:=dm.Qview.FieldValues['sales_regno'];
        lbl_sls_name.Caption:=dm.Qview.FieldValues['sales_name'];
        lbl_Commission.Caption:=dm.Qview.FieldValues['sales_commission'];
        end
       else
       begin
        lbl_Regno.Caption:='';
        lbl_sls_name.Caption:='';
        lbl_Commission.Caption:='';
       end;


    end;
end;

procedure TfrAdvertisingTrans.rb_disfilterClick(Sender: TObject);
begin

    dtFilter3.Enabled:=False;
    dtFilter4.Enabled:=False;
    filterComm:=1;
    tSearch2Change(Self);
end;

procedure TfrAdvertisingTrans.rb_filterDateClick(Sender: TObject);
begin
   if rb_filterDate.Checked=True then
   begin
    dtFilter3.Enabled:=True;
    dtFilter4.Enabled:=True;
    filterComm:=2;
    dtFilter3.SetFocus;
    tSearch2Change(Self);
   end;
end;

procedure TfrAdvertisingTrans.tSearch2Change(Sender: TObject);
begin
      lbl_Invoice_no.Caption:='';
      lbl_invoice_date.Caption:='';
      lbl_sales_regno.Caption:='';
      lbl_sales_name.Caption:='';
      lbl_Commission_total.Caption:='';
      lbl_Status.Caption:='';
      lvCommission_detail.Items.Clear;

       case  cbCategory2.ItemIndex of
        0:sCategory:='taking_of_commission.invoice_no';
        1:sCategory:='invoice_date';
        2:sCategory:='sales_commission.sales_regno';
        3:sCategory:='sales_name';
        4:sCategory:='commission_total';
        5:sCategory:='status';
      else exit;
      end;
   case rgStatus.ItemIndex of
    0:sStatus:='';
    1:sStatus:=' status=YES AND ';
    2:sStatus:=' status=NO AND ';
   end;

  if filterComm= 1 then
   begin
    SelectQuery('SELECT distinct taking_of_commission.invoice_no, taking_of_commission.invoice_date, '+
                'sales.sales_regno, sales.sales_name, taking_of_commission.commission_total, '+
                'taking_of_commission.status FROM sales INNER JOIN '+
                '(taking_of_commission INNER JOIN (sales_commission INNER JOIN detail_taking_commission '+
                'ON sales_commission.advertising_no = detail_taking_commission.advertising_no) ON '+
                'taking_of_commission.invoice_no = detail_taking_commission.invoice_no) ON '+
                'sales.sales_regno = sales_commission.sales_regno WHERE '+sStatus+sCategory+' LIKE ' +
                QuotedStr(Trim(tSearch2.Text)+'%'));
    end

   else if filterComm=2 then
    begin
    dm.Qview.SQL.Clear;
    dm.Qview.SQL.Text:='SELECT distinct taking_of_commission.invoice_no, taking_of_commission.invoice_date, '+
                'sales.sales_regno, sales.sales_name, taking_of_commission.commission_total, '+
                'taking_of_commission.status FROM sales INNER JOIN '+
                '(taking_of_commission INNER JOIN (sales_commission INNER JOIN detail_taking_commission '+
                'ON sales_commission.advertising_no = detail_taking_commission.advertising_no) ON '+
                'taking_of_commission.invoice_no = detail_taking_commission.invoice_no) ON '+
                'sales.sales_regno = sales_commission.sales_regno '+
                'WHERE '+sStatus+' taking_of_commission.invoice_date BETWEEN :date1 AND :date2 '+
                ' AND '+sCategory+' LIKE ' +QuotedStr(Trim(tSearch2.Text)+'%');

     dm.Qview.Prepared;
     dm.Qview.Parameters.ParamByName('date1').Value:=DateToStr(dtFilter3.Date);
     dm.Qview.Parameters.ParamByName('date2').Value:=DateToStr(dtFilter4.Date);
     dm.Qview.open;
    end;


    lvCommission.Clear;
    with dm.Qview,list_LV do
    begin
      while not Eof do
      begin
        list_LV:=lvCommission.Items.Add;
        Caption:=FieldValues['invoice_no'];
        SubItems.Add(FieldValues['invoice_date']);
        SubItems.Add(FieldValues['sales_regno']);
        SubItems.Add(FieldValues['sales_name']);
        SubItems.Add(FormatCurr('Rp. #,###', StrToCurr(FieldValues['commission_total'])));
        if FieldValues['status']='1' then SubItems.Add('Already') else  SubItems.Add('Not Yet');

        Next;
      end;
    end;
 lblinfo2.Caption:='Jml Record = '+IntToStr(lvCommission.Items.Count)+' record';
end;

procedure TfrAdvertisingTrans.bCreateClick(Sender: TObject);
begin
  if MessageDlg('Lanjutkan membuat komisi iklan untuk sales secara otomatis?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qcomm.SQL.Clear;
  Qcomm.SQL.Text:='Select distinct sales_regno from sales_commission where advertising_no not in (select advertising_no from detail_taking_commission)';
  Qcomm.Open;

    While not Qcomm.Eof do
      begin

          SelectQuery('Select distinct sales_regno from sales_commission where sales_regno="'+Qcomm.FieldValues['sales_regno']+'" AND advertising_no not in (select advertising_no from detail_taking_commission)');
          While not dm.Qview.Eof do
              begin

                  AutoNo_Commission;
                  dm.Qinput.SQL.Clear;
                  dm.Qinput.SQL.Text:='INSERT INTO taking_of_commission (invoice_no,invoice_date,commission_total,Status) VALUES(:pInvoice_No,:pInvoice_Date,0,0)';
                  dm.Qinput.Prepared;
                  dm.Qinput.Parameters.ParamByName('pInvoice_No').Value:=sInvoice;
                  dm.Qinput.Parameters.ParamByName('pInvoice_Date').Value:=FormatDateTime('dd/mm/yyyy',dtCreate_Commission.Date);
                  dm.Qinput.ExecSQL;

                  QDetailComm.SQL.Clear;
                  QDetailComm.SQL.Text:='SELECT sales_commission.advertising_no, sales_commission.sales_regno, '+
                                        '((sales_commission.sales_commission/100)* advertising_transaction.pay_total) as Nominal '+
                                        'FROM advertising_transaction INNER JOIN sales_commission ON advertising_transaction.advertising_no = '+
                                        'sales_commission.advertising_no WHERE sales_commission.sales_regno="'+Qcomm.FieldValues['sales_regno']+
                                        '" AND sales_commission.advertising_no not in '+
                                        '(select detail_taking_commission.advertising_no from detail_taking_commission)';
                  QDetailComm.Open;
                  while not QDetailComm.Eof do
                      begin
                          dm.Qinput.SQL.Clear;
                          dm.Qinput.SQL.Text:='INSERT INTO detail_taking_commission VALUES(:pInvoice,:pAdvertising,:pNominal)';
                          dm.Qinput.Prepared;
                          dm.Qinput.Parameters.ParamByName('pInvoice').Value:=sInvoice;
                          dm.Qinput.Parameters.ParamByName('pAdvertising').Value:=QDetailComm.FieldValues['advertising_no'];
                          dm.Qinput.Parameters.ParamByName('pNominal').Value:=QDetailComm.FieldValues['Nominal'];
                          dm.Qinput.ExecSQL;

                          dm.Qinput.SQL.Clear;
                          dm.Qinput.SQL.Text:='Update taking_of_commission set Commission_total=Commission_total + :pNominal  Where Invoice_no=:pInvoice';
                          dm.Qinput.Prepared;
                          dm.Qinput.Parameters.ParamByName('pInvoice').Value:=sInvoice;
                          dm.Qinput.Parameters.ParamByName('pNominal').Value:=QDetailComm.FieldValues['Nominal'];
                          dm.Qinput.ExecSQL;


                          QDetailComm.Next;
                      end;
                  dm.Qview.Next;
              end;
          Qcomm.Next;
      end;
  tSearch2Change(Self);
  end;
end;

procedure TfrAdvertisingTrans.dtFilter3Change(Sender: TObject);
begin
  tSearch2Change(Self);
end;

procedure TfrAdvertisingTrans.dtFilter4Change(Sender: TObject);
begin
  tSearch2Change(Self);
end;

procedure TfrAdvertisingTrans.lvCommissionChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
 if lvCommission.Selected<> nil then
    begin
      lbl_Invoice_no.Caption:=lvCommission.Selected.Caption;
      lbl_invoice_date.Caption:=lvCommission.Selected.SubItems[0];
      lbl_sales_regno.Caption:=lvCommission.Selected.SubItems[1];
      lbl_sales_name.Caption:=lvCommission.Selected.SubItems[2];
      lbl_Commission_total.Caption:=lvCommission.Selected.SubItems[3];
      lbl_Status.Caption:=lvCommission.Selected.SubItems[4];


       SelectQuery('SELECT detail_taking_commission.advertising_no, sales_commission.sales_commission, '+
                   'advertising_transaction.pay_total, detail_taking_commission.commission_nominal '+
                   'FROM (advertising_transaction INNER JOIN detail_taking_commission ON advertising_transaction.advertising_no '+
                   '= detail_taking_commission.advertising_no) INNER JOIN sales_commission ON '+
                   '(sales_commission.advertising_no = detail_taking_commission.advertising_no) '+
                   'AND (advertising_transaction.advertising_no = sales_commission.advertising_no)'+
                   'WHERE detail_taking_commission.invoice_no='+ QuotedStr(Trim(lvCommission.Selected.Caption)));



       with dm.Qview,list_LV do
       begin
        lvCommission_detail.Items.Clear;
          while not Eof do
            begin
              list_LV:=lvCommission_detail.Items.Add;
                Caption:=IntToStr(RecNo);
                SubItems.Add(FieldValues['advertising_no']);
                SubItems.Add(FieldValues['pay_total']);
                SubItems.Add(FieldValues['sales_commission']);
                SubItems.Add(FieldValues['commission_nominal']);
              Next;
      end;




    end;
end;
end;

procedure TfrAdvertisingTrans.rgStatusClick(Sender: TObject);
begin
  tSearch2Change(Self);
end;

procedure TfrAdvertisingTrans.BitBtn1Click(Sender: TObject);
var sStatusCheck :Boolean;
begin
  if lvCommission.Selected<> nil then
  begin
    if lvCommission.Selected.SubItems[4]='Already' then sStatusCheck:=False else sStatusCheck:=True;
    ExcuteQuery('Update Taking_of_commission set Status='+BoolToStr(sStatusCheck)+' Where invoice_no="'+
    lvCommission.Selected.Caption+'"');
    tSearch2Change(Self);
  end;
end;

procedure TfrAdvertisingTrans.lvAdvertisingDblClick(Sender: TObject);
begin
 if lvAdvertising.Selected<> nil then
 begin
    Application.CreateForm(TfrDetailTransaction,frDetailTransaction);
    frDetailTransaction.cbCategory.ItemIndex:=0;
    frDetailTransaction.tSearch.Text:=lvAdvertising.Selected.Caption;
    frDetailTransaction.ShowModal;
 end;
end;

procedure TfrAdvertisingTrans.bMoreDetailClick(Sender: TObject);
begin
  lvAdvertisingDblClick(Self);
end;

procedure TfrAdvertisingTrans.bPaymentClick(Sender: TObject);
begin
  if lvAdvertising.Selected<> nil then
  begin
   dm.QPayment.SQL.Clear;
   dm.QPayment.SQL.Text:='SELECT advertising_transaction.advertising_no, '+
                          'advertising_transaction.trans_date, advertising_transaction.advertiser_id, '+
                          'advertiser.advertiser_name, advertiser.organization_name, '+
                          'advertiser.positions, detail_advertising_trans.adv_code, '+
                          'advertisement.adv_type, detail_advertising_trans.edition, '+
                          'advertisement.base_price, detail_advertising_trans.col_count, '+
                          'detail_advertising_trans.col_height, detail_advertising_trans.selling_price, '+
                          'detail_advertising_trans.disc, detail_advertising_trans.price_total '+
                          'FROM advertisement INNER JOIN ((advertiser INNER JOIN advertising_transaction ON '+
                          'advertiser.advertiser_id = advertising_transaction.advertiser_id) '+
                          'INNER JOIN detail_advertising_trans ON advertising_transaction.advertising_no = '+
                          'detail_advertising_trans.advertising_no) ON advertisement.adv_code = '+
                          'detail_advertising_trans.adv_code Where advertising_transaction.advertising_no="'+
                          lvAdvertising.Selected.Caption+'"';

  dm.frxRep_Master.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Rpts\Advertising.fr3');
  dm.frxRep_Master.ShowReport;
  end
  else
  MessageDlg ('Pilih data terlibih dahulu !',mtWarning,[mbOK],0);
end;

procedure TfrAdvertisingTrans.bPrintInvoiceClick(Sender: TObject);
begin
  dm.QPayment.SQL.Clear;
  if lvCommission.Selected<>nil then


    dm.QPayment.SQL.Text:='SELECT taking_of_commission.invoice_no, sales_commission.sales_regno, '+
                        'sales.sales_name, taking_of_commission.invoice_date, '+
                        'taking_of_commission.commission_total, detail_taking_commission.advertising_no, '+
                        'sales_commission.sales_commission, detail_taking_commission.commission_nominal '+
                        'FROM sales INNER JOIN (sales_commission INNER JOIN (taking_of_commission INNER '+
                        'JOIN detail_taking_commission ON taking_of_commission.invoice_no = '+
                        'detail_taking_commission.invoice_no) ON sales_commission.advertising_no '+
                        '= detail_taking_commission.advertising_no) ON sales.sales_regno = sales_commission.sales_regno '+
                        'Where taking_of_commission.invoice_no="'+ lvCommission.Selected.Caption +'"'

  else
  begin
      case  cbCategory2.ItemIndex of
        0:sCategory:='taking_of_commission.invoice_no';
        1:sCategory:='invoice_date';
        2:sCategory:='sales_commission.sales_regno';
        3:sCategory:='sales_name';
        4:sCategory:='commission_total';
        5:sCategory:='status';
      else exit;
     end;

    if rb_disfilter.Checked=True then
      dm.QPayment.SQL.Text:='SELECT taking_of_commission.invoice_no, sales_commission.sales_regno, '+
                        'sales.sales_name, taking_of_commission.invoice_date, '+
                        'taking_of_commission.commission_total, detail_taking_commission.advertising_no, '+
                        'sales_commission.sales_commission, detail_taking_commission.commission_nominal '+
                        'FROM sales INNER JOIN (sales_commission INNER JOIN (taking_of_commission INNER '+
                        'JOIN detail_taking_commission ON taking_of_commission.invoice_no = '+
                        'detail_taking_commission.invoice_no) ON sales_commission.advertising_no '+
                        '= detail_taking_commission.advertising_no) ON sales.sales_regno = sales_commission.sales_regno '+
                        'Where '+sCategory+' LIKE ' +QuotedStr(Trim(tSearch2.Text)+'%')

      else
      begin
      dm.QPayment.SQL.Text:='SELECT taking_of_commission.invoice_no, sales_commission.sales_regno, '+
                        'sales.sales_name, taking_of_commission.invoice_date, '+
                        'taking_of_commission.commission_total, detail_taking_commission.advertising_no, '+
                        'sales_commission.sales_commission, detail_taking_commission.commission_nominal '+
                        'FROM sales INNER JOIN (sales_commission INNER JOIN (taking_of_commission INNER '+
                        'JOIN detail_taking_commission ON taking_of_commission.invoice_no = '+
                        'detail_taking_commission.invoice_no) ON sales_commission.advertising_no '+
                        '= detail_taking_commission.advertising_no) ON sales.sales_regno = sales_commission.sales_regno'+
                        ' Where taking_of_commission.invoice_date Between :date1 and :date2'+
                        ' AND '+sCategory+' LIKE ' +QuotedStr(Trim(tSearch2.Text)+'%');

     dm.QPayment.Prepared;
     dm.QPayment.Parameters.ParamByName('date1').Value:=DateToStr(dtFilter3.Date);
     dm.QPayment.Parameters.ParamByName('date2').Value:=DateToStr(dtFilter4.Date);
     dm.QPayment.open;

     end;
  end;
    dm.frxRep_Master.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Rpts\Commission.fr3');
    dm.frxRep_Master.ShowReport;


end;

procedure TfrAdvertisingTrans.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TfrSearch,frSearch);
  frSearch.ShowModal;
end;

procedure TfrAdvertisingTrans.bDeleteClick(Sender: TObject);
begin
 if lvAdvertising.Selected<> nil then
 begin
    if MessageDlg ('Yakin hapus  !',mtWarning,[mbYes,mbNo],0)=mrYes then
    begin

    SelectQuery('select advertising_no from detail_taking_commission where advertising_no="'+ lvAdvertising.Selected.Caption +'"');
    if dm.Qview.RecordCount > 0  then
      MessageDlg(' Penghapusan  gagal, karena No Advertising '+ lvAdvertising.Selected.Caption +' Ddigunakan rincian pengambilan komisi iklan!',mtWarning,[mbOK],0)
    else
     begin
      ExcuteQuery('Delete from detail_advertising_trans where advertising_no="'+ lvAdvertising.Selected.Caption +'"');
      ExcuteQuery('Delete from sales_commission where advertising_no="'+ lvAdvertising.Selected.Caption +'"');
      ExcuteQuery('Delete from advertising_transaction where advertising_no="'+ lvAdvertising.Selected.Caption +'"');
      tSearchChange(Self);
     end;
    end;
 end
 else
 MessageDlg ('pilih item sebelum menghapus !',mtWarning,[mbOK],0);
end;

procedure TfrAdvertisingTrans.bRemoveFromListClick(Sender: TObject);
begin
 if lvCommission.Selected<>nil then
 begin
   if MessageDlg('Yakin kembalikan '+lvCommission.Selected.Caption+' ?'+#13+#13+' ke semula? ',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      ExcuteQuery('Delete from detail_taking_commission where invoice_no="'+lvCommission.Selected.Caption+'"');
      ExcuteQuery('Delete from taking_of_commission where invoice_no="'+lvCommission.Selected.Caption+'"');
      tSearch2Change(Self);
    end;
 end
 else
 MessageDlg ('pilih item terlibih dahulu !',mtWarning,[mbOK],0);
end;

procedure TfrAdvertisingTrans.bDeleteInvoiceClick(Sender: TObject);
begin
 if lvCommission.Selected<>nil then
 begin
   if MessageDlg('Yakin hapus '+lvCommission.Selected.Caption+' ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     Qcomm.SQL.Clear;
     Qcomm.SQL.Text:='SELECT taking_of_commission.invoice_no, sales_commission.advertising_no '+
                'FROM sales_commission INNER JOIN (taking_of_commission INNER JOIN '+
                'detail_taking_commission ON taking_of_commission.invoice_no = '+
                'detail_taking_commission.invoice_no) ON sales_commission.advertising_no '+
                '= detail_taking_commission.advertising_no Where taking_of_commission.invoice_no="'+
                lvCommission.Selected.Caption+'"';
                Qcomm.Open;

                if Qcomm.RecordCount>0 then
                begin
                  ExcuteQuery('Delete from detail_taking_commission where invoice_no="'+lvCommission.Selected.Caption+'"');
                  ExcuteQuery('Delete from taking_of_commission where invoice_no="'+lvCommission.Selected.Caption+'"');
                while not Qcomm.Eof do
                begin
                 ExcuteQuery('Delete from sales_commission where advertising_no="'+ Qcomm.FieldValues['advertising_no'] +'"');
                 Qcomm.Next;
                end;

                end;
      tSearch2Change(Self);
    end;
 end
 else
   MessageDlg('You most select item in the list items before delete !',mtWarning,[mbOK],0);
end;

procedure TfrAdvertisingTrans.tEditionContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tPageContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tFirstColumnContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tLastColumnContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tFirstPostContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tHeightContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tNext_EdCountContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TfrAdvertisingTrans.tDiscContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

end.
