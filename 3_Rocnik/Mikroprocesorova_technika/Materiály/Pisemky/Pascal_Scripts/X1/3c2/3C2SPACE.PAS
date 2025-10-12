program test_2;
uses crt;
var K,L,M,X:integer;
label skok1;
begin
clrscr;
writeln('X = K + L - M');
writeln('--------------------------');
write('Zadejte prvni promenou K: ');readln(K);
write('Zadejte druhou promenou L:');readln(L);
write('Zadejte treti promenou M:');readln(M);

asm
   mov ax,K             {do registru ax prirazeni promenne K}
   mov bx,L             {do registru bx prirazeni promenne L}
   mov cx,M             {do registru cx prirazeni promenne M}
   adc ax,bx            {do registru ax prirazeni souctu cisel, ktere bylo v ax a v bx}
   sub ax,cx            {do registru ax prirazeni rozdilu cisel, ktere bylo v ax a v cx}
   mov X,ax             {do promenne X prirazeno cislo z ax}
   jnz skok1
skok1: mov ax,0

end;
write('Vysledek:');
writeln(X);
repeat until keypressed;
end.