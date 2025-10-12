program test;
uses crt;
var K,L,M,X : integer;
begin
clrscr;
write('K= ');readln(K);             {Vypise se K}
write('L= ');readln(L);             {Vypise se L}
write('M= ');readln(M);             {Vypise se M}
asm
   mov ax, K           {Nacteni hodnoty K do registru ax}
   mov bx, L           {Nacteni hodnoty L do registru bx}
   mov cx, M           {Nacteni hodnoty M do registru cx}
   sub ax, bx          {Odecte bx od ax}
   add ax, cx          {Pricte cx k ax}
   mov X, ax           {Nacteni hodnoty X do registru ax}



end;
writeln('X= ', X);           {Vypise se X}
repeat until keypressed;
end.