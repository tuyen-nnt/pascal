program Thutuc_chaychu;
uses crt;
var s1,s2:string[79]; i:integer;
function DinhDang(s1:string):string;
    begin
       DinhDang:=copy(s1,2,length(s1)-1)+s1[1];
    end; 
begin
 clrscr; write('Nhap xau s1: '); readln(s1);
 for i:=1 to 40-length(s) div 2 do s1:=' '+s1; clrscr;
 while not (keypressed) do
    begin
      gotoxy(1,12);
      write(s1);
      delay(500);
      s1:=DinhDang(s1);
    end;
 readln
end.
