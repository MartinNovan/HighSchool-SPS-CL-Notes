program test;
uses crt;
var k, l, m, x: integer;

begin
     clrscr;
     writeln('Zadej cislo K: ');
     readln(k);
     writeln('Zadej cislo L: ');
     readln(l);
     writeln('Zadej cislo M: ');
     readln(m);
asm
     mov ax, k  {nacteni cisla k do registru ax}
     mov bx, l  {nacteni cisla l do registru bx}
     sub ax, bx {odecteni registru ax a bx, hodnota ulozena v ax}
     mov cx, m  {nacteni cisla m do registru cx}
     add ax, cx {secteni ax a cx}
     mov x, ax {ulozeni vysledku do ax}
end;
     writeln('Funkce X = |K - L| + M, vysledek je ', X);
     repeat until keypressed;
end.