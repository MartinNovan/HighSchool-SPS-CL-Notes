program NasobenDvouCisel;
uses crt;
var a,b,c,x : integer;
label start, konec, cyklus;

begin
start     clrscr;
          Write('Zadejte prvni cislo a: ');readln(a);
          Write('Zadejte druhe cislo b: ');readln(b);
          writeln;
          asm


{cyklus: c:=c*a;
        b:=b-1;
        if <
}
start:    mov ax,a
           mov cx,b
           mov bx,0

cyklus:    add bx,ax
           loop cyklus
           mov x, bx

konec:
          end;
          Write('Vysledek je: ',x);
          repeat until keypressed;
end.