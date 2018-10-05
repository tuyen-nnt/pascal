uses crt;
var S:string[8];
    A:array[1..8] of integer;
    N,i,k,mu:integer;
begin
   clrscr;
   write('Nhap vao xau nhi phan = ');
   readln(S);
   For i:=1 to length(s) do
     begin
       if S[i]='1' then A[i]:=1 else A[i]:=0;
     end;
   N:=0;
   for i:=1 to length(S) do
     begin
        mu:=1;
        for k:=1 to length(s)-i do mu:=mu*2;
        N:= N+A[i]*mu;
     end;
   write('So thap phan can tim = ',N);
   readln
end.