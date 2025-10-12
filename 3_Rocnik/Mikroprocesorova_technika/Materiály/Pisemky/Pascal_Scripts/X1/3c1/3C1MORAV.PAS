program nasobeni;
uses crt;
label start, konec, vypocet;
var a,b,i: integer;

begin
clrscr;
writeln ('Vitejte v programu pro nasobeni dvou cisel');
writeln ('******************************************');
write ('Zadejte cislo 1: ');
readln(a);

write ('Zadejte cislo 2: ');
readln(b);
i:=0;
goto vypocet;

start:
If b=0 then goto konec;

vypocet:
i:= (i+a);
b:=b - 1;
goto start;

konec:
writeln ('*****************');
writeln ('Vysledek je: ',i);
repeat until keypressed;
end.