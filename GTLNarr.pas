uses crt;
const Nmax=100;
type MyArray = array[1..Nmax] of integer;
var A: MyArray;
   n,j,i:integer;
begin
    clrscr;
    write('Nhap so luong phan tu cua day so, N = ');
    readln(N);
    for i:=1 to N do
       begin
          write('Phan tu thu ',i,' = ');
          readln(A[i]);
       end;
    j:=1;
    for i:=2 to n do if A[i] > A[j] then j:= i;
    writeln('Gia tri LN: ',A[j]:4);
    for i:=1 to n do if A[i] = A[j] then write ('Chi so LN: ',i,'; ');
    readln
end.