unit AdvPosition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ExtCtrls, StdCtrls;

type
  TfrAdvPosition = class(TForm)
    Panel3: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    tEdition_advt: TEdit;
    tPage_advt: TEdit;
    pnlPos2: TPanel;
    Label10: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    tEdition_edit: TEdit;
    tPage_edit: TEdit;
    tFirst_Column_Edit: TEdit;
    tFirst_Pos_Edit: TEdit;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    pnlBG: TPanel;
    shpAdvt_new: TShape;
    Bevel3: TBevel;
    bSave: TSpeedButton;
    lvAdvertisment: TListView;
    bAdd: TSpeedButton;
    tContent: TEdit;
    lbl1: TLabel;
    Shape1: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tEdition_advtChange(Sender: TObject);
    procedure tPage_advtChange(Sender: TObject);
    procedure tEdition_editChange(Sender: TObject);
    procedure tPage_editChange(Sender: TObject);
    procedure tFirst_Column_EditChange(Sender: TObject);
    procedure tFirst_Pos_EditChange(Sender: TObject);
    procedure lvAdvertismentDblClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown6Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
      procedure clear_text;
      procedure delete_component;
      procedure edit_advt;
      procedure save_advt_edit;
      procedure position_Advt;
      procedure validation_Advt;
      procedure View_Advertisement;
  public
    { Public declarations }
  end;

var
  frAdvPosition: TfrAdvPosition;

implementation

uses DataModule, ProcedureFunction, DetailAdvertiserment;

{$R *.dfm}
procedure TfrAdvPosition.clear_text;
var i : integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TEdit then TEdit(Components[i]).Clear;
    if Components[i] is TComboBox then TComboBox(Components[i]).Clear;
    if Components[i] is TMemo then TMemo(Components[i]).Clear;
  end;
  lvAdvertisment.Clear;
end;


procedure TfrAdvPosition.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

Procedure TfrAdvPosition.delete_component;
var j : integer;
begin
  for j:=0 to ComponentCount-1 do
  begin
    if Components[ComponentCount-1] is TShape then
      if TShape(Components[ComponentCount-1]).Tag=2 then
         TShape(Components[ComponentCount-1]).Destroy;
  end;
end;

procedure TfrAdvPosition.edit_advt;
begin
if bAdd.Tag=0 then
  begin
    check_advt_edit:=1;
    bAdd.Tag:=1;
    validation_Advt;
    tEdition_advt.SetFocus;
  end
  else
  begin
    if check_advt_edit=2 then Close;
    bAdd.Tag:=0;
  end;
end;

procedure TfrAdvPosition.save_advt_edit;
begin
With dm,dm.Qinput do
 begin
  SQL.Clear;
 SQL.Text:='UPDATE detail_advertising_trans set summary_of_adv=:pContent, edition=:pEdition, Page=:pPage,'+
                ' First_col=:pFirstCol, First_pos=:pFirstPos'+
                ' WHERE edition='+sOld_Edition+' And page='+ sOld_Page +
                ' And First_col='+sOld_FirstCol+' And First_Pos='+sOld_FirstPos;

    Prepared;
    Parameters.ParamByName('pContent').Value:=tContent.Text;
    Parameters.ParamByName('pEdition').Value:=tEdition_edit.Text;
    Parameters.ParamByName('pPage').Value:=tPage_edit.Text;
    Parameters.ParamByName('pFirstCol').Value:=tFirst_Column_Edit.Text;
    Parameters.ParamByName('pFirstPos').Value:=tFirst_Pos_Edit.Text;

    ExecSQL;

  if frDetailTransaction<> nil then frDetailTransaction.tSearchChange(Self);
  if check_advt_edit=2 then frAdvPosition.Close;
 end;
end;


procedure TfrAdvPosition.validation_Advt;
begin

  if Length(tFirst_Column_Edit.text)=0 then exit;
  if Length(tFirst_Pos_Edit.Text)=0 then exit;

  sFirstCol:=tFirst_Column_Edit.text;
  sFirstPos:=tFirst_Pos_Edit.Text;


  Query_PosValidation;



  if dm.Qview.RecordCount>0 then
  begin
    shpAdvt_new.Brush.Color:=clBlack;
  end
  else
    shpAdvt_new.Brush.Color:=clWhite;

end;

procedure TfrAdvPosition.position_Advt;
begin
  if (Length(tFirst_Pos_Edit.Text)=0) or
  (Length(tFirst_Column_Edit.Text)=0) then
  begin
    shpAdvt_new.Visible:=False;
    exit;
  end;

  shpAdvt_new.Visible:=True;
 //--------------------- Validation First Column -------------------------------

   if Trim(tFirst_Column_Edit.text)='' then
   begin
    x1:=0;
    sColCount:='';
   end
   else
   begin
    x1:=StrToInt(tFirst_Column_Edit.text);
    if (x1+StrToInt(sColCount)-1)>5 then
    begin
      MessageDlg('Kolom Pertama terlalu besar !',mtWarning,[mbOK],0);
      tFirst_Column_Edit.text:=IntToStr(5-StrToInt( sColCount)+1);
      x1:=StrToInt(tFirst_Column_Edit.text);
      sColCount:=IntToStr(StrToInt( sColCount));
    end;
   end;

//------------------------Validation Column Count ------------------------------

   if Trim(sColCount)='' then  jml_x:=0 else
   begin
    jml_x:=StrToInt(sColCount);
    if jml_x < StrToInt( sColCount) then
    begin
      MessageDlg('Jml Kolom terlalu sedikit!',mtWarning,[mbOK],0);
      sColCount:=IntToStr(StrToInt( sColCount));
      jml_x:=StrToInt(sColCount);
    end
    else if (x1+jml_x-1) > 5 then
    begin
      MessageDlg('Jumlah kolom terlalu besar !',mtWarning,[mbOK],0);
      sColCount:=IntToStr(jml_x-((x1+jml_x-1)-5));
      jml_x:=StrToInt(sColCount);
    end;

   end;

//---------------------------Validation First Post -----------------------------

   if Trim(tFirst_Pos_Edit.Text)='' then
   begin
    y1:=0;
    sColHeight:='';
   end
   else
   begin
    y1:=StrToInt(tFirst_Pos_Edit.Text);
    if (y1+StrToInt( sColHeight)) > pnlBG.Height then
    begin
      MessageDlg('Posisi pertama terlalu besar !',mtWarning,[mbOK],0);
      y1:=y1-((y1+StrToInt( sColHeight))-pnlBG.Height);
      tFirst_Pos_Edit.Text:=IntToStr(y1);
    end;
   end;
//------------------------Validation Column Height -----------------------------


   if Trim(sColHeight)='' then
    jml_y:=0
   else
   begin
    jml_y:=StrToInt(sColHeight);
    if (y1+jml_y) > pnlBG.Height then
    begin
      MessageDlg('Kolom terlalu tinggi',mtWarning,[mbOK],0);
      jml_y:=jml_y-((y1+jml_y)-pnlBG.Height);
      sColHeight:=IntToStr(jml_y);
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


  sEdition:=tEdition_edit.Text;
  sfield:='detail_advertising_trans';
  Validation_Advt;


end;

procedure TfrAdvPosition.tEdition_advtChange(Sender: TObject);
begin
  if tEdition_advt.Text='0' then tEdition_advt.Text:='1';
 if Length(tEdition_advt.Text)=0 then
  begin

    if Length(tPage_advt.Text)<>0 then tPage_advt.Clear;
    if Length(tEdition_edit.Text)<>0 then tEdition_edit.Clear;
    if Length(tPage_edit.Text)<>0 then tPage_edit.Clear;
    if Length(tFirst_Column_Edit.Text)<>0 then tFirst_Column_Edit.Clear;
    if Length(tFirst_Pos_Edit.Text)<>0 then tFirst_Pos_Edit.Clear;

    lvAdvertisment.Clear;
    tPage_advt.Enabled:=False;
    pnlPos2.Enabled:=False;
  end
  else
  begin
    sEdition:=tEdition_advt.Text;
    tPage_advt.Enabled:=True;
    if Length(tPage_advt.Text)<>0 then tPage_advtChange(Self);

  end;
end;

procedure TfrAdvPosition.tPage_advtChange(Sender: TObject);
begin
  if tPage_advt.Text='0' then tPage_advt.Text:='1';
  if Length(tEdition_edit.Text)<>0 then tEdition_edit.Clear;
    if Length(tPage_edit.Text)<>0 then tPage_edit.Clear;
    if Length(tFirst_Column_Edit.Text)<>0 then tFirst_Column_Edit.Clear;
    if Length(tFirst_Pos_Edit.Text)<>0 then tFirst_Pos_Edit.Clear;

    sOld_Edition:='-1';
    sOld_Page:='-1';

    lvAdvertisment.Clear;
    if Length(tPage_advt.Text)=0 then
     pnlPos2.Enabled:=False
    else
    begin
      iedition:=StrToInt(tEdition_advt.Text);
      lvAdvertisment.Enabled:=True;

      SelectQuery('SELECT detail_advertising_trans.advertising_no, '+
                  'detail_advertising_trans.adv_code, detail_advertising_trans.summary_of_adv, '+
                  'detail_advertising_trans.edition,detail_advertising_trans.first_col,detail_advertising_trans.first_pos, detail_advertising_trans.col_count, '+
                  'detail_advertising_trans.col_height FROM detail_advertising_trans '+
                  'WHERE detail_advertising_trans.edition='+tEdition_advt.Text+
                  ' And detail_advertising_trans.page='+tPage_advt.Text);

      lvAdvertisment.Clear;
      with dm.Qview,list_LV do
      begin
        while not dm.Qview.Eof do
        begin
          list_LV:=lvAdvertisment.Items.Add;
          Caption:=IntToStr(RecNo);
          SubItems.Add(FieldValues['advertising_no']);
          SubItems.Add(FieldValues['adv_code']);
          SubItems.Add(FieldValues['summary_of_adv']);
          SubItems.Add(FieldValues['First_Col']);
          SubItems.Add(FieldValues['First_pos']);
          SubItems.Add(FieldValues['Col_Count']);
          SubItems.Add(FieldValues['Col_Height']);
          Next;
        end;
      end;

      Delete_Component;
      sPage:=tPage_advt.Text;
      View_Advertisement;
      position_Advt;
    end;
end;
procedure TfrAdvPosition.View_Advertisement;
var x:array[1..100] of TShape;
    sAdvtSELECTed:string;
begin

  if (sEdition=sOld_Edition) And (sPage=sOld_Page) then
      sAdvtSELECTed:=' And Not(First_Col ='+sOld_FirstCol+
                     ' And First_Pos ='+sOld_FirstPos+')'
  else
    sAdvtSELECTed:='';

  SelectQuery('SELECT * FROM detail_advertising_trans WHERE edition='+ sEdition +
  ' and page='+sPage+ sAdvtSELECTed);
  with dm.Qview do
  begin
    First;
	  while not Eof do
    begin
		  x[RecNo]:=TShape.Create(Self);
		    with x[RecNo] do
        begin
			    Parent:=pnlBG;
          Name:='advt'+IntToStr(RecNo);
          Brush.Color:=clGreen;

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
procedure TfrAdvPosition.tEdition_editChange(Sender: TObject);
begin
 if tEdition_edit.Text='0' then tEdition_edit.Text:='1';
  if Length(tEdition_edit.Text)=0 then
  begin
    if Length(tPage_edit.Text)<>0 then tPage_edit.Clear;
    if Length(tFirst_Column_Edit.Text)<>0 then tFirst_Column_Edit.Clear;
    if Length(tFirst_Pos_Edit.Text)<>0 then tFirst_Pos_Edit.Clear;
    tPage_edit.Enabled:=False;
    tFirst_Column_Edit.Enabled:=False;
    tFirst_Pos_Edit.Enabled:=False;
  end
  else
  begin
    tPage_edit.Enabled:=True;
    tFirst_Column_Edit.Enabled:=True;
    tFirst_Pos_Edit.Enabled:=True;
    sEdition:=tEdition_edit.Text;
    if Length(tPage_edit.Text)<>0 then tPage_editChange(Self);
  end;
end;

procedure TfrAdvPosition.tPage_editChange(Sender: TObject);
begin
  if tPage_edit.Text='0' then tPage_edit.Text:='1';
if Length(tPage_edit.Text)=0 then
  begin
    if Length(tFirst_Column_Edit.Text)<>0 then tFirst_Column_Edit.Clear;
    if Length(tFirst_Pos_Edit.Text)<>0 then tFirst_Pos_Edit.Clear;
    tFirst_Column_Edit.Enabled:=False;
    tFirst_Pos_Edit.Enabled:=False;
  end
  else
  begin
    tFirst_Column_Edit.Enabled:=True;
    tFirst_Pos_Edit.Enabled:=True;

    sPage:=tPage_edit.Text;
    Delete_Component;

    sfield:='detail_advertising_trans';
    View_Advertisement;
    position_Advt;
  end;
end;

procedure TfrAdvPosition.tFirst_Column_EditChange(Sender: TObject);
begin
  if tFirst_Column_Edit.Text='0' then tFirst_Column_Edit.Text:='1';
 position_Advt;
end;

procedure TfrAdvPosition.tFirst_Pos_EditChange(Sender: TObject);
begin
  if tFirst_Pos_Edit.Text='0' then tFirst_Pos_Edit.Text:='1';
  position_Advt;
end;

procedure TfrAdvPosition.lvAdvertismentDblClick(Sender: TObject);
begin
if lvAdvertisment.SELECTed<> nil then
 begin

  sOld_Edition:=tEdition_advt.Text;
  sOld_Page:=tPage_advt.Text;
  sOld_FirstCol:=lvAdvertisment.SELECTed.SubItems[3];
  sOld_FirstPos:=lvAdvertisment.SELECTed.SubItems[4];

  sEdition:=tEdition_advt.Text;
  sPage:=tPage_advt.Text;
  sFirstCol:=lvAdvertisment.SELECTed.SubItems[3];
  sFirstPos:=lvAdvertisment.SELECTed.SubItems[4];

  sColCount:=lvAdvertisment.SELECTed.SubItems[5];
  sColHeight:=lvAdvertisment.SELECTed.SubItems[6];

  tContent.Text:=lvAdvertisment.Selected.SubItems[2];
  tEdition_edit.Text:=tEdition_advt.Text;
  tPage_edit.Text:=tPage_advt.Text;
  tFirst_Column_Edit.Text:=lvAdvertisment.SELECTed.SubItems[3];
  tFirst_Pos_Edit.Text:=lvAdvertisment.SELECTed.SubItems[4];


  pnlPos2.Enabled:=True;

  tEdition_edit.SetFocus;
  lvAdvertisment.Enabled:=False;
 end;
end;

procedure TfrAdvPosition.bAddClick(Sender: TObject);
begin
 delete_component;
 clear_text;
  if bAdd.Tag=1 then
  begin

    panel3.Enabled:=False;

  end
  else
  begin
    panel3.Enabled:=True;
  end;
    edit_advt;

  case bAdd.Tag of
  0: bAdd.Caption:='Add';
  1: bAdd.Caption:='Cancel';
 end;

 if bAdd.Tag=0 then bAdd.Caption:='Edit';


  case bAdd.Tag of
  0: bSave.Caption:='Close';
  1: bSave.Caption:='Save';
 end;
end;


procedure TfrAdvPosition.FormActivate(Sender: TObject);
begin
if bAdd.Tag=1 then bAdd.Caption:='Cancel'
else
if check_advt_edit=1 then tEdition_advt.SetFocus
    else if check_advt_edit=2 then tEdition_edit.SetFocus;
end;

procedure TfrAdvPosition.bSaveClick(Sender: TObject);
var i : integer;
begin
  if bAdd.Tag=0 then Close
  else
  begin
    for i:=0 to ComponentCount-1 do
    begin
    if Components[i] is TEdit then
      if (Trim(TEdit(Components[i]).Text)='') then
      begin
        TEdit(Components[i]).SetFocus;
        exit;
      end;
    if Components[i] is TComboBox then
      if (Trim(TComboBox(Components[i]).Text)='') then
      begin
        TComboBox(Components[i]).SetFocus;
        exit;
      end;
    end;


    if shpAdvt_new.Brush.Color=clBlack then
    begin
      MessageDlg('Ruang iklan tersebut sudah dipesan oleh orang lain!',mtWarning,[mbOK],0);
      tFirst_Column_Edit.SetFocus;
      exit
    end;

   save_advt_edit;
   bAdd.Tag:=1;
   bAddClick(Self);
  end;

end;

procedure TfrAdvPosition.UpDown5Click(Sender: TObject; Button: TUDBtnType);
begin
 UpDown5.Max:=5;
 UpDown5.Min:=1;

 if Length(tFirst_Column_Edit.Text)<>0 then
  UpDown5.Position:=StrToInt(tFirst_Column_Edit.Text)
 else
 UpDown5.Position:=1;
 UpDown5.Associate:=tFirst_Column_Edit;
end;

procedure TfrAdvPosition.UpDown6Click(Sender: TObject; Button: TUDBtnType);
begin
 UpDown6.Max:=pnlBG.Height-StrToInt(sColHeight);
 UpDown6.Min:=0;

  if Length(tFirst_Pos_Edit.Text)<>0 then
  UpDown6.Position:=StrToInt(tFirst_Pos_Edit.Text)
 else
  UpDown6.Position:=0;
 UpDown6.Associate:=tFirst_Pos_Edit;
end;

end.
