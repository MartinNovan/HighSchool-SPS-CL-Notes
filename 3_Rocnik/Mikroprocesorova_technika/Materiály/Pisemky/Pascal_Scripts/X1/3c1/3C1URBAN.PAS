Program Nasobeni;
uses crt;
label zapis, konec, pocitadlo;
var   a, b, pricti, pocet : integer;

           begin

zapis:     clrscr;
           writeln('Nasobeni dvou cisel');
           write('Cislo 1: ');
           readln(a);
           write('Cislo 2: ');
           readln(b);

pocitadlo: write('Vysledek: ');
           write(a+b);
           pricti:= pricti+1;
           if pricti<=b  then goto pocitadlo;

konec:     repeat until keypressed;
           End.