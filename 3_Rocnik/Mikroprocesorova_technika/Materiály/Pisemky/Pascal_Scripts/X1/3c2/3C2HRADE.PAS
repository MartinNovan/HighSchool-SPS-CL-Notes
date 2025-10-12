program soucet_rozdil;
uses crt;
var prom_k,prom_l,prom_m,prom_x:integer;
label absolutna;
begin
clrscr;
write (' k:= ');readln(prom_k);
write (' l:= ');readln(prom_l);
write (' m:= ');readln(prom_m);
asm
        mov ax,prom_k  {nacneti promene k do ax}
        mov bx,prom_l  {nacteni promene l do bx}
        mov cx,prom_m  {nacteni promene m do bx}
        sub ax,bx      {vypocet  AX:=AX-BX}
        jns absolutna   {porovnani}
        neg ax          {potrebne ynegovani}

        absolutna:
        add ax,cx  {secteni promene x s m}
        mov prom_x,ax
        end;
writeln( 'x= ' ,prom_x);
readkey;
end.