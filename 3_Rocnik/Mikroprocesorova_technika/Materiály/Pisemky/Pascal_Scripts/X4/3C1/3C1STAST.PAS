uses crt;
var a,b,c:integer;
label start,konec,opakuj1,opakuj2;

begin
start:   clrscr;
         write('A= ');readln(a);
         write('B= ');readln(b);
         writeln('--------------');

         c:=a;
opakuj1: writeln(c:4);
         c:=c+1;
         if c<=b then goto opakuj1;

opakuj2: write(b:4);
         c:=c+1;
         if c>=b then goto opakuj2;
konec:      repeat until keypressed;
end.