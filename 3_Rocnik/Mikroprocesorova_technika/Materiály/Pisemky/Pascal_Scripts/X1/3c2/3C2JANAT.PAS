uses crt;
var K,L,M,X:integer;
begin
clrscr;
write ('Zadejte K: '); readln(K);
write ('Zadejte L: '); readln(L);
write ('Zadejte M: '); readln(M);
asm
   mov ax,K
   mov bx,L
   mov dx,M
   sub ax,bx
   add ax,dx
   mov X, ax

end;
writeln('X = ',X);
repeat until keypressed;
end.