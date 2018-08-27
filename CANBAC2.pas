program CanBac2;
const e=1E-4;
var
  x:array[0..1000] of real;
  i:integer;
  a:real;
begin
  write('Nhap vao gia tri cua a: ');
  readln(a);
  if a<0 then
            begin
                 write('Nhap lai so a>=0: ');
                 readln(a);
            end;
  x[0]:=1;x[1]:=(1+a)/2;
  while abs(x[i+1]-x[i])>e do
            begin
                i:=i+1;
                x[i+1]:=(x[i]+(a/x[i]))/2;
            end;
  writeln('Gia tri can bac 2 la: ',x[i+1]:8:5);
  readln
end.

