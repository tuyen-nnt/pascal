uses crt;
const
   InputFile = 'E:\QUEENS.INP';
   OutputFile = 'E:\QUEENS.OUT';
   max = 1100;
var
  n: integer;
  x: array[1..max] of integer;
  a: array[1..max] of Boolean;
  b: array[2..2*max] of Boolean;
  c: array[1-max..max-1] of Boolean;
  f: Text;

procedure Init;
begin
   Assign(f,InputFile); reset(f);
   readln(f,n);
   close(f);
   fillchar(a, sizeof(a), true);
   fillchar(b, sizeof(b), true);
   fillchar(c, sizeof(c), true);
end;

procedure printresult;
var
  i:integer;
begin
  for i:=1 to n do write(f,'(',i,',',x[i],')');
  writeln(f);
end;

procedure attempt(i:integer);
var
  j:integer;
begin
  for j:=1 to n do
    if a[j] and b[i+j] and c[i-j] then
      begin
        x[i]:=j;
        if i = n then printresult
         else
           begin
             a[j]:= false; b[i+j]:= false;c[i-j]:= false;
             attempt(i+1);
             a[j]:= true; b[i+j]:=true; c[i-j]:= true;
           end;
     end;
end;

begin
   Init;
   assign(f, outputfile); rewrite(f);
   attempt(1);
   close(f);
   readln
end.
