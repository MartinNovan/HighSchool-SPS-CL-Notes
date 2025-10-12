program CelaCislaSoucin;
uses crt;
var a,b,x:integer;
label zacatek,konec,cyklus;

begin
     ClrScr;
     writeln('Zadejte cele cislo a: ');
     readln(a);
     writeln('Zadejte cele cislo b: ');
     readln(b);
     writeln('---____________________---_____________________---_____________________');
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