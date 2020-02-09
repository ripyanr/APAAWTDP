program SPDP;

uses
  Forms,
  DataModule in '..\Unit\DataModule.pas' {dm: TDataModule},
  DatabaseOption in '..\Unit\DatabaseOption.pas' {frDatabaseOption},
  MainMenu in '..\Unit\MainMenu.pas' {frMainMenu},
  User in '..\Unit\User.pas' {frUser},
  InputMaster in '..\Unit\InputMaster.pas' {frInputMaster},
  ProcedureFunction in '..\Unit\ProcedureFunction.pas',
  AdvertisingTrans in '..\Unit\AdvertisingTrans.pas' {frAdvertisingTrans},
  DetailAdvertiserment in '..\Unit\DetailAdvertiserment.pas' {frDetailTransaction},
  ReportMaster in '..\Unit\ReportMaster.pas' {frReportMaster},
  MonthlyReport in '..\Unit\MonthlyReport.pas' {frMonthReport},
  Backup in '..\Unit\Backup.pas' {frAdvance},
  AdvPosition in '..\Unit\AdvPosition.pas' {frAdvPosition},
  SeachAdvertiser in '..\Unit\SeachAdvertiser.pas' {frSearch};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrMainMenu, frMainMenu);
  Application.CreateForm(TfrDatabaseOption, frDatabaseOption);
  Application.Run;
end.
