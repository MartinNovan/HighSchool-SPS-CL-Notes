program test;
uses crt;
var K,L,M,X:integer;
label kladne;
begin
clrscr;
write('K: ');readln(K);
write('L: ');readln(L);
write('M: ');readln(M);
   asm mov ax,K      { presunuti promenne K do registru ax }
       mov bx,L      { presunuti promenne L do registru bx }
       mov cx,M      { presunuti promenne M do registru cx }
       sub ax,bx     { ax = ax - bx }
       jns kladne    { pokud vyjde ax kladne, skocit na label kladne }
       neg ax        { znegovani ax }
   kladne:
       add ax,cx     { ax = ax + bx }
       mov X,ax      { presunuti registru ax do promenne X }
   end;
writeln('------------------------------');
writeln('|',K,'-',L,'| + ',M,' = ',X);
repeat until keypressed;
end.