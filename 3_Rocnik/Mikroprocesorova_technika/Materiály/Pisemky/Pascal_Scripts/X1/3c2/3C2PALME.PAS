Program vypocteni fce;
uses crt;
var K, L, M, X, prom_a, prom_b, prom_c:integer;
begin
clrscr;
write('prvni cislo:= ');
readln(K);
write('druhe cislo:= ');
readln(L);
write('treti cislo:= ');
readln(M);
asm
        mov ax, K           { nacteni cisal K z pameti do registru AX }
        mov bx, L           { nacteni cisla L z pameti do registru BX }
        mov cx, M           { nacteni cisla M z pameti do registru CX }
        adc ax, bx, cx      { vypocet XX:=AX+BX-CF }
        mov prom_a, ax      { zapis vysledku y AX do promenne A v pameti }
        mov ax, prom_a      { nacteni promenne a z pameti do registru }
        mov prom_b, bx      { zapis vysledku z BX do promenne B v pameti }      { zapis vysledku y AX do promenne A v pameti }
        mov bx, prom_b      { nacteni promenne b z pameti do registru }
        mov prom_a, ax      { zapis vysledku y CX do promenne C v pameti }
        mov ax, prom_a      { nacteni promenne c z pameti do registru }

        end;
writeln(' prvni cislo + druhe cislo - treti cislo = ',prom_a);
repeat until keypressed;
end.