program posloupnost;
uses crt;
label start;
var cislo1, cislo2, x, vysledek: integer;
begin
clrscr;
write('Zadejte prvni cislo posloupnosti: ');
readln(cislo1);
write('Zadejte posledni cislo posloupnosti: ');
readln(cislo2);
vysledek:=0;
x:=cislo1;
start:
      vysledek:=vysledek+x;
      x:=x+1;
      if x <= cislo2 then goto start;
      writeln('---------------------------------------');
      write('Soucet posloupnosti: ',vysledek);
      readkey;
end.