uses crt;
var a,b,done:integer;
label opakuj,opakujobracene,konec;

begin
      ClrScr;
       write('Zadej zacatek posloupnosti: ');readln(a);
       write('Zadej konec posloupnosti: ');readln(b);
       if a>b then goto opakujobracene;
opakuj:
       done:=a+1;

       if done<b then goto opakuj;
       goto konec;

opakujobracene:
       done:=a-1;

       if done>b then goto opakujobracene;
       goto konec;

konec:
      write(done);


end.
