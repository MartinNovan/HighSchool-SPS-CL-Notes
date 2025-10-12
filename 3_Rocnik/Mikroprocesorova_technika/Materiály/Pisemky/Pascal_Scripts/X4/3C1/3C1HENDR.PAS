program NasobeniDvouCisel;
uses crt;
var a,b,x:integer;
label zacatek,konec,cyklus;
begin
          ClrScr;
          writeln('Zadejte prvni cislo: ');readln(a);
          writeln('Zadejte druhe cislo: ');readln(b);
          writeln('(-.(-.-).-)____________________(-.(-.-).-)');
          asm
zacatek:  mov ax, a
          mov cx, b
          mov bx, 0
cyklus:   add bx, ax
          loop cyklus
          mov x, bx
konec:
          end;
          writeln('Vysledek je: ',x);
          repeat until keypressed;
          end.