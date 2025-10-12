uses crt;
var a,b,x:integer;
label start,konec,1,2;

begin
start:  clrscr;
        write('Zacatek posloupnosti= ');readln(a);
        write('Konec posloupnosti= ');readln(b);
        writeln('------------------------');

    2: writeln(x:4);
         x:=x-1;
         if x>=1 then goto 2;
         x:=a;

    1: writeln(x:4);
         x:=x+1;
         if x<=b then goto 1;
         
konec:    repeat until keypressed;
end.