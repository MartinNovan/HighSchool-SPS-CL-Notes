uses crt;
var a,b,p:integer;
label start,konec,cyklus;

begin
start: clrscr;
       writeln('prvni cislo');readln(a);

       writeln('druhe cislo');readln(b);
       writeln('');

cyklus: writeln(a);
        a:= a;
        b:= b+p;
        p:= b+a;
        if a<b then goto cyklus`;


konec: writeln ('Soucet je: ',p);
       repeat until keypressed;


end.