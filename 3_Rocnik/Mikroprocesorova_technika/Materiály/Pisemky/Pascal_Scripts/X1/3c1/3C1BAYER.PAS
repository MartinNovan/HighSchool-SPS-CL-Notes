program soucet_posloupnosti;
uses crt;
label start, vstup, vypocet;
var prvnicislo, druhecislo, vypocitanecislo : integer;

begin
     start:clrsrc;
     vstup:
     writeln('Program na soucet posloupnosti');
     writeln('------------------------------');
     writeln('Zadejte prvni cislo posloupnosti: ');
     readln(prvnicislo);
     writeln('Zadejte druhe cislo posloupnosti: ');
     readln(druhecislo);

     vypocet:
             if prvnicislo < druhecislo  then goto  vypocitanecislo;
             vypocitanecislo:= (vypocitanecislo+druhecislo)+1;




     vypis:
     writeln('Soucet posloupnosti je:' vypocitanecislo);
     readln();
end.