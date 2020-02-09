unit InputTabloid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TfrInputTabloid = class(TForm)
    PageControl1: TPageControl;
    TabAdvt: TTabSheet;
    Bevel3: TBevel;
    pnlBG: TPanel;
    shpAdvt_new: TShape;
    bSave: TSpeedButton;
    Panel3: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    tEdition_advt: TEdit;
    tPage_advt: TEdit;
    lvAdvertisment: TListView;
    pnlPos2: TPanel;
    Label10: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    tFirst_Pos_Edit: TEdit;
    tFirst_Column_Edit: TEdit;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    tEdition_edit: TEdit;
    tPage_edit: TEdit;
    Edit1: TEdit;
    bAdd: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure tPage_advtKeyPress(Sender: TObject; var Key: Char);
    procedure tEdition_editKeyPress(Sender: TObject; var Key: Char);
    procedure tPage_editKeyPress(Sender: TObject; var Key: Char);
    procedure tFirst_Column_EditKeyPress(Sender: TObject; var Key: Char);
    procedure tFirst_Pos_EditKeyPress(Sender: TObject; var Key: Char);
    procedure tEditionKeyPress(Sender: TObject; var Key: Char);
    procedure tPageKeyPress(Sender: TObject; var Key: Char);
    procedure tFirstColumnKeyPress(Sender: TObject; var Key: Char);
    procedure tLastColumnKeyPress(Sender: TObject; var Key: Char);
    procedure tFirstPostKeyPress(Sender: TObject; var Key: Char);
    procedure tHeightKeyPress(Sender: TObject; var Key: Char);
    procedure tEdition_advtChange(Sender: TObject);
    procedure tPage_advtChange(Sender: TObject);
    procedure lvAdvertismentDblClick(Sender: TObject);
    procedure tFirst_Column_EditChange(Sender: TObject);
    procedure tFirst_Pos_EditChange(Sender: TObject);
    procedure tEdition_editChange(Sender: TObject);
    procedure tPage_editChange(Sender: TObject);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown6Click(Sender: TObject; Button: TUDBtnType);
    procedure tEdition_advtExit(Sender: TObject);

  private
    { Private declarations }
    procedure clear_text;
    procedure View_Advertisment;
    procedure delete_component;
    procedure edit_advt;
    procedure save_advt_edit;
    procedure position_Advt;
    procedure validation_Advt;

  public
    { Public declarations }


  end;

var
  frInputTabloid: TfrInputTabloid;



implementation

uses ProcedureFunction, DataModule, Tabloid, ADODB, DB, Math;

{$R *.dfm}

procedure TfrInputTabloid.validation_Advt;
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
procedure TfrInputTabloid.position_Advt;
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
      MessageDlg('1',mtWarning,[mbOK],0);
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
      MessageDlg('2',mtWarning,[mbOK],0);
      sColCount:=IntToStr(StrToInt( sColCount));
      jml_x:=StrToInt(sColCount);
    end
    else if (x1+jml_x-1) > 5 then
    begin
      MessageDlg('3',mtWarning,[mbOK],0);
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
      MessageDlg('4',mtWarning,[mbOK],0);
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
      MessageDlg('5',mtWarning,[mbOK],0);
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
  sfield:='detail_advertising';
  Validation_Advt;


end;



procedure TfrInputTabloid.edit_advt;
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


Procedure TfrInputTabloid.delete_component;
var j : integer;
begin
  for j:=0 to ComponentCount-1 do
  begin
    if Components[ComponentCount-1] is TShape then
      if TShape(Components[ComponentCount-1]).Tag=2 then
         TShape(Components[ComponentCount-1]).Destroy;
  end;
end;

procedure TfrInputTabloid.View_Advertisment;
var x:array[1..100] of TShape;
    sAdvtSELECTed:string;
begin

  if (sEdition=sOld_Edition) And (sPage=sOld_Page) then
      sAdvtSELECTed:=' And Not(First_Column ='+sOld_FirstCol+
                     ' And First_Position ='+sOld_FirstPos+')'
  else
    sAdvtSELECTed:='';

  SelectQuery('SELECT * FROM detail_advertising WHERE edition='+ sEdition +
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

          ispace:=(StrToInt(FieldValues['first_column'])*3)-3;
          Left:=(StrToInt(FieldValues['first_column'])*50)-50+ispace;

          ispace:=(StrToInt(FieldValues['column_count'])*3)-3;
			    Width:=(StrToInt(FieldValues['column_count'])*50)+ispace;

			    top:=StrToInt(FieldValues['first_position']);
			    Height:=StrToInt(FieldValues['column_height']);
			    Tag:=2;
        end;
	    Next;
    end;
  end;
end;
procedure TfrInputTabloid.clear_text;
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
procedure TfrInputTabloid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;


procedure TfrInputTabloid.FormActivate(Sender: TObject);
begin
 if bAdd.Tag=1 then
 begin
  bAdd.Caption:='Cancel';


  if PageControl1.TabIndex = 2 then
    if check_advt_edit=1 then tEdition_advt.SetFocus
    else if check_advt_edit=2 then tEdition_edit.SetFocus;

 end;
end;

procedure TfrInputTabloid.PageControl1Change(Sender: TObject);
begin

  if (PageControl1.TabIndex<> LastTabActive) And (bAdd.Tag=1) then
   if MessageDlg('Data belum tersimpan pilih apakah anda ingin kembali? klk yes untuk kembali atau no untuk membatalkan penyimpanan? ',mtWarning,[mbYes,mbNo],0)=mrYes then
    PageControl1.TabIndex:=LastTabActive
   else
   begin
    if (bAdd.Tag=0) and (PageControl1.TabIndex=2) then
      bAdd.Caption:='Edit'
    else bAdd.Caption:='Add';

    if bAdd.Tag=1 then
    begin
      check_tabloid:=0;
      check_news:=0;
      check_advt_edit:=0;
      delete_component;
    end;
   end;
  LastTabActive:=PageControl1.TabIndex;
end;


procedure TfrInputTabloid.bSaveClick(Sender: TObject);
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
        exit;
      end;
    if Components[i] is TComboBox then
      if (TComboBox(Components[i]).Tag=PageControl1.TabIndex) And
      (Trim(TComboBox(Components[i]).Text)='') then
      begin
        TComboBox(Components[i]).SetFocus;
        exit;
      end;
    end;





    if shpAdvt_new.Brush.Color=clBlack then
    begin
      MessageDlg('Pemasangan belum  benar bisa menimpa iklan lainya!',mtWarning,[mbOK],0);

      if PageControl1.TabIndex=2 then tFirst_Column_Edit.SetFocus;
      exit
    end;

    save_advt_edit;
    end;
    bAdd.Tag:=1;
end;

procedure TfrInputTabloid.tPage_advtKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tEdition_editKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tPage_editKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tFirst_Column_EditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tFirst_Pos_EditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tEditionKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tPageKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tFirstColumnKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tLastColumnKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tFirstPostKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tHeightKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8,#13]) then key:=#0;
end;

procedure TfrInputTabloid.tEdition_advtChange(Sender: TObject);
begin
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

procedure TfrInputTabloid.tPage_advtChange(Sender: TObject);
begin
  if PageControl1.TabIndex=2 then
  begin
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

      SelectQuery('SELECT detail_advertising.no_advertising, detail_advertising.edition, detail_advertising.page, '+
                  'detail_advertising.kd_advt, advertisment.type_advt, '+
                  'detail_advertising.first_column, detail_advertising.first_position, '+
                  'detail_advertising.column_count, detail_advertising.column_height '+
                  'FROM advertisment INNER JOIN detail_advertising ON '+
                  'advertisment.kd_advt = detail_advertising.kd_advt '+
                  'WHERE detail_advertising.edition='+tEdition_advt.Text+
                  ' And detail_advertising.page='+tPage_advt.Text);

      lvAdvertisment.Clear;
      with dm.Qview,list_LV do
      begin
        while not dm.Qview.Eof do
        begin
          list_LV:=lvAdvertisment.Items.Add;
          Caption:=IntToStr(RecNo);
          SubItems.Add(FieldValues['no_advertising']);
          SubItems.Add(FieldValues['kd_advt']);
          SubItems.Add(FieldValues['Type_advt']);
          SubItems.Add(FieldValues['First_Column']);
          SubItems.Add(FieldValues['First_position']);
          SubItems.Add(FieldValues['Column_Count']);
          SubItems.Add(FieldValues['Column_Height']);
          Next;
        end;
      end;

      Delete_Component;
      View_Advertisment;
      position_Advt;
    end;
  end;
end;






procedure TfrInputTabloid.lvAdvertismentDblClick(Sender: TObject);
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

  tEdition_edit.Text:=tEdition_advt.Text;
  tPage_edit.Text:=tPage_advt.Text;
  tFirst_Column_Edit.Text:=lvAdvertisment.SELECTed.SubItems[3];
  tFirst_Pos_Edit.Text:=lvAdvertisment.SELECTed.SubItems[4];

  pnlPos2.Enabled:=True;

  tEdition_edit.SetFocus;
  lvAdvertisment.Enabled:=False;
 end;
end;

procedure TfrInputTabloid.tFirst_Column_EditChange(Sender: TObject);
begin


 position_Advt;
end;

procedure TfrInputTabloid.tFirst_Pos_EditChange(Sender: TObject);
begin


  position_Advt;
end;

procedure TfrInputTabloid.tEdition_editChange(Sender: TObject);
begin

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

procedure TfrInputTabloid.tPage_editChange(Sender: TObject);
begin

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

    sfield:='detail_advertising';
    View_Advertisment;
    position_Advt;
  end;
end;

procedure TfrInputTabloid.UpDown5Click(Sender: TObject;
  Button: TUDBtnType);
begin
 UpDown5.Max:=5;
 UpDown5.Min:=1;

 if Length(tFirst_Column_Edit.Text)<>0 then
  UpDown5.Position:=StrToInt(tFirst_Column_Edit.Text)
 else
 UpDown5.Position:=1;
 UpDown5.Associate:=tFirst_Column_Edit;
end;

procedure TfrInputTabloid.UpDown6Click(Sender: TObject;
  Button: TUDBtnType);
begin
 UpDown6.Max:=pnlBG.Height-StrToInt(sColHeight);
 UpDown6.Min:=0;

  if Length(tFirst_Pos_Edit.Text)<>0 then
  UpDown6.Position:=StrToInt(tFirst_Pos_Edit.Text)
 else
  UpDown6.Position:=0;
 UpDown6.Associate:=tFirst_Pos_Edit;
end;

procedure TfrInputTabloid.tEdition_advtExit(Sender: TObject);
begin
 if Length(tEdition_advt.Text)<>0 then
 begin
  SelectQuery('SELECT status FROM tabloid WHERE status="publish" And edition='+sEdition);
  if dm.Qview.RecordCount>0 then
  begin
    ShowMessage('Edisi tersebut sudah dipublish sehingga tidak diedit posisi iklan pada edisi tersebut');
    tEdition_advt.Clear;
    tEdition_advt.SetFocus;
    exit
  end;
 end;

end;
end.
