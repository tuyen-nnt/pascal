program Thutuc_chaychu;
uses crt;
type str79=string[79];
var s1,s2:str79;
    stop:boolean;
function CatDan(s1:str79):str79;
    begin
       CatDan:=copy(s1,2,length(s1)-1)+s1[1];
    end;
procedure CanGiua(var s:str79);
    var i,n:integer;
    begin
      n:=(80-length(s)) div 2;
      for i:=1 to n do s:=' '+s;
    end;
begin
 clrscr;
 write('Nhap xau s1: '); readln(s1);
 CanGiua(s1);
 clrscr;
 stop:=false;
 while not (stop) do
    begin
      gotoxy(1,12);
      write(s1);
      delay(500);
      s1:=CatDan(s1);
      stop:=keypressed;
    end;
 readln
end.
