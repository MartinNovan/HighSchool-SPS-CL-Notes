program Nasobeni_cisel;
uses crt;
label nasobeni;
var a,pocet,vysledek  :integer;

begin
clrscr;

Write('Zadej prvni cislo: ');
Readln(a);
Write('Zadej druhe cislo: ');
readln(pocet);

nasobeni: vysledek := a+pocet;
          write('Vysledek je: ');
          writeln(vysledek);
 repeat until keypressed;


end.
