program SoucetPosloupnosti;
uses crt;
var i1, i2, i, a:integer;
label start, vypocet, konec;

      begin
start:
      ClrScr;
      writeln('------ Program na soucet posloupnosti. ------');
      writeln('Zadejte pocatecni cislo: ');
      readln(i1);
      writeln('Zadejte koncove cislo: ');
      readln(i2);

vypocet:
      if i1>i2 then goto konec;
      i := (i2 - i1);
      a := i1 + i2;

konec:
      writeln('Vysledek souctu je: ', a);
      readln;
      writeln('--------------------------------');
      readln;
      end.