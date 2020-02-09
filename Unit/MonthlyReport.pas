unit MonthlyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrMonthReport = class(TForm)
    Panel5: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    rb_filterDate: TRadioButton;
    dtFilter3: TDateTimePicker;
    dtFilter4: TDateTimePicker;
    rb_all: TRadioButton;
    RgOption: TRadioGroup;
    bPrintPriview: TBitBtn;
    bPrint: TBitBtn;
    procedure bPrintPriviewClick(Sender: TObject);
    procedure rb_allClick(Sender: TObject);
    procedure rb_filterDateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure m_report;
  public
    { Public declarations }
  end;

var
  frMonthReport: TfrMonthReport;
  sQuery: string;
  spath: string;
implementation

uses DataModule, frxClass, ProcedureFunction;

{$R *.dfm}
procedure TfrMonthReport. m_report;
begin
  dm.QReport.SQL.Clear;
   if RgOption.ItemIndex=0 then
   begin
      spath:='\rpts\Monthly_advertising.fr3';
      if rb_all.Checked=True then
      begin
      dm.QReport.SQL.Text:='SELECT advertising_transaction.advertising_no, advertising_transaction.trans_date, '+
                            'advertising_transaction.advertiser_id, advertiser.advertiser_name, '+
                            'advertising_transaction.pay_total FROM advertiser INNER JOIN '+
                            'advertising_transaction ON advertiser.advertiser_id = '+
                            'advertising_transaction.advertiser_id';
      dm.QReport.Open;
      end
    else
      begin
    dm.QReport.SQL.Text:='SELECT advertising_transaction.advertising_no, advertising_transaction.trans_date, '+
                            'advertising_transaction.advertiser_id, advertiser.advertiser_name, '+
                            'advertising_transaction.pay_total FROM advertiser INNER JOIN '+
                            'advertising_transaction ON advertiser.advertiser_id = '+
                            'advertising_transaction.advertiser_id WHERE advertising_transaction.trans_date Between :date3 and :date4';

         dm.QReport.Prepared;
         dm.QReport.Parameters.ParamByName('date3').Value:=DateToStr(dtFilter3.Date);
         dm.QReport.Parameters.ParamByName('date4').Value:=DateToStr(dtFilter4.Date);
         dm.QReport.Open;

    end;
   end
   else
   begin
   spath:='\rpts\Monthly_commission.fr3';
      if rb_all.Checked=True then
      begin
      dm.QReport.SQL.Text:='SELECT distinct taking_of_commission.invoice_no, taking_of_commission.invoice_date, '+
                'sales.sales_regno, sales.sales_name, taking_of_commission.commission_total, '+
                'taking_of_commission.status FROM sales INNER JOIN '+
                '(taking_of_commission INNER JOIN (sales_commission INNER JOIN detail_taking_commission '+
                'ON sales_commission.advertising_no = detail_taking_commission.advertising_no) ON '+
                'taking_of_commission.invoice_no = detail_taking_commission.invoice_no) ON '+
                'sales.sales_regno = sales_commission.sales_regno';
      dm.QReport.Open;
      end
    else
      begin

      dm.QReport.SQL.Text:='SELECT distinct taking_of_commission.invoice_no, taking_of_commission.invoice_date, '+
                'sales.sales_regno, sales.sales_name, taking_of_commission.commission_total, '+
                'taking_of_commission.status FROM sales INNER JOIN '+
                '(taking_of_commission INNER JOIN (sales_commission INNER JOIN detail_taking_commission '+
                'ON sales_commission.advertising_no = detail_taking_commission.advertising_no) ON '+
                'taking_of_commission.invoice_no = detail_taking_commission.invoice_no) ON '+
                'sales.sales_regno = sales_commission.sales_regno '+
                'WHERE taking_of_commission.invoice_date BETWEEN :date3 AND :date4';

     dm.QReport.Prepared;
     dm.QReport.Parameters.ParamByName('date3').Value:=DateToStr(dtFilter3.Date);
     dm.QReport.Parameters.ParamByName('date4').Value:=DateToStr(dtFilter4.Date);
     dm.QReport.open;

    end;

   end;
   dm.DSetReportAdvertising.DataSource:=dm.DSource_Report;
end;

procedure TfrMonthReport.bPrintPriviewClick(Sender: TObject);
begin
 if rb_filterDate.Checked=True then
  ExcuteQuery('update temp_date set tgl="PERIOD '+
  FormatDateTime('dd/mm/yyyy',dtFilter3.Date) +' to ' +
  FormatDateTime('dd/mm/yyyy',dtFilter4.Date)+'"')
 else
 ExcuteQuery('update temp_date set tgl=" "');

 dm.qryTemp.SQL.Clear;
 dm.qryTemp.SQL.Text:='Select tgl from temp_date';
 dm.qryTemp.Open;

  with dm.frxRep_Master do
  begin
    Hide;
     m_report;
    LoadFromFile(ExtractFilePath(Application.ExeName)+spath);
    ShowReport;
    Close;
  end;
end;

procedure TfrMonthReport.rb_allClick(Sender: TObject);
begin
 dtFilter3.Enabled:=False;
 dtFilter4.Enabled:=False;
end;

procedure TfrMonthReport.rb_filterDateClick(Sender: TObject);
begin
 dtFilter3.Enabled:=True;
 dtFilter4.Enabled:=True;
 
end;

procedure TfrMonthReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrMonthReport.bPrintClick(Sender: TObject);
begin
if rb_filterDate.Checked=True then
  ExcuteQuery('update temp_date set tgl="PERIOD '+
  FormatDateTime('dd/mm/yyyy',dtFilter3.Date) +' to ' +
  FormatDateTime('dd/mm/yyyy',dtFilter4.Date)+'"')
 else
  ExcuteQuery('update temp_date set tgl=" "');

  dm.qryTemp.SQL.Clear;
  dm.qryTemp.SQL.Text:='Select tgl from temp_date';
  dm.qryTemp.Open;
  
  with dm.frxRep_Master do
  begin
    Hide;
    m_report;
    LoadFromFile(ExtractFilePath(Application.ExeName)+spath);
    Print;
    Close;
  end;
end;

end.
