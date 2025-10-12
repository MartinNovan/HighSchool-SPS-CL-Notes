Program soucet_posloupnosti;
uses crt;
var interval1, interval2: integer;
label vypocet;

begin
     clrscr;

     writeln('zadejte zacatek intervalu');
     readln(interval1);
     writeln('zadejte konec intervalu');
     readln(interval2);
     vypocet:writeln(interval1+(interval1+1));
     if interval1<interval2 then goto vypocet;





    readln;
end.