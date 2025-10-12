program posloupnost;
uses Crt;
var zacatek, konec, a, b, vypocet : integer;
label soucet, vysledek;

begin
     clrscr;
     writeln('Zadat prvni cislo:');
     readln(zacatek);
     writeln('Zadejte posledni cislo:');
     readln(konec);


soucet:     a  := zacatek + 1;
            b  := zacatek + konec;
            vypocet := b + a;



vysledek:   writeln('Vysledek intervalu je:');
            writeln(vypocet);



        readln;
end.