program sucet32;
uses crt;
var K, L, M, X:integer;

begin
clrscr;
write('Zadej velikost K:');readln(K);
write('Zadej velikost L:');readln(L);
write('Zadej velikost M:');readln(M);

      asm
         mov ax,K                {ulozeni hodnoty K do registru ax}
         mov bx,L                {ulozeni hodnoty L do registru bx}
         sub ax,bx               {odecteni L od K}


         mov dx,M                {ulozeni hodnoty M do registru dx}
         add ax,dx               {secteni L-K s M}
         mov X,ax                {ulozeni vysledku do X}
      end;

writeln('X = ',X);
repeat until keypressed;
end.