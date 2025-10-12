uses crt;
var a,b,c,s:integer;
label start,konec,soucet;

begin
start:  clrscr;
        write('Zadejte prvni cislo: ');readln(a);
        write('Zadejte druhe cislo: ');readln(b);
        writeln('');

soucet: writeln(a);
        c:=a;
        s:=s+c;
        a:=a+1;
        if a<=b then goto soucet;


konec: writeln('');
       writeln('Soucet vsech cisel je ',s);
       repeat until keypressed;


end.