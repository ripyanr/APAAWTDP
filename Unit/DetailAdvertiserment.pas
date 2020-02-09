unit DetailAdvertiserment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls;

type
  TfrDetailTransaction = class(TForm)
    lvAdvertisment: TListView;
    cbCategory: TComboBox;
    tSearch: TEdit;
    bEdit_Advt: TSpeedButton;
    lbl1: TLabel;
    procedure tSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bEdit_AdvtClick(Sender: TObject);
    procedure lvAdvertismentDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDetailTransaction: TfrDetailTransaction;

implementation

uses DataModule, ProcedureFunction, AdvPosition;

{$R *.dfm}

procedure TfrDetailTransaction.tSearchChange(Sender: TObject);
begin
 Case cbCategory.ItemIndex Of
    0:sCategory:='detail_advertising_trans.advertising_no';
    1:sCategory:='detail_advertising_trans.adv_code';
    2:sCategory:='summary_of_adv';
    3:sCategory:='edition';
    4:sCategory:='page';
  else exit;
  end;


        SelectQuery('SELECT detail_advertising_trans.advertising_no, detail_advertising_trans.adv_code, '+
                    'advertisement.adv_type, detail_advertising_trans.summary_of_adv, detail_advertising_trans.edition, '+
                    'detail_advertising_trans.page, detail_advertising_trans.first_col, detail_advertising_trans.first_pos, '+
                    'detail_advertising_trans.col_height, detail_advertising_trans.col_count, detail_advertising_trans.selling_price, '+
                    'detail_advertising_trans.disc, detail_advertising_trans.price_total ' +
                    'FROM advertisement INNER JOIN detail_advertising_trans ON '+
                    'advertisement.adv_code = detail_advertising_trans.adv_code '+
                    'WHERE '+ sCategory +' LIKE ' + QuotedStr(Trim(tSearch.Text)+'%'));



     lvAdvertisment.Clear;
    with dm.Qview,list_LV do
    begin
      while not Eof do
      begin
      list_LV:=lvAdvertisment.Items.Add;
      Caption:=FieldValues['advertising_no'];
      SubItems.Add(FieldValues['adv_code']);
      SubItems.Add(FieldValues['adv_type']);
      SubItems.Add(FieldValues['summary_of_adv']);
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
    end;
end;

procedure TfrDetailTransaction.FormCreate(Sender: TObject);
begin
  with cbCategory do
  begin
    cbCategory.Items.Clear;
    Items.Add('No Advetising');
    Items.Add('Kode Iklan');
    Items.Add('Isi Iklan');
    Items.Add('Edisi');
    Items.Add('Halaman');
  end;
end;

procedure TfrDetailTransaction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TfrDetailTransaction.bEdit_AdvtClick(Sender: TObject);
begin
If lvAdvertisment.SELECTed<>nil then
    begin
      check_advt_edit:=2;
      Application.CreateForm(TfrAdvPosition,frAdvPosition);

        frAdvPosition.tEdition_advt.Text:=lvAdvertisment.SELECTed.SubItems[3];
        frAdvPosition.tPage_advt.Text:=lvAdvertisment.SELECTed.SubItems[4];

        sOld_Edition:=lvAdvertisment.SELECTed.SubItems[3];;
        sOld_Page:=lvAdvertisment.SELECTed.SubItems[4];

        sOld_FirstCol:=lvAdvertisment.SELECTed.SubItems[5];
        sOld_FirstPos:=lvAdvertisment.SELECTed.SubItems[7];

        sEdition:=frAdvPosition.tEdition_advt.Text;
        sPage:=frAdvPosition.tPage_advt.Text;
        sFirstCol:=lvAdvertisment.SELECTed.SubItems[5];
        sFirstPos:=lvAdvertisment.SELECTed.SubItems[7];

        sColCount:=lvAdvertisment.SELECTed.SubItems[6];
        sColHeight:=lvAdvertisment.SELECTed.SubItems[8];

        frAdvPosition.tContent.Text:=lvAdvertisment.Selected.SubItems[2];
        
        frAdvPosition.tEdition_edit.Text:=frAdvPosition.tEdition_advt.Text;
        frAdvPosition.tPage_edit.Text:=frAdvPosition.tPage_advt.Text;
        frAdvPosition.tFirst_Column_Edit.Text:=lvAdvertisment.SELECTed.SubItems[5];
        frAdvPosition.tFirst_Pos_Edit.Text:=lvAdvertisment.Selected.SubItems[7];

        frAdvPosition.pnlPos2.Enabled:=True;


        frAdvPosition.lvAdvertisment.Enabled:=False;

      frAdvPosition.bAdd.Tag:=1;
      frAdvPosition.ShowModal;
    end;
end;

procedure TfrDetailTransaction.lvAdvertismentDblClick(Sender: TObject);
begin
   bEdit_AdvtClick(Self);
end;

end.
