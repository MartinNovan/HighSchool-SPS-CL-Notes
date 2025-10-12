program nasobeni_dvou_cisel;
     uses crt;
     label start,konec,konec1,a;
     var cislo,cislo2,vysledek:integer;




begin
     clrscr;
     write ('zadejte prvni cislo: ');
     readln(cislo);
     write('zadejte druhe cislo: ');
     readln(cislo2);




   Start: if cislo2>0 then goto a;
          if cislo2=0 then goto konec;



   a:vysledek:=vysledek+cislo;
     cislo2:=cislo2-1;
     goto start;


   konec:
          write(vysledek);
          repeat until keypressed;














end
.end.