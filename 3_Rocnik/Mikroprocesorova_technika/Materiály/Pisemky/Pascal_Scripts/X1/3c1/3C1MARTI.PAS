program NasobeniDvouCisel;
uses crt;

label start, pocet, pocitadlo, konec;
var cislo1, cislo2, soucin :integer;
begin

start: clrscr;
       write('Zadej prvni cislo: ');
       readln(cislo1);
       write('Zadej druhe cislo: ');
       readln(cislo2);
       writeln('---------------------');
       goto pocet;

pocet: if cislo2 = 0 then goto konec;
           goto pocitadlo;

pocitadlo: cislo2:=cislo2-1;
           soucin:= soucin +cislo1;
           goto pocet;

konec: writeln('Soucin zadanych cisel je: ', soucin);
repeat until keypressed;
end.