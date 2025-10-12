program NasobeniDvouCisel;
uses crt;
var a, b, x, i: Integer;
label ZACATEK, KONEC, CYKLUSA, CYKLUSB;
begin
             ClrScr;
             WriteLn('Zadejte prvni cislo: ');
             ReadLn(a);
             WriteLn('Zadejte druhe cislo: ');
             ReadLn(b);
             WriteLn('------------------------------');
             {Smycka v pascalu}
             i := 0;
CYKLUSB:     x := x + a;
             i := i + 1;
             if (i < b) then goto CYKLUSB;

             {Smycka v ASM}
{            asm
ZACATEK:     MOV AX, a
             MOV CX, b
             MOV BX, 0
CYKLUSA:     ADD BX, AX
             LOOP CYKLUSA
             MOV x, BX
KONEC:
             end;}
             WriteLn('Vysledek je: ', x);
             WriteLn('\(^-^)/');
             Repeat until keypressed;
end.