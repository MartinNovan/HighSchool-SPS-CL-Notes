uses crt;
var a,b,c:integer;
label start,konec,cyklus;

begin

start:  clrscr;
        write('Zadejte prvni cislo: ');readln(a);
        write('Zadejte druhe cislo: ');readln(b);
        c:=a;
        if b=1 then goto konec;

cyklus: c:=c+a;
        b:=b-1;
        if b<1 then goto cyklus;
        goto konec;


konec:  write(c);
        repeat until keypressed;
end.