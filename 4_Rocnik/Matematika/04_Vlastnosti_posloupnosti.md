
# Vlastnosti posloupností
- Posloupnosti dokážeme převést na grafy, mají také podobné vlastnosti
	- Rostoucí/klesající/Konstantní
	- Omezená zhora/zdola/zhora i zdola/není omezená
## Aritmetická posloupnost vlastnosti
- vzorec $a_{n+1}=a_n+d$
- Pokud je $d$ 
	- $d>0$ tak 
	- $d<0$ tak
	- $d=0$ tak 
==Dopsat==
## Limita posloupnosti
- Říkáme, že posloupnost $(a_{n})_{n=1}^{\infty}$ je **konvergentní** (má limitu), právě když existuje číslo $a\in R$ takové, že platí: Ke každému $\epsilon>0$ existuje $n_0\in N$ tak, že pro všechna přirozená čísla $n\ge n_0$ je $|a_n - a|<\varepsilon$ 
	- neboli zapsáno
		- $\exists a\in R\forall\varepsilon>0\exists n_0\in N;\forall n\ge n_0\left|a_{n}-a\right|<\varepsilon$
	- Posloupnost co nemá limitu se nazývá **divergentní** (nemá limitu)
- Číslo $a$ se nazývá limita posloupnosti $(a_{n})_{n=1}^{\infty}$
- Limita se zapisuje jako ->  $\lim_{n\to\infty}a_{n}=a$
- Ať zvolíme jakkoliv malé $\epsilon>0$, vždy existuje $n_0\in N$ tak, že pro všechny $n\ge n_0$ patří obrazy členů posloupnosti $(a_{n})_{n=1}^{\infty}$ v soustavě souřadnic v rovině do vnitřku pásu s "hranicemi" $a+\varepsilon$ a $a-\varepsilon$ 
- ![](Obrazky/Limit.png)
- Limita je číslo $a$ (na obrázku znázorněné vodorovnou přímkou $A$), ke kterému se posloupnost přibližuje.  
- Kolem této hodnoty si z libovolně zvoleného $\varepsilon > 0$ vytvoříme „pás“ mezi $A - \varepsilon$ a $A + \varepsilon$ (šedivá oblast na obrázku, nazýváme to ε-okolí).
	- Slouží k **formálnímu určení, jak blízko jsou členy posloupnosti limitě**.
- Bod/index $n_0$​ je tedy první člen posloupnosti, který do pásu spadl — a od něj dál už posloupnost pás nikdy neopustí.
	- **První člen v pásu nemusí být první člen v posloupnosti**, vše záleží na tom jaké zvolíme $\varepsilon$
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{n+1}{n}$
	- Postup
		-  Nalezneme největší mocninu, která se nachází v posloupnosti, zde to je $n^1$
			- Momentálně použijeme vzorec $\frac{1}{n^x}=0$
				- Tento vzorec vychází tak, že se přibližujeme postupně v posloupnosti k 0
				- např. pokud máme $n^1$ hodnoty se postupně zmenšují -> 
				  ($1, 0.5, 0.3, 0.25, ..., 0.01, ... ,0.001, ...$) tím pádem "můžeme" toto definovat jako $0$
				- pokud budeme mít větší jak $n^1$ např. $n^2$ či víc, k nule se budeme přibližovat mnohem rychleji
				- Nezapomeňme že se jedná o posloupnost a dosazujeme celá čísla!
				- Toto můžeme použít jen u neomezených posloupností!
		- Vydělíme všechny členy nejvyšší mocninou co se nachází v $\frac{n+1}{n}$
			- $\frac{n+1}{n}$ -> $\frac{\frac{n}{n}+\frac{1}{n}}{\frac{n}{n}}$
		- Zkrátíme vše
			- $\frac{\frac{n}{n}+\frac{1}{n}}{\frac{n}{n}}$
				- $\frac{n}{n}$ -> $1$ (klasické zkrácení) 
				- $\frac{1}{n}$ -> 0 (použití vzorečku výše)
			- tím pádem nám vyjde
			- $\frac{1+0}{1}$
			- což je $1$
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{5n+1}{n}$
	- Postup
		-  Nalezneme největší mocninu, která se nachází v posloupnosti, zde to je $n^1$
		- Vydělíme všechny členy nejvyšší mocninou co se nachází v $\frac{5n+1}{n}$
			- $\frac{5n+1}{n}$ -> $\frac{\frac{5n}{n}+\frac{1}{n}}{\frac{n}{n}}$
		- Zkrátíme vše
			- $\frac{\frac{5n}{n}+\frac{1}{n}}{\frac{n}{n}}$
				- $\frac{n}{n}$ -> $1$ (klasické zkrácení) 
				- $\frac{1}{n}$ -> 0 (použití vzorečku výše)
			- tím pádem nám vyjde
			- $\frac{5+0}{1}$
			- což je $5$
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{3}{n^2}$
	- Postup
		-  Nalezneme největší mocninu, která se nachází v posloupnosti, zde to je $n^2$
		- Vydělíme všechny členy nejvyšší mocninou co se nachází v $\frac{3}{n^2}$
			- $\frac{3}{n^2}$ -> $\frac{\frac{3}{n^2}}{\frac{n^2}{n^2}}$
		- Zkrátíme vše
			- $\frac{\frac{3}{n^2}}{\frac{n^2}{n^2}}$
				- $\frac{n^2}{n^2}$ -> $1$ (klasické zkrácení) 
				- $\frac{1}{n^2}$ -> 0 (použití vzorečku výše)
			- tím pádem nám vyjde
			- $\frac{3\cdot0}{1}$
			- což je $0$
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{3n+1}{2n-1}$
	- Postup
		-  Nalezneme největší mocninu, která se nachází v posloupnosti, zde to je $n^1$
		- Vydělíme všechny členy nejvyšší mocninou co se nachází v $\frac{3n+1}{2n-1}$
			- $\frac{3n+1}{2n-1}$ -> $\frac{\frac{3n}{n}+\frac{1}{n}}{\frac{2n}{n}-\frac{1}{n}}$
		- Zkrátíme vše
			- $\frac{\frac{3n}{n}+\frac{1}{n}}{\frac{2n}{n}-\frac{1}{n}}$
				- $\frac{n}{n}$ -> $1$ (klasické zkrácení) 
				- $\frac{1}{n}$ -> 0 (použití vzorečku výše)
			- tím pádem nám vyjde
			- $\frac{3+0}{2-0}$
			- což je $\frac{3}{2}$
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{5n^2-4n+3}{3n^2+2n-1}$
	- Postup
		-  Nalezneme největší mocninu, která se nachází v posloupnosti, zde to je $n^2$
		- Vydělíme všechny členy nejvyšší mocninou co se nachází v $\frac{5n^2-4n+3}{3n^2+2n-1}$
			- $\frac{5n^2-4n+3}{3n^2+2n-1}$ -> $\frac{\frac{5n^2}{n^2}-\frac{4n}{n^2}+\frac{3}{n^2}}{\frac{3n^2}{n^2}+\frac{2n}{n^2}-\frac{1}{n^2}}$
		- Zkrátíme vše
			- $\frac{\frac{5n^2}{n^2}-\frac{4n}{n^2}+\frac{3}{n^2}}{\frac{3n^2}{n^2}+\frac{2n}{n^2}-\frac{1}{n^2}}$
				- z $\frac{5n^2}{n^2}$ nám vyjde po zkrácení $5$; z $\frac{3n^2}{n^2}$ nám vyjde po zkrácení $3$
				- z $\frac{4n}{n^2}$ můžeme vykrátit mocninu a vyjde nám případ $\frac{1}{n}=0$ což je $0$; u $\frac{3n^2}{n^2}$ uděláme to samé a vyjde také $0$
				- u $\frac{3}{n^2}$ a $\frac{1}{n^2}$ použijeme $\frac{1}{n^2}=0$ a u obou nám vyjde $0$ 
			- tím pádem nám vyjde $\frac{5}{3}$
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{5n^3-4}{5n^2}$
	- Postup
		- Nalezneme největší mocninu, která se nachází v posloupnosti, zde to je $n^3$
		- Vydělíme všechny členy nejvyšší mocninou
			- $\frac{5n^3-4}{5n^2}$ -> $\frac{\frac{5n^3}{n^3}-\frac{4}{n^3}}{\frac{5n^2}{n^3}}$
		- Zkrátíme vše
			- $\frac{\frac{5n^3}{n^3}-\frac{4}{n^3}}{\frac{5n^2}{n^3}}$
			- Vyjde nám ale
			- $\frac{5-0}{0}$
			- To je nevalidní, tedy toto nemá řešení a posloupnost je **divergentní** (nemá limitu)
- příklad
	- Najděte limitu: $\lim_{n\to\infty}\frac{(n-3)(2n-1)}{(n+1)^2}$
	- Postup
		- První možnost je závorky roznásobit a následně je vypočítat klasicky
		- Druhá možnost je, pokud si všimnete z předchozích příkladů, pokaždé tam zůstanou pouze hodnoty, kde je největší mocnina a ostatní jsou $0$. Toto můžeme zde využít a roznásobit si pouze hodnoty kde je největší mocnina a druhé nahradit okamžitě $0$.
		- Takže použijeme pro urychlení druhou možnost
		- $\frac{(n-3)(2n-1)}{(n+1)^2}$ -> $\frac{2n^2}{n^2}$
		- Toto můžeme klasicky vydělit a výsledek nám vyjde $2$
## Nekonečná geometrická řada
- součet nekonečné geometrické řady: $S=\frac{a_1}{1-q}$ 
- Příklad
	- Máme zadanou řadu $\Sigma_{n=1}^{\infty}\frac{1}{2^n-1}$
	- Postup
		- Najdeme první a druhý člen a q ($q=\frac{a_2}{a_1}$), a dosadíme do vzorce
- Příklad
	- Máme zadanou řadu $\Sigma_{n=1}^{\infty}10^{-n}$
	- Postup
		- stejně
- Příklad
	- Máme zadanou řadu $0.3\overline{25}$
	- Postup
		- $0.3$+$a_1=0.025$; $a_2=0.00025$ //idk
- Příklad
	- Máme zadanou řadu $0.\overline{4}$
	- Postup
		- $a_1=0.4$; $a_2=0.04$ //idk
- Příklad
	- Máme zadanou řadu $\Sigma_{n=1}^{\infty}(\frac{2}{3})^n$
	- Postup
		- stejně
- Trojuhelník v trojuhelníku (rovnostranný - součet obvodu)
- Čtverec ve čtverci (součet obsahu)
- Spirála PPho záda (délka poloměru spirály)


- Příklad Řešte v R rovnice $1+\frac{2}{x}+\frac{4}{x^2}+\frac{8}{x^3}+...=\frac{4x-3}{3x-4}$
	- Postup
		- Podmínky $x\ne0$ a $x\ne\frac{4}{3}$ a $x\ne2$
		- $q=\frac{2}{x}$
		- $-1<\frac{2}{x}<1$
		- $\frac{1}{1-\frac{2}{x}}=\frac{4x-3}{3x-4}$
		- $\frac{1}{\frac{x-2}{x}}=\frac{4x-3}{3x-4}$
		- $\frac{x}{x-2}=\frac{4x-3}{3x-4}$
		- $x(3x-4)=(4x-3)(x-2)$
		- $3x^2-4x=4x^2-11x+6$
		- $x^2-7x^2+6=0$
		- $(x-1)(x-6)=0$
		- $x_1=1$ ; $x_2=6$
		- $-1<\frac{2}{x_1}<1$ -> nepravda
		- $-1<\frac{2}{x_2}<1$ -> pravda
		- $K=\{6\}$



o = 15,42
S = 16,06


S = 201.06-50.26 = 150.8
O = 75,39 

S =  1,732 - 1,57 = 0,162

