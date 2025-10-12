program tima;
uses crt;
var K, L, M, X: integer;
begin
clrscr;
write('Zadej A: '); readln(K);
write('Zadej B: '); readln(L);
write('Zadej C: '); readln(M);

asm
mov ax, K
mov bx, L
mov cx, M

add ax, bx
sub ax, cx
mov X, ax

{ Zde se porovna vysledek X s nulou a pokud je vysledek mensi nez 0, vypise X=0 }
{ cmp X, 0 }

end;

writeln('A+B-C= ',X);
repeat until keypressed;

end.