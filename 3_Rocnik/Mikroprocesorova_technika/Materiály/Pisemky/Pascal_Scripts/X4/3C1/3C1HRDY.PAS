uses crt;
var a,b,c:integer;
label START,KONEC,CYKL;

begin
START: clrscr;
       write('Zadejte prvni cislo: ');readln(a);
       write('Zadejte druhe cislo: ');readln(b);
       c:=a;
       if b<=1 then goto konec;

CYKL:  c:=c+a;
       b:=b-1;
       if b>1 then goto cykl;

KONEC: write(c);
       repeat until keypressed;
end.