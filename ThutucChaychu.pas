program Thutuc_chaychu;
uses crt;
var s1,s2:string[79];
function CatDan(s1:string):string;
    begin
       CatDan:=copy(s1,2,length(s1)-1)+s1[1];
    end;
procedure CanGiua(var s:string);
    var i:integer;
    begin
      for i:=1 to 40-length(s) div 2 do s:=' '+s;
    end;
begin
 clrscr;
 write('Nhap xau s1: '); readln(s1);
 CanGiua(s1);
 clrscr;
 while not (keypressed) do
    begin
      gotoxy(1,12);
      write(s1);
      delay(500);
      s1:=CatDan(s1);
    end;
 readln
end.
