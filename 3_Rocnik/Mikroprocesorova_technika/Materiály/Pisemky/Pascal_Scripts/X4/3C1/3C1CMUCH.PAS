uses crt;
var a,b,c:integer;
label start,konec,cykl,vzad,nula;

begin
START: clrscr;
       write('Zadej prvni cislo: ');readln(a);
       write('Zadej druhe cislo: ');readln(b);
       c:=a;
       if b<0 then goto vzad;
       if b=1 then goto konec;
       if b=0 then goto nula;

CYKL:  c:=c+a;
       b:=b-1;
       if b>1 then goto cykl;
       goto konec;

VZAD:  c:=c-a;
       b:=b+1;
       if b<1 then goto vzad;
NULA:  c:=0;
KONEC: write(c);
       repeat until keypressed;
end.