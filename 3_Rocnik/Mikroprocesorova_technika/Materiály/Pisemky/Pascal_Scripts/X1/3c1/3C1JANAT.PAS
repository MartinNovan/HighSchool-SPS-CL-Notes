program poradi;
uses Crt;
var prvni, druhe, a, vysledek: integer;
label mezi, konec;

begin
     ClrScr;
     writeln ('Zadejte prvni cislo posloupnosti');
     readln (prvni);
     writeln ('Zadejte druhe cislo posloupnosti');
     readln (druhe);

mezi: if prvni>= druhe then goto konec;
      prvni:= prvni+1;
      goto mezi;
konec: vysledek:= prvni + druhe;
       writeln (vysledek);
       readln;
end.