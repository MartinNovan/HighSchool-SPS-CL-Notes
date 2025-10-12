program soucetTest;
uses crt;
var K, L, M : word;
    x : integer;

begin
        clrscr;
        write('Zadehte cislo K: '); readln(K);
        write('Zadehte cislo L: '); readln(L);
        write('Zadehte cislo M: '); readln(M);


asm
        mov ax, K  {presun K do ax}
        mov bx, L  {presun L do bx}
        mov dx, M  {presun M do dx}

        sub ax, bx {odecteni ax a bx}
        neg ax     {absolutni hodnota souctu ax bx}
        add ax, dx {secteni ax, dx}
        mov x, ax  {presun x do ax}

        end;

        writeln('=====================================');
        writeln('Vysledek rovnice je: ', x);
        repeat until keypressed
end.
