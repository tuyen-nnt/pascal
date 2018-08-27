program TimMax;
uses crt;
var
  Max,A,B,C:integer;
begin
  clrscr;
  write('Nhap vao 3 so lan luot: ');
  readln(A,B,C);
  Max:=A;
  if B>Max then Max:=B;
  if C>Max then Max:=C;
  writeln('Gia tri Max la: ',Max);
  readln
end.

