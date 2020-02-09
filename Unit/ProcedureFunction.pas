unit ProcedureFunction;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls;

  procedure SelectQuery(query:string); // untuk menapiklan Query
  procedure ExcuteQuery(query:string); // untuk Menghapus, edit, simpan
  procedure Query_PosValidation;

  function SortByColomn(Item1,Item2:TListItem;Data:Integer):integer; stdcall; // untuk sorting lisview dengan klik header
  function EmailValidation(Const Value:string):boolean;  // untuk mempalidasi email
  function NumberValidation(n: String): Boolean; //untuk valsidasi angka
  function Check_FirstInput(s:String):Boolean;  // untuk mengecek karakter awal berupa angka atau huruf


var

  LastSortedColomn:integer;
  Ascending:boolean;

  iEdition:Integer;
  iPage:integer;

  list_LV:TListItem;
  sCategory:string;

  check_sls:byte;
  check_adsr:byte;
  check_advt:byte;

  check_news:byte;
  check_tabloid :byte;
  check_advt_edit:byte;

  ispace :byte;

  LastTabActive:byte;

  sfield,sEdition,sPage:string;
  sFirstCol,sFirstPos,sColCount,sColHeight:String;
  sOld_Edition,sOld_Page,sOld_FirstCol,sOld_FirstPos:string;

  y1,jml_y:integer;
  x1,jml_x:integer;

  sCdNews:string;

implementation

uses DataModule, ADODB, DB;

procedure Query_PosValidation;
var ilastColumn:integer;
    iLastPosition:integer;
    sNews_SELECTed:string;
begin

  ilastColumn:=StrToInt(sFirstCol)+ StrToInt(sColCount)-1;
  iLastPosition:=StrToInt(sFirstPos)+ StrToInt(sColHeight);

  if sCdNews='' then sCdNews:='0';
  if sEdition='' then sEdition:='0';

 if (LowerCase(sfield)='news') And (check_news=2) then
    sNews_SELECTed:=' And code_news <>'+sCdNews

 else if (LowerCase(sfield)='detail_advertising_trans') And
 (sEdition=sOld_Edition) And (sPage=sOld_Page) then
    sNews_SELECTed:=' And Not(First_Col='+sOld_FirstCol+' And First_Pos='+sOld_FirstPos+')'

 else
 sNews_SELECTed:='';



  SelectQuery('SELECT * FROM '+sfield+' WHERE edition='+
  sEdition+ sNews_SELECTed +' And Page='+sPage+

  ' And  (((('+sFirstCol+' > First_col)'+
  ' OR ('+sFirstCol+' = First_col))'+
  ' And (('+sFirstCol+' < First_col + col_count-1)'+
  ' OR ('+sFirstCol+' = First_col + col_count-1)))'+

  ' OR ( ((First_Col > '+sFirstCol+')'+
  ' OR (First_Col = '+sFirstCol+'))'+
  ' And ((First_Col < '+IntToStr(ilastColumn)+')'+
  ' OR (First_Col = '+IntToStr(ilastColumn)+') ) ) )'+

  ' And (( (('+sFirstPos+' > first_Pos)'+
  ' OR ('+sFirstPos+' = first_Pos))'+
  ' And (('+sFirstPos+' < first_Pos + col_height)'+
  ' OR ('+sFirstPos+' = first_Pos + col_height)))'+

  ' OR (First_Pos > '+sFirstPos+
  ' And First_Pos < '+IntToStr(iLastPosition)+'))');

end;
procedure SelectQuery(query:string);
begin
 with dm.Qview do
 begin
  Close;
  SQL.Clear;
  SQL.Add(query);
  Open;
 end;
end;
procedure ExcuteQuery(query:string);
begin
 with dm.Qview do
 begin
  Close;
  SQL.Clear;
  SQL.Add(query);
  ExecSQL;
 end;
end;
function SortByColomn(Item1,Item2:TListItem;Data:Integer):integer; stdcall;
begin
 if Data=0 then
  Result:=AnsiCompareText(Item1.Caption,Item2.Caption)
 else
  Result:=AnsiCompareText(Item1.SubItems[Data-1],Item2.SubItems[Data-1]);
  if not Ascending then result:=-Result;
end;

function EmailValidation(Const Value:string):boolean;
  function CheckAllowed(const s:string):boolean;
  var i:integer;
  begin
    result:=False;
    for i:=1 to length(s) do // karakter ilegal
    if not(s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.',',']) then exit;
    result:=True;
  end; //akhir dari fungsi CheckAllowed
var i,len:integer;
    namePart,Serverpart:string;
begin
  Result:=false;
  i:=Pos('@',Value);
  if (i=0) or (pos('..',Value)>0) then exit;
  namePart:=Copy(Value,1,i-1);
  Serverpart:=Copy(Value,i+1,length(Value));
  len:=Length(Serverpart);
  // Harus ada titik dan dari 3 terakhir
  // 2 dari awal
  if (len<4) or (Pos('.',Serverpart)=0) or (Serverpart[1]='.') or
  (Serverpart[len]='.') or (Serverpart[len-1]='.') then exit;
  Result:=CheckAllowed(Serverpart);
end;
function NumberValidation(n: String): Boolean;
begin
  try
    StrToInt(n);
    Result:= True;
  except
    Result:= False;
  end;
end;
function Check_FirstInput(s:string):boolean;
begin
  s:=s+' '; // menangani error jika s='' atau kosong;
  if s[1] in['0'..'9'] then
    Result:=False
  else
    Result:=True;
end;
end.
