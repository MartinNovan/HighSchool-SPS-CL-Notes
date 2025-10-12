program test;                        {nazev programu}
uses crt;                            {knihovny}
var K,L,KL,M,X: integer;             {promenne}


                                      {zacatek programu}
begin
     clrscr;                          {vymazani obrazovky}
     writeln('Zadejte prvni cislo:'); {vypis zadani cisla}
     readln(K);                       {nacteni prvniho cisla}
     writeln('Zadejte druhe cislo:');
     readln(L);
     writeln('Zadejte treti cislo:');
     readln(M);

asm
    mov ax,K                       {presun dat z promenne K do registru ax}
    mov bx,L                       {presun dat z promenne L do registru bx}
    mov cx,M                       {presun dat z promenne M do registru cx}

    sub ax,bx                      {odecteni ax - bx}
    mov kl,ax                      {presun dat z ax do promenne kl}
    neg kl                         {kontrola absolutni cislo}
    add kl,cx                      {secteni dat}
    mov X,kl                       {presun dat z kl do X}

end;

    writeln('Vysledek je:'X);     {vypis vysledku z promenne X}
    repeat until keypressed;      {ceka na stisk klavesy}

end.