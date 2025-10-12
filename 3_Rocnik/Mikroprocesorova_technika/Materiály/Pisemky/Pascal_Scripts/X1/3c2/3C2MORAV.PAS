program vypocty;
uses crt;
label s1,s2,s0;
var K,L,M,X:integer;
begin
clrscr;
write('K: '); readln(K);
write('L: '); readln(L);
write('M: '); readln(M);
asm
       mov ax,K
       mov bx,L
       mov cx,M

       add ax,bx
       sub ax,cx
       mov X,ax

end;
write('Vypocet je K+L-M: ',X);
if x<0
then write('--->0');
repeat until keypressed;
end.

