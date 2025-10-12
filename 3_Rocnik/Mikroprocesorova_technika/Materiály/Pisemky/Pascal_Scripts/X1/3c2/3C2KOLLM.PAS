program test;
uses crt;
var K,L,M,X:integer;

begin
     clrscr;
     write('K: ');readln(K);
     write('L: ');readln(L);
     write('M: ');readln(M);
asm
     mov ax, K           {nacteni hodnoty k do registru ax}
     mov bx, L            {nacteni hodnoty L do registru bx}
     sub ax, bx           {odecteni hodnot z registru ax a dx}
     mov dx, M              {nacteni hodnoty M do registru dx}
     add ax,dx             {nacteni hodnoty ax a dx}
     mov X, ax               {ulozeni hodnoty z ax do X}


end;
writeln('X= ',(K-L)+M); readln(X);
repeat until keypressed;
end.