program JSA_test;
uses crt;
label s0, s1;
var K, L, M, X: integer;

begin
clrscr;
write('K = ');readln(K);
write('L = ');readln(L);
write('M = ');readln(M);

asm
    mov ax, K
    mov bx, M
    mov cx, L
    add ax, bx
    mov dx, ax
    sub dx, cx
 {  cmp ax, 0
    jnz s0; }
    mov X, dx

{s0: mov X, 0 }
end;

writeln('X = ',X);
repeat until keypressed;
end.
