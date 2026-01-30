# Úvod do diferenciálních výpočtů
## Složené funkce
- Říkáme že funkce h je složena z funkcí f,g
- značí se
	- $h(x)=g(f(x))$
	- nebo $h(x)=g\cdot f$
- Pořadí nemůžeme zaměňovat
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
- Ukázka limity
	- funkce $y=\frac{x^-1}{x-1}$
		- Podmínka je $x\ne1$
		- ![](../../Pasted%20image%2020260130093145.png)
		- Tudíž funkce není v bodě $x=1$ definována. Ale pomocí funkce dokážeme zjistit jakou hodnotu by funkce měla mít.
			- Představte si to jako že v grafu je díra, kterou se snažíme zalepit. 
		- Tím pádem máme $lim_{x\to 1}\frac{x^2-1}{x-1}$ a pouhým dosazením čísla jedna získáme $\frac{0}{0}$. 
		- Kvůli tomuto nyní upravíme funkci aby jsme vytvořili funkci "identickou", která by tuto podmínku ("díru") neměla. 
			- Rozdělíme si $x^2-1$ do dvou závorek
				- $lim_{x\to 1}\frac{(x+1)(x-1)}{x-1}$
			- Zkrátíme
				- $lim_{x\to 1}\frac{(x+1)(x-1)}{x-1}$ -> $lim_{x\to 1} x+1$
			- Nyní máme funkci $y=x+1$ což je prakticky funkce identická a nemá podmínku $x\ne 1$ a díky ní můžeme dopočítat jaká hodnota by zde byla u naší původní funkce.
			- Dosadíme hodnotu $1$ do nové funkce
				- $lim_{x\to 1} x+1$ -> $lim_{x\to 1} 1+1$ -> $lim_{x\to 1}=2$
			- Této limitě říkáme "Vlastní limita ve vlastním bodě"
## Typy limit
- $\lim_{x\to a}=\infty$ -> nevlastní limita ve vlastním bodě
- $\lim_{x\to\infty}=\infty$ -> nevlastní limita v nevlastním bodě
- $\lim_{x\to a}=a$ -> vlastní limita ve vlastním bodě
- $\lim_{x\to\infty}=a$ -> vlastní limita v nevlastním bodě
	- $x\to\infty$ -> nevlastní / $x\to a$ -> vlastní
	- $... = \infty$ -> nevlastní bod / $... = a$ -> vlastní bod /
- Ukázky
	- Vlastní limita ve vlastním bodě ($\lim_{x\to a} = L$)
		- **Co to znamená:** Jdu ke konkrétnímu číslu a funkce se blíží ke konkrétní výšce.
		- **Příklad:** $\lim_{x\to 1} (x+1) = 2$
			- Když se $x$ blíží k 1, $y$ se blíží ke 2.
			- _To je ten příklad s "lepením díry" v grafu, co je výše._
	- Nevlastní limita ve vlastním bodě ($\lim_{x\to a} = \infty$)
		- **Co to znamená:** Jdu ke konkrétnímu číslu, ale graf mi "vystřelí nahoru" nebo "propadne dolů".
		- **Příklad:** $y=\frac{1}{x}$
			- ![](../../Pasted%20image%2020260130095321.png)
			- $\lim_{x\to 0^+} \frac{1}{x} = +\infty$
			    - Blížím se k nule (zprava) a graf letí strmě nahoru.
			    - ![](../../Pasted%20image%2020260130095755.png)
		    - $\lim_{x\to 0^-} \frac{1}{x} = -\infty$
			    - Blížím se k nule (zleva) a graf letí strmě dolů.
			    - ![](../../Pasted%20image%2020260130100141.png)
	- Vlastní limita v nevlastním bodě ($\lim_{x\to \infty} = L$)
		- **Co to znamená:** Jdu doprava do nekonečna a graf se "ustálí" na nějaké hladině.
		- **Příklad:** $\lim_{x\to \infty} \frac{1}{x} = 0$
		    - Čím větší číslo dělím, tím menší výsledek dostanu. V nekonečnu je to nula.
	- Nevlastní limita v nevlastním bodě ($\lim_{x\to \infty} = \infty$)
		- **Co to znamená:** Jdu do nekonečna a graf letí taky do nekonečna.
		- **Příklad:** $\lim_{x\to \infty} x^2 = \infty$
		    - Čím dál jdu doprava, tím výš graf stoupá.
- příklad
	- $\lim_{x\to\infty}(4x^3-x^2+x+2)$
	- výsledek $+\infty$
### Jednostranné limity
- $\lim_{x\to 0^+}$
- $\lim_{x\to 0^-}$


## Příklady limit
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


## Užití limity funkce: Asymptoty
- Asymptota je přímka, ke které se graf funkce nekonečně přibližuje, ale (obvykle) se jí nedotkne. Limity nám slouží jako nástroj k jejich nalezení.
### 1. Asymptota bez směrnice (ABS)
- Je to **svislá čára** (kolmá na osu x).
- Hledáme ji v bodech, kde funkce **není definovaná** (body nespojitosti, "díry").
- **Postup:**
    1. Najdeme podezřelý bod $x_0$ (tam, kde je např. jmenovatel nula).
    2. Spočítáme jednostranné limity v tomto bodě ($\lim_{x\to x_0^+}$ a $\lim_{x\to x_0^-}$).
    3. Pokud alespoň jedna vyjde $\pm\infty$, pak přímka $x = x_0$ je ABS.
- **Příklad:** $y = \frac{1}{x+2}$
    1. **Podezřelý bod:** $x = -2$ (protože ve jmenovateli by byla nula).
    2. **Ověření:**
        - $\lim_{x\to -2^+} \frac{1}{x+2} = \frac{1}{0^+} = +\infty$ (Jdeme k -2 zprava, např. -1.99, jmenovatel je kladná nula).
        - $\lim_{x\to -2^-} \frac{1}{x+2} = \frac{1}{0^-} = -\infty$ (Jdeme k -2 zleva, např. -2.01, jmenovatel je záporná nula).
    3. **Závěr:** Protože vyšlo nekonečno, přímka $x = -2$ je asymptota bez směrnice.
### 2. Asymptota se směrnicí (ASS)
- Je to **šikmá přímka** ve tvaru $y = kx + q$.
- Zkoumá chování funkce "na koncích světa" (v $\pm\infty$).
- **Vzorce:**
    - $k = \lim_{x\to \infty} \frac{f(x)}{x}$
    - $q = \lim_{x\to \infty} (f(x) - kx)$
    - _(Pozor: Pokud $k$ vyjde $\pm\infty$ nebo neexistuje, ASS neexistuje. Pokud $k=0$, může jít o vodorovnou asymptotu)._
### Příklad na výpočet (Doplnění tvého příkladu)
**Zadání:** Najděte asymptoty funkce $y = x + \frac{1}{x}$
**A) Asymptota bez směrnice (ABS)**
1. **Definiční obor:** $x \neq 0$. Podezřelý bod je $x=0$.
2. **Limity:**
    - $\lim_{x\to 0^+} (x + \frac{1}{x}) = 0 + \infty = +\infty$
    - $\lim_{x\to 0^-} (x + \frac{1}{x}) = 0 - \infty = -\infty$
3. **Závěr:** Přímka **$x=0$** (osa y) je ABS.
**B) Asymptota se směrnicí (ASS)**
Hledáme přímku $y = kx + q$.
4. **Výpočet $k$:**
    - $k = \lim_{x\to \infty} \frac{f(x)}{x} = \lim_{x\to \infty} \frac{x + \frac{1}{x}}{x} = \lim_{x\to \infty} (\frac{x}{x} + \frac{1}{x^2}) = \lim_{x\to \infty} (1 + 0) = \mathbf{1}$
5. **Výpočet $q$:**
	- $q = \lim_{x\to \infty} (f(x) - kx) = \lim_{x\to \infty} ((x + \frac{1}{x}) - 1\cdot x) = \lim_{x\to \infty} (x + \frac{1}{x} - x) = \lim_{x\to \infty} (\frac{1}{x}) = \mathbf{0}$
6. **Závěr:**
    - Máme $k=1$ a $q=0$. Rovnice asymptoty je $y = 1x + 0$, tedy **$y=x$**.
- **Celkový výsledek:** Funkce má svislou asymptotu $x=0$ a šikmou asymptotu $y=x$.