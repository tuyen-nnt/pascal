uses crt;
const Nmax = 100;
var x:Array[1..Nmax] of integer;
   i,n,j:integer;
procedure binary;
  begin
    for i:= 1 to n do x[i]:= 0;
    repeat
      i:= n;
      while x[i]<>0 do i:=i-1; {neu x[i]=0 thi qua cau lenh tiep theo}
      if (i>0) then
        begin
          x[i]:=1;
          for j:=i+1 to n do x[j]:=0;
        end;
      for i:=1 to n do write(x[i]);
      writeln;
   until i=0;
end;

begin
  clrscr;
  write('Nhap vao n = ');
  readln(n);
  binary;
  readln;
end.