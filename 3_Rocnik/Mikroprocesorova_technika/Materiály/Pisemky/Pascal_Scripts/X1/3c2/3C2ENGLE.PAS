program Test;
uses crt;
label  start, mezipocet, konec;
var   X, K, L, M : integer;

begin
start:
                 clrscr;
                 writeln('Vita Vas program pro vypocet X = ( K - L ) + M');
                 write('Zapiste hodnotu K =');
                 readln(K);
                 write('Zapiste hodnotu L =');
                 readln(L);
                 write('Zapiste hodnotu M =');
                 readln(M);

mezipocet:

        X := abs( K - L ) + M;



konec:       writeln('---------------------------');
             writeln('X=',X );
             readln;
end.