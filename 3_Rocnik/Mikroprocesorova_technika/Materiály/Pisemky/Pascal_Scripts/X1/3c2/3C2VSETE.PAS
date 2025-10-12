program test3C2;
uses crt;
var K, L, M, X:integer;

begin
clrscr;
write('K= '); readln(K);
write('L= '); readln(L);
write('M= '); readln(M);

asm
    mov ax,K
    mov bx,L
    mov cx,M

    add ax,bx
    sub ax,cx
    mov X,ax

end;
writeln('K+L-M= ',X);
repeat until keypressed;
end.