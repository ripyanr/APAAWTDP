unit ReportMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, OleCtrls, DB, frxClass, 
  frxADOComponents;

type
  TfrReportMaster = class(TForm)
    rgReportMaster: TRadioGroup;
    bPrint: TBitBtn;
    cekFilter: TCheckBox;
    cbCategory: TComboBox;
    cbSearch: TComboBox;
    bPrintPriview: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cekFilterClick(Sender: TObject);
    procedure rgReportMasterClick(Sender: TObject);
    procedure cbCategoryChange(Sender: TObject);
    procedure bPrintPriviewClick(Sender: TObject);
    procedure cbSearchChange(Sender: TObject);
    procedure bPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frReportMaster: TfrReportMaster;
  sReportOpion : string;
  sFormula:string;
implementation

uses DataModule, ProcedureFunction;

{$R *.dfm}

procedure TfrReportMaster.FormCreate(Sender: TObject);
begin
cbCategory.Enabled:=False;
cbSearch.Enabled:=False;
rgReportMasterClick(Self);
end;

procedure TfrReportMaster.cekFilterClick(Sender: TObject);
begin
  if cekFilter.Checked=False then
    begin
      cbCategory.Enabled:=False;
      cbSearch.Enabled:=False;
    end
  else
    begin
      cbCategory.Enabled:=True;
      cbSearch.Enabled:=True;
    end;

    cbCategoryChange(Self);
    cbSearchChange(Self);

end;

procedure TfrReportMaster.rgReportMasterClick(Sender: TObject);
begin
  cbCategory.Items.Clear;
 if rgReportMaster.ItemIndex=0 then
    begin
      sReportOpion:='\Rpts\Advertiser.fr3';
      cbCategory.Items.Add('Organization / Company');
      cbCategory.Items.Add('Address');

    end
 else if rgReportMaster.ItemIndex=1 then
    begin
      sReportOpion:='\Rpts\sales.fr3';
      cbCategory.Items.Add('Address');
    end
 else if rgReportMaster.ItemIndex=2 then
    begin
       sReportOpion:='\Rpts\Advertisement.fr3';
       cbCategory.Items.Add('Color');
    end;
 cbCategory.ItemIndex:=0;
 cbCategoryChange(Self);
end;

procedure TfrReportMaster.cbCategoryChange(Sender: TObject);
begin
  cbSearch.Items.Clear;
  if rgReportMaster.ItemIndex=0 then
  begin
    if cbCategory.ItemIndex=0 then
    begin
      SelectQuery('Select Distinct organization_name from advertiser');
      while not dm.Qview.Eof do
      begin
        cbSearch.Items.Add(dm.Qview.FieldValues['organization_name']);
        dm.Qview.Next;
        cbSearch.ItemIndex:=0;
      end;
    end
    else if cbCategory.ItemIndex=1 then
    begin
      SelectQuery('Select Distinct advertiser_address from advertiser');
      while not dm.Qview.Eof do
      begin
        cbSearch.Items.Add(dm.Qview.FieldValues['advertiser_address']);
        dm.Qview.Next;
        cbSearch.ItemIndex:=0;
      end;
    end
    else exit
  end

  else if rgReportMaster.ItemIndex=1 then
  begin
   if cbCategory.ItemIndex=0 then
    begin
      SelectQuery('Select Distinct sales_address from sales');
      while not dm.Qview.Eof do
      begin
        cbSearch.Items.Add(dm.Qview.FieldValues['sales_address']);
        cbSearch.ItemIndex:=0;
        dm.Qview.Next;
      end;
    end;
  end

  else if rgReportMaster.ItemIndex=2 then
  begin
    cbSearch.Items.Add('BW');
    cbSearch.Items.Add('FC');
    cbSearch.ItemIndex:=0;
  end;
cbSearchChange(Self);
end;

procedure TfrReportMaster.bPrintPriviewClick(Sender: TObject);
begin

 if (cekFilter.Checked=True) and (Trim(cbSearch.Text)='') then
  begin
    ShowMessage(' Search cannot empty !!!');
    Exit
  end;

  with dm.frxRep_Master do
  begin
    Hide;
    dm.QR_Advtsm.SQL.Text:=sFormula;
    dm.QR_Sales.SQL.Text:=sFormula;
    dm.QR_Advr.SQL.Text:=sFormula;
    LoadFromFile(ExtractFilePath(Application.ExeName)+sReportOpion);
    ShowReport;
    Close;
  end;

end;

procedure TfrReportMaster.cbSearchChange(Sender: TObject);
begin
  if cekFilter.Checked=true then
  begin
    if rgReportMaster.ItemIndex=0 then
    begin
      If cbCategory.ItemIndex=0 then sFormula:='Select * from Advertiser where organization_name="'+cbSearch.Text+'"'
      else if cbCategory.ItemIndex=1 then sFormula:='Select * from Advertiser where advertiser_address="'+cbSearch.Text+'"';
    end
    else if rgReportMaster.ItemIndex=1 then
      sFormula:='Select * from sales where sales_address="'+cbSearch.Text+'"'
    else if rgReportMaster.ItemIndex=2 then
      sFormula:='Select * from Advertisement where color_type="'+cbSearch.Text+'"';
  end

  else
  begin
    if rgReportMaster.ItemIndex=0 then sFormula:='Select * from Advertiser'
    else if rgReportMaster.ItemIndex=1 then sFormula:='Select * from sales'
    else if rgReportMaster.ItemIndex=2 then sFormula:='Select * from Advertisement';
  end;
end;

procedure TfrReportMaster.bPrintClick(Sender: TObject);
begin
   if (cekFilter.Checked=True) and (Trim(cbSearch.Text)='') then
  begin
    ShowMessage(' Search cannot empty !!!');
    Exit
  end;

  with dm.frxRep_Master do
  begin
    Hide;
    dm.QR_Advtsm.SQL.Text:=sFormula;
    dm.QR_Sales.SQL.Text:=sFormula;
    dm.QR_Advr.SQL.Text:=sFormula;
    LoadFromFile(ExtractFilePath(Application.ExeName)+sReportOpion);
    Print;
    Close;
  end;
end;

procedure TfrReportMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
