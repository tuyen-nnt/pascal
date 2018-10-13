uses crt;
const Mmax=100;
var A: array[1..Mmax, 1..100] of integer;
   m,n,i,j,sum,max,tong,cong,k,p,t: integer;
begin
   clrscr;randomize;
   readln(m,n);
   for i:= 1 to m do
      begin
         for j:=1 to n do
            begin
              A[i,j]:= random(101)-random(101);
              write(A[i,j]:5);
            end;
          writeln;
      end;

   max:= A[1,1];
   for i:=1 to m do
     begin
       sum:= 0;
       for j:= 1 to n do
         begin
           sum:= A[i,j] + sum;
         end;
       if sum > max then max:= sum;
     end;


   tong:= 0;
   cong:= 0;

   if m >= n then
    begin
      p:=1;
      for k:=n downto 1 do
       begin
         tong:= A[k,p] + tong;
         p:= p + 1;
       end;
     if tong > max then max:= tong;
     t:=1;
     for k:=1 to n do
       begin
         cong:= A[k,t] + cong;
         t:= t + 1;
       end;
     if cong > max then max:= cong;
    end;

   writeln;
   writeln(max);
   readln;
   readln;
end.
