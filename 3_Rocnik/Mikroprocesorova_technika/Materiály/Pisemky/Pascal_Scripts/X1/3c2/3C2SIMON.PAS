program vypocet_funkce;
uses crt;
var x, K, L, M: integer;

begin
clrscr;

write('Zadej K: ');readln(K);
write('Zadej L: ');readln(L);
write('Zadej M: ');readln(M);


asm
     mov ax,K           {nacteni K do registru ax}
     mov bx,L           {nacteni L do registru bx}
     mov cx,M           {nacteni M do registru cx}

     add ax,bx          {soucet K + L}
     sub ax,cx          {vypocet rozdilu}
     mov x,ax           {vypis vysledku do x}

end;

writeln('x: K+L-M= ',x);

repeat until keypressed;

end.