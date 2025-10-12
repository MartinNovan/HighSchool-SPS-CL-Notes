program nasobeni;
uses crt;
label start, skok,ukoncit ;
var i,a, zacatek,konec : integer;

     begin
start: clrscr;
       a:=0;
       writeln('zadejte zacatek posloupnosti');
       readln(zacatek);
       writeln('zadejte konec posloupnosti');
       readln(konec);



If i<konec then goto skok;

skok: i:=i+1;
      a:=a+1;
      if i = konec then goto ukoncit;

ukoncit: write(a);
       readln;
      end.