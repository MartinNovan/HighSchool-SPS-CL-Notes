program nasobeni_dvou_cisel;
uses crt;
label konec, a;
var cislo1, cislo2, vysledek : integer;

begin
        clrscr;
        write('Zadej cislo 1: ');
        readln(cislo1);
        write('Zadej cislo 2: ');
        readln(cislo2);
        vysledek:=0;

a:      vysledek:= vysledek + cislo1;
        cislo2:= cislo2 - 1;
        if cislo2=0 then goto konec;
        goto a;

konec:  writeln('=================');
        writeln('Vysledek je: ', vysledek);
        repeat until keypressed;
end.