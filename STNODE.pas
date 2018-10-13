PROGRAM STNODE;
CONST InF = '';
      OutF = '';
      MaxN = 20000;
      MaxM = 100000;

VAR Adj: array[1..3000000] of word;     {Danh sach ke}
    Head: array[1..MaxN] of word;
    n,m,s,t: word;
    Q: array[1..MaxN] of word;         {Queue}
    Front,Rear: word;                  {Queue}
    Trace: array[1..MaxN] of integer;
    total: word;

PROCEDURE ReadF;
   var f: text;
       u,v: array[1..MaxN] of word;
       i: word;

   begin
       fillchar(Head, sizeof(Head), 0);

       assign(f, InF);
       reset(f);
       readln(f,n,m,s,t);
       for i:=1 to m do readln(f, u[i], v[i]);
       for i:=1 to m do
          begin
               inc(Head[u[i]]);
               //inc(Head[v[i]]);
          end;
       for i:= 2 to n+1 do Head[i]:= Head[i-1] + Head[i];
       for i:=1 to m do
          begin
              Adj[Head[u[i]]]:= v[i];  dec(Head[u[i]]);
              //Adj[Head[v[i]]]:= u[i];  dec(Head[v[i]]);
          end;
       close(f);
   end;

PROCEDURE Push(u: word);
   begin
       inc(Rear);
       Q[Rear]:= u;
   end;

FUNCTION Pop(): word;
   begin
       Pop:= Q[Front];
       inc(Front);
   end;

FUNCTION BFS(x: word): boolean;
   var u,v: word;
       Find: array[1..MaxN] of integer;
   begin
       fillchar(Find, sizeof(Find), 0);
       Front:= 1;
       Rear:= 1;
       Q[1]:= s;
       Find[s]:= -1;

       repeat
         u:= Pop();
         for v:= Head[u]+1 to Head[u+1] do
            if (Find[Adj[v]] = 0) and (Adj[v] <> x) then
               begin
                   Push(Adj[v]);
                   Find[Adj[v]]:= u;
               end;
       until Front > Rear;

       if Find[t] <> 0 then exit(true)
       else exit(false);
   end;


PROCEDURE Process;
   var i,u,v: word;

   begin
      fillchar(Trace, sizeof(Trace), 0);
      Front:= 1;
      Rear:= 1;
      Q[1]:= s;
      Trace[s]:= -1;

      repeat
         u:= Pop();
         for v:= Head[u]+1 to Head[u+1] do
            if Trace[Adj[v]] = 0 then
               begin
                   Push(Adj[v]);
                   Trace[Adj[v]]:= u;
               end;
      until Front > Rear;

      total:= 0;
      u:= Trace[t];
      while (u <> s) do
         begin
             if not BFS(u) then inc(total);
             u:= Trace[u];
         end;
   end;

PROCEDURE WriteF;
   var f: text;
   begin
       assign(f, OutF);
       rewrite(f);
       write(f,total);
       close(f);
   end;

BEGIN
    ReadF;
    Process;
    WriteF;
END.


