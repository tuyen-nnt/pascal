uses crt;
var s1:string[79]; 
    i:integer;
begin 
 clrscr;
 write('Nhap xau s1: '); 
 readln(s1); 
 clrscr;
 for i:=1 to 40-length(s) div 2 do s1:=' '+s1;
 while not (keypressed) do
    begin
      gotoxy(1,12);
      write(s1);
      delay(500);
      s1:=copy(s1,2,length(s1)-1)+s1[1];
    end;
end.
