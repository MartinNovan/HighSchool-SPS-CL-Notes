program pokus;
uses crt;
var K,L,M,X: integer;
label main, absolut;
begin
clrscr;
Write('Zadejte K: ');
ReadLn(K);
Write('Zadejte L: ');
ReadLn(L);
Write('Zadejte M: ');
ReadLn(M);
asm
main:     mov ax,K    {kopirovani K do ax}
          mov bx,L    {kopirovani L do bx}
          mov cx,M    {kopirovani M do cx}
          sub ax,bx   {odecteni bx od ax}
          jns absolut {pokud je vysledek kladny skok na navesti absolut}
          neg ax      {negace ax}
absolut:  add ax,cx   {pricteni cx k ax}
          mov X,ax    {kopirovani ax do X}
end;
WriteLn('|',K,'-',L,'|+',M,'=',X);
readkey;
end.
