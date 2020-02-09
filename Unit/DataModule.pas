unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet, frxADOComponents,
  frxExportPDF, frxExportMail, frxExportRTF, frxExportHTML;

type
  Tdm = class(TDataModule)
    AdoConn: TADOConnection;
    QConnection: TADOQuery;
    Qinput: TADOQuery;
    Qview: TADOQuery;
    QR_Advtsm: TADOQuery;
    DSource_Advtsm: TDataSource;
    DSource_Sales: TDataSource;
    DSource_Advr: TDataSource;
    QR_Sales: TADOQuery;
    QR_Advr: TADOQuery;
    Dset_Advtsm: TfrxDBDataset;
    Dset_Sales: TfrxDBDataset;
    Dset_Advr: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxADO_C1: TfrxADOComponents;
    frxRep_Master: TfrxReport;
    QPayment: TADOQuery;
    DsetPayment: TfrxDBDataset;
    DSource_Payment: TDataSource;
    DsetInvoice: TfrxDBDataset;
    DSetReportAdvertising: TfrxDBDataset;
    QReport: TADOQuery;
    DSource_Report: TDataSource;
    frxRTFExport1: TfrxRTFExport;
    frxMailExport1: TfrxMailExport;
    frxHTMLExport1: TfrxHTMLExport;
    dbSettemp: TfrxDBDataset;
    dsTemp: TDataSource;
    qryTemp: TADOQuery;
    DSetReportCommission: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }

    sUserID:string;
    sPassword:string;
    sUsername:string;
    sAccessLevel:string;

    sField:string;
    sTable:string;




  end;

var
  dm: Tdm;

implementation

{$R *.dfm}



end.
