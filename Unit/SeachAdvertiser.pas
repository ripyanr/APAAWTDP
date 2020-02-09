unit SeachAdvertiser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TfrSearch = class(TForm)
    tSearch: TEdit;
    cbCategory: TComboBox;
    lvAdvertiser: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lvAdvertiserDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSearch: TfrSearch;

implementation

uses DataModule, ProcedureFunction, AdvertisingTrans;

{$R *.dfm}

procedure TfrSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=caFree;
 frAdvertisingTrans.tFind_Adsr.SetFocus;
end;

procedure TfrSearch.tSearchChange(Sender: TObject);
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

procedure TfrSearch.FormCreate(Sender: TObject);
begin
  with cbCategory do
  begin
  Items.Add('Advertiser No Identity');
  Items.Add('Advertiser Name');
  Items.Add('Organization');
  Items.Add('Position');
  Items.Add('Advertiser Contact');
  Items.Add('Advertiser Email');
  Items.Add('Advertiser Address');
  end;
  cbCategory.ItemIndex:=0;
  tSearchChange(Self);
end;

procedure TfrSearch.lvAdvertiserDblClick(Sender: TObject);
begin
 if lvAdvertiser.Selected<>nil then
    begin
     frAdvertisingTrans.tFind_Adsr.Text:=lvAdvertiser.Selected.Caption;
     close;
    end;
end;

end.
