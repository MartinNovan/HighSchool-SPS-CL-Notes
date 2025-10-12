program soucet_rozdil;
uses crt;
var K,L,M,X: integer;
label s1;
begin
clrscr;
write (' K:= ');readln(K);
write (' L:= ');readln(L);
write (' M:= ');readln(M);
writeln('---------');
asm

   mov ax,K       { nacteni promenne K z pameti do registru AX }
   mov bx,L       { nacteni promenne L z pameti do registru BX }
   mov cx,M       { nacteni promenne M z pameti do registru CX}

   add ax,bx      { vypocet souctu AX:=AX+BX }
   sub ax,cx      { vypocet rozdilu AX:=AX-CX }
   mov X,ax       { vysledek ax se presune do promenne X }
                  { pomoci cmp se porovna ax s 0 }


end;
writeln('X=K+L-M= ',X);
repeat until keypressed;
end.