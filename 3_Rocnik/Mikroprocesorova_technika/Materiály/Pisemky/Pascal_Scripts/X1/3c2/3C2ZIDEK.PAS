program vzorce;
uses crt;
var K,L,M,X : integer;
begin;
clrscr;
write('K: '); read(K);
write('L: '); read(L);
write('M: '); read(M);

asm
   mov ax, K
   mov bx, L
   mov cx, M
   mov dx, X


end;


writeln('X = ',K+L-M);
repeat until keypressed;
end.