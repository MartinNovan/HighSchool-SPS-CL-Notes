 program kalkulacka;
uses crt;
label S0;
var K,L,M,X:integer;


                    begin
                    clrscr;
                    write('K= '); readln(K);
                    write('L= '); readln(L);
                    write('M= '); readln(M);

                    ASM
                     mov ax,K
                     mov bx,L
                     mov cx,M

                     add ax,bx
                     sub ax,cx
                     mov X,ax
                     end;

if x<0
   then writeln('x je zaporne cislo');

writeln('X=K+L-M=',X);
repeat until keypressed;
end.

