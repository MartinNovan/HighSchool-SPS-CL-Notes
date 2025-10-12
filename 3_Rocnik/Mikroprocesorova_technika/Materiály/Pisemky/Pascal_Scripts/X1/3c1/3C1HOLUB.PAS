program Test;
uses crt;
label start, mezipocet, konec;
var pocatecni, koncova, a,  soucet : integer;

begin
start:
                clrscr;
                write('Zadejte pocatecni hodnotu posloupnosti: ');
                readln(pocatecni);
                write
                ('Zadejte koncovou hodnotu posloupnosti: ');
                readln(koncova);
mezipocet:      a := pocatecni + 1;
                soucet := pocatecni + a + koncova;
                writeln('Soucet posloupnosti je: ', soucet);
                goto konec;

konec:          writeln('-------------------------');
                writeln('*** Preji hezky den. ***');
                readln;

end.