program spikl;
uses crt;
var K, L, M,prom_s,prom_vysl,X:integer;
begin
clrscr;
write(' K:= ');readln(K);
write(' L:= ');readln(L);
write(' M:= ');readln(M);
asm
        mov ax,K           {nacteni promenne k z pameti do registru AX}
        mov bx,L           {nacteni promenne l z pameti do registru BX}
        mov cx,M           {nacteni promenne m z pameti do registru CX}
        add ax,bx          {vypocet souctu AX:=AX+BX}
        sub ax,cx          {vypocet rozdilu AX:AX-CX}
        mov prom_vysl,ax   {zapis vysledku ax do promenne vysledku}

        end;
if prom_vysl < 0 then writeln('K + L - M = 0') else
writeln(' K + L - M = ',prom_vysl);

repeat until keypressed;
end.