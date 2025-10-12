program nasobenidvoucisel;
uses crt;
label start, pocet, nasobeni, konec;
var a, b, vysledek : integer;

begin
start:  clrscr;
        textcolor(15);
        write('Zadej cislo A: ');
        readln(a);
        write('Zadej cislo B: ');
        readln(b);
        goto nasobeni;

nasobeni: if b = 0 then goto konec;
          goto pocet;

pocet:  b:=b-1;
        vysledek:=vysledek+a;
        goto nasobeni;

konec:   textcolor(5);
         writeln('Vysledek je: ',vysledek);
         textcolor(15);
         writeln('==================');

repeat until keypressed;
end.