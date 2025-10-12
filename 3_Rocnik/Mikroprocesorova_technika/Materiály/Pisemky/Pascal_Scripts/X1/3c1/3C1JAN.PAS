program soucet_posloupnosti;
uses crt;
var a, b ,z ,x :integer;
label loop;
begin
clrscr;
write('zadejte 1. citatel:');
readln(a);
write('zadejte 2. citatel:');
readln(b);
z:=0;
x:=0;
writeln;
loop: z := z + a;
      x:=x+1;
      if x < b then goto loop;
writeln('vysledek je : ',z);
readkey;
end.