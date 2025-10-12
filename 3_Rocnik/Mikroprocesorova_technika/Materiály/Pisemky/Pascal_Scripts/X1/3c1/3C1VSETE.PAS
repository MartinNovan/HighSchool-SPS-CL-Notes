program nasobeni_dvou_cisel;
uses crt;
label start, konec, vypocet;
var cislo1,cislo2,vysledek: integer;
begin
         clrscr;
         writeln('Nasobeni dvou cisel');
         writeln('_____________________________');
         write('Zadej prvni cislo: ');
         readln(cislo1);
         write('Zadej druhe cislo: ');
         readln(cislo2);

start:  if cislo2=0 then goto konec;

vypocet: vysledek:= (vysledek+cislo1);
         cislo2:= cislo2 -1;
         goto start;

konec:   writeln('Vysledek je: ',vysledek);
         repeat until keypressed;
         end.





