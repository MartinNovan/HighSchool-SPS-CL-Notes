
uses Crt;
var A,B,C:integer;
label start,soucin,navyseni,snizeni,skonci,konec;

begin
start:   clrscr;
        Writeln('A*B=C');
        writeln('----------------------');
        write(' A= ');readln(a);
        write(' B= ');readln(b);
        writeln('---------------------');
soucin:  C:=A+B;
        if C>A+B then goto navyseni;
        if C<A+B then goto snizeni;
        if C=A*B then goto skonci;
        writeln('Nema reseni');
        goto konec;
 navyseni:  C:=+1 goto soucin;

 snizeni:  C:=-1 goto soucin;

 skonci:  writeln('vysledek: ');readln(C);


konec:  repeat until keypressed;
end.