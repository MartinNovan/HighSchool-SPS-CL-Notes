uses crt;
var Prom_A,Prom_B,Prom_Vysledek: integer;
label cyklus,porovnej;
begin

     clrscr;
     write('Zadej cislo A  ');readln(Prom_A);
     write('Zadej cislo B  ');readln(Prom_B);
     writeln('---------------------------------------------------------');
     writeln('---------------------------------------------------------');



        Prom_B:=Prom_B-1;

        if Prom_B<0 then goto cyklus;
cyklus:
        Prom_A:=Prom_A+Prom_A;


     writeln('Soucin = ',Prom_A);
     writeln('---------------------------------------------------------');
     repeat until keypressed;
end.