
uses crt;
var K,L,M,X:integer;
begin
clrscr;
write(' K:= ');readln(K);
write(' L:= ');readln(L);
write(' M:= ');readln(M);

asm
        mov ax,K      {nacteni promenne K z pameti do registru AX}
        mov bx,L      {nacteni promenne L z pameti do registru BX}
        mov cx,M      {nacteni promenne M z pameti do registru BX}

        add ax,bx          {vypocet souctu AX:=AX+BX}

        sub ax,cx          {vypocet rozdilu AX:=AX-CX}
        mov x,ax           {zapis vyslekdu z AX do X }

        end;

write(' K + L - M= ',x);
          if x<0
          then  write('-->0') ;

repeat until keypressed;
end.