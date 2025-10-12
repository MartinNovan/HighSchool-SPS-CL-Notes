uses crt;
var a,b,x:integer;
label start,konec,vypocet;

begin
start:   clrscr;
         write('Prvni cislo: ');readln(a);
         write('Posledni cislo: ');readln(b);
         writeln;



         x:=a;
vypocet: x:=x+1;
         if x<b then goto vypocet;
         goto konec;




konec:   writeln('Soucet posloupnosti= ',x);
         repeat until keypressed;
         end.