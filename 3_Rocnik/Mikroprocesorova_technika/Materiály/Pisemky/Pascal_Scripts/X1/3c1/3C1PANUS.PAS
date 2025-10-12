program NasobeniDvouCisel;
uses crt;
label start,vypocet, konec;
var a,b,c,d:integer;
begin
start: clrscr;
write ('zadej prvni cislo:  ');
readln(a);
write ('zadej druhe cislo:  ');
readln(b);


vypocet:c:=c+a;
writeln(c);
d:=d+1;
if d<b then goto vypocet;

write('vypocet je: ');
writeln(c);

repeat until keypressed;
 end.

