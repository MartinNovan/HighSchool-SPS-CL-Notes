uses crt;
var a,b,c,op1 :integer;

begin
  clrscr;
  Write('Zadejte prvni cislo: ');
  Readln(a);

  Write('Zadejte prosim druhe cislo: ');
  Readln(b);

  c:=a*b;
  Write('Vysledek je: ',c);

  ReadKey;


end.