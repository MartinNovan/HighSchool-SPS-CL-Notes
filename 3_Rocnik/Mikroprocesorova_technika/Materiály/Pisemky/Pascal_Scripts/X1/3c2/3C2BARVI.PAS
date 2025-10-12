program BARVI;
uses crt;
var K, L, M, X: integer;
label start, konec;


begin
     start:clrscr;
     writeln('zadejte cislo K:  ');
     readln(K);       {cislo pro pismeno K}
     writeln('zadejte cislo L:  ');
     readln(L);
     writeln('zadejte cislo M:  ');
     readln(M);

asm
        mov ax,K           {presun dat z akumulatoru do K}
        mov bx,L           {presun dat z akumulatoru do L}
        mov cx,M           {presun dat z akumulatoru do M}

        sub ax, bx         {odecteni ax - bx}
        add ax, dx         {secteni dat}
        mov x, ax          {presun dat z kl do X}

end;

   writeln('=============================================');
   writeln('vysledek je: ',X);
   repeat until keypressed;
end.