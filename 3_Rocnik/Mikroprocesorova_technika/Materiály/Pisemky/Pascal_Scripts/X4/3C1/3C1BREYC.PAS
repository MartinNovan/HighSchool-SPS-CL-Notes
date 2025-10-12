program NasobeniDvouCisel;
uses crt;
var a,b,x : integer;
label start, konec, cyklus;

begin
     clrscr;
     writeln('Zadejte cislo a:');
     readln(a);
     writeln('Zadejte cislo b:');
     readln(b);
     writeln;


        asm
start:  mov ax, a
        mov cx, b
        mov bx, 0

cyklus: add bx, ax
        loop cyklus
        mov x, bx

konec:
         end;
         writeln('Vysledek je: ',x);
         repeat until keypressed;
end.