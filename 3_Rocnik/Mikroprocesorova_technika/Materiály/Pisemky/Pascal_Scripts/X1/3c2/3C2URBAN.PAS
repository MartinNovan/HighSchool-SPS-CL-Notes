Program rovnice;
uses crt;
label s1;
var k, l, m, x:integer;

begin
clrscr;
write(' Cislo 1:= ');readln(k);
write(' Cislo 2:= ');readln(l);
write(' Cislo 3:= ');readln(M);

asm
        mov ax,k    {nacteni promenne a z pameti do registru AX}
        mov bx,l    {nacteni promenne b z pameti do registru bX}
        mov cx,m    {nacteni promenne b z pameti do registru bX}
        add ax,bx   {vypocet souctu AX:=AX+BX}
        sub ax,cx   {vypocet souctu AX:=AX-CX}
        mov x,ax    {nacteni vysledku z registru ax do promene x}


end;
writeln('Vysledek: ',x);
repeat until keypressed;
end.