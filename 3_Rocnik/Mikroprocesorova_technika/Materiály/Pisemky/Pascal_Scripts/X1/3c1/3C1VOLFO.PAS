program nasobeni_cisel;
uses crt;
label start, vypis;
var i:integer;      {cislo 1}
    x:integer;      {cislo 2}
    z:integer;      {vysledek}
begin
clrscr;
writeln ('Nasobeni dvou cisel');
writeln ('-------------------------');
start: write ('Zadej cislo 1: ');
       readln (i);
       write ('Zadej cislo 2: ');
       readln (x);

vypis: writeln(z);
       z := i + x;

if z = z then goto vypis;

end.
