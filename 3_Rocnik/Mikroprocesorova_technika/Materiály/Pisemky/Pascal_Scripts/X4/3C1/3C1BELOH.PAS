program NasobeniDvouCisel;
uses crt;
var a, b, x:integer;
label KONEC, START , SMYCKA;

begin
         WriteLn('Nasobeni dvou cisel');
         WriteLn('-----------------------');
         WriteLn('Zadejte prvni cislo: ');
         ReadLn(a);
         WriteLn('Zadejte druhe cislo: ');
         ReadLn(b);
         WriteLn('-----------------------');
         asm
START:   MOV AX, a
         MOV CX, b
         MOV BX, 0

SMYCKA:  ADD BX, AX
         LOOP SMYCKA
         MOV  x, BX
KONEC:

         end;
         WriteLn('Vysledek je ', x);
         repeat until keypressed;

end.