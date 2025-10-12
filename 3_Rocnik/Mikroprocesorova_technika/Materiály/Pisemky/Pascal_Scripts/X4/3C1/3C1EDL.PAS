program Nasobeni_dvou_cisel;
uses crt;
var prom_1,prom_2,vysledek:integer;
label zacatek,konec,cyklus;
begin
ClrScr;
writeln ('Zadejte prvni cislo: ');
readln  (prom_1);
writeln ('Zadejte druhe cislo: ');
readln  (prom_2);

vysledek:=prom_1+prom_2;


writeln ('Soucin obou cisel je: ',vysledek);
repeat until keypressed;

end.










