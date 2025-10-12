uses crt;
var A,B,cisla:ineteger;
label opakuj,scitani;

begin
    clrscr;
    write('Zadejte zacatek posloupnosti: ');readln(A);
    write('Zadejte konec posloupnosti: ');readln(B);
    writeln('---------------------------');
    if A<B then goto opakuj

opakuj:
    cisla:= A+1
    readln(cisla);
    if cisla<=B then goto konec
    goto konec;

scitani:
        asm


        end;
konec:
      writeln('Vase cisla jsou: ',cisla);
      repeat until keypressed;
end.