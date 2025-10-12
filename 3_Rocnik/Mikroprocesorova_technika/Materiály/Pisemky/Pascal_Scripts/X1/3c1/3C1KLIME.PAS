program soucetp;
uses crt;
label start,cyklus, konec;
var i,a,b,zacatekp, konecp, vysledek :integer;
       begin
start:      clrscr;
            write('Zadejte zacatek posloupnosti: ');
            readln(zacatekp);
            write('Zadejte konec posloupnosti: ');
            readln(konecp);
            i:= zacatekp-1;
            a:= zacatekp;

cyklus:     b:= a;
            i:= i+1;
            a:= i+b;
            {vysledek:= zacatekp + b;}
            if konecp < b then goto cyklus;

konec:      write(a);
            readkey;
       end.
