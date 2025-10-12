program posloupnost;
uses crt;

label vypocet,konec;
var i,cislo1,cislo2,x:integer;


Begin
     clrscr;
     writeln('Zadejte zacatek intervalu: ');
     readln(cislo1);
     Writeln('Zadejte konec intervalu: ');
     readln(cislo2);
     if cislo1<cislo2 then goto vypocet;

vypocet:i:=cislo2-(cislo1+1);
        x:=cislo1+(cislo1+i+1)+(cislo2+i+1)  ;
        if x=cislo2 then goto konec;
konec: writeln('Vysledek intervalu je: ',x);
       readln;
End.