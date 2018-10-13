uses crt;
const Nmax=250;
type ArrInt = array[1..Nmax] of integer;
var A: ArrInt;
    n,i,j,t,dem: integer;
begin
    clrscr;
    randomize;
    write('Nhap n = ');
    readln(n);
    for i:= 1 to n do A[i]:= random(300) - random(300);
    for i:= 1 to n do write(A[i]:5);
    writeln;
    dem:= 0;
    for j:= n downto 2 do
         for i:=1 to j-1 do
            if A[i] > A[i+1] then
                 begin
                   dem:= dem +1;
                   t:= A[i];
                   A[i]:= A[i+1];
                   A[i+1]:= t;
                 end;
    writeln('Day so duoc sap xep: ');
    for i:= 1 to n do write(A[i]:5);
    writeln;
    writeln('So lan thuc hien trao doi = ', dem);
    readln;
end.