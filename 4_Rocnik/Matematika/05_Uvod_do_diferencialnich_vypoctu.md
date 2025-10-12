# Úvod do diferenciálních výpočtů
## Složené funkce
- Říkáme že funkce h je složena z funkcí f,g
- značí se
	- $h(x)=g(f(x))$
	- nebo $h(x)=g\cdot f$
- Pořadí nemůžeme zaměňovat (viz níže)
- Příklad
	- $f:y=2x+3$
	- $g:y=\sqrt{x}$
	- $f\cdot g=2\cdot \sqrt{x}+3$
	- $g\cdot f=\sqrt{2x+3}$
- příklad
	- Z kolika funkcí se skládá $y=sin^23x$
	- První: $3x$
	- Druhá: $sin$
	- Třetí: $^2$
- Příklad
	- $f:y=x^2$
	- $g:y=x-1$
	- $f\cdot g=(x-1)^2$
	- $g\cdot f=x^2-1$
## Okolí bodu
- Okolím bodu $a$ nazýváme otevřený interval $(a-\delta, a+\delta)$, kde $\delta$ je kladné reálné číslo. Číslo $a$ nazýváme střed okolí a číslo $\delta$ nazýváme poloměr okolí.
- Levé okolí bodu $(a-\delta,a>$
- Pravé okolí bodu $<a,a+\delta)$
- Prstencové okolí bodu $(a-\delta,a)\cup(a,a+\delta)$
## Přírůstek argumentu
- Nechť funkce $f$ je definována v nějakém okolí $U(a)$ bodu $a$ a nechť $x\in U\left(a\right)$. Rozdíl $x-a$ nazýváme přírůstek argumentu v bodě $a$ a označujeme 
## Přírůstek funkce
- Nechť funkce $f$ je definována v nějakém okolí $U(a)$ bodu $a$ a nechť $x\in U\left(a\right)$. Rozdíl $f(x)-f(a)$ nazýváme přírůstek funkce v bodě $a$ odpovídající přírůstku $\Delta x=x-a$ argumentu a označujeme $\Delta y=f(x)-f(a)$.
## Spojitost funkce 
- funkce je spojitá, pokud ji můžeme nakreslit jedním tahem. (není nikde přerušená)
## Limita funkce
- $\lim_{x\to a}f\left(x\right)=L$
- Funkce $f$ má v bodě $a$ a limitu $L$, jestliže k libovolně zvolenému okolí bodu $L$ existuje okolí bodu $a$ tak, že pro všechna $x\ne a$ z tohoto okolí náleží hodnoty $f(x)$ zvolenému okolí bodu $L$.
- Můžeme tedy psát
	- $\lim_{x\to a}f\left(x\right)=L\lrArr\forall_{\varepsilon}>0\exists\delta>0$ tak že pro $0<|x-a|<\delta$ platí $|f(x)-L|<\varepsilon$
- příklad
	- $\lim_{x\to 2}\frac{3x+4}{x^2+1}$
		- $\lim_{x\to 2}\frac{3x+4}{x^2+1}=2$
	- $\lim_{x\to 0}\frac{3x^2-x}{x}$
		- $\frac{3x^2-x}{x}=\frac{x(3x-1)}{x}=\frac{3x-1}{1}$
		- $\lim_{x\to 0}\frac{3x-1}{1}=-1$
	- $\lim_{x\to -1}\frac{x^2+4x+3}{x^3+1}$
		- $\frac{x^2+4x+3}{x^3+1}=\frac{(x+3)(x+1)}{(x+1)(x^2-2x+1)}=\frac{x+3}{x^2-2x+1}$
		- $\lim_{x\to -1}\frac{x+3}{x^2-2x+1}=\frac{2}{3}$
- vzorce
	- $\lim_{x\to 0}\frac{sin(x)}{x} =1$
	- $\lim_{x\to 0}\frac{sin (kx)}{kx} =1$
- příklad
	-  $\lim_{x\to 0}\frac{sin (2x)}{3x} =1$
	- potstup
		- $\lim_{x\to 0}\frac{sin (2x)}{3x}$
		- $\lim_{x\to 0}\frac{sin (2x)}{3x}$
		- $\lim_{x\to 0}\frac{sin (2x)}{3x}\cdot\frac{2}{2}=\frac{2}{3}$
	- $\lim_{x\to 0}\frac{2cos^2(x)\cdot sin (x)}{x}$
		- $\lim_{x\to 0}\frac{2cos^2(x)\cdot sin (x)}{x}=2$
	- $\lim_{x\to 0}(\frac{4}{x^2+2}-\frac{x}{sin(x)})$
		-  $\lim_{x\to 0}(\frac{4}{x^2+2}-1)$
		- $\lim_{x\to 0}(2-1)=1$
	- $\lim_{x\to 0}\frac{3tan^2(x)}{2x^2}$
		- $\lim_{x\to 0}\frac{3sin^2(x)}{2x^2\cdot cos^2(x)}$
	- $\lim_{x\to 0}\frac{cos(x)-1}{sin^2(x)}$
		- $\lim_{x\to 0}\frac{cos(x)-1}{sin^2(x)}$
		- -1/2 výsledek
	- $\lim_{x\to 0}\frac{sin(3x)}{5x}$
		- 3/5 výsledek
		- 