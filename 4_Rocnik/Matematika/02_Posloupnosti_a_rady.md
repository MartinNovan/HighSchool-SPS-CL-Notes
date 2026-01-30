# Posloupnosti a řady
## Zápis
- výčtem 
	- $2,4,6,8,...$
		- Vypíšeme jednotlivá čísla
- Vzorcem pro N-tý člen 
	- $(n+1)_{n=1}^{\infty}$ -> 2,3,4,5,6,...
		- Tento zápis definuje **celou posloupnost jako objekt**. Říká nám nejen _jak_ vypočítat členy, ale také _odkud a kam_ indexujeme.
		- **Výhoda:** Explicitně určuje **definiční obor** (rozsah indexů).
		- **Použití:** Tento zápis se používá k jasnému rozlišení, zda je posloupnost **konečná** nebo **nekonečná**.
		    - Horní mez $\infty$ = nekonečná posloupnost (např. $(5)^{\infty}_{n=1}$).
		    - Horní mez číslo (např. 8) = konečná posloupnost (např. $(n)^8_{n=1}$ končí na indexu 8).
		    - Dolní mez určuje, kde se začíná (obvykle $n=1$, ale může být i 0).
	- $a_n=\frac{2n+1}{n}$
		- Tento zápis definuje předpis pro **konkrétní hodnotu n-tého členu**. Je to čistě funkční předpis (vzorec).
		- **Výhoda:** Je stručný a zaměřuje se přímo na výpočet hodnoty. Často se používá, když je z kontextu jasné, že jde o $n \in \mathbb{N}$ (přirozená čísla).
		- **Použití:** Tento tvar se objevuje tam, kde prostě definujeme vzorec, nebo když se přechází k rekurentnímu zadání, kde se pracuje s jednotlivými členy (např. $a_{n+1} = a_n - 2$).
- Rekurentní zadání
	- Zatímco **vzorec pro $n$-tý člen** ($a_n = \dots$) ti umožňuje "teleportovat se" rovnou na jakékoliv číslo v řadě (např. vypočítat rovnou $a_{100}$), **rekurentní zadání** popisuje **vztah mezi sousedy**. Říká ti, jak se dostat z jednoho kroku na další.
	- Zde je hlavní rozdíl oproti předchozím dvěma zápisům:
		- 1. Princip "Dominového efektu"
			- U rekurentního zadání nemůžeš vypočítat $a_{100}$, aniž bys znal $a_{99}$. A abys znal $a_{99}$, musíš znát $a_{98}$, atd. Musíš si celou posloupnost "odkrokovat" od začátku.
		- 2. Nutnost "Startovního bodu"
			- To je to nejdůležitější, na co se v písemkách zapomíná. Rekurentní vzorec sám o sobě nestačí.
			- Kdybych řekl jen: _"Další číslo je o 2 menší než to předchozí"_ ($a_{n+1} = a_n - 2$), nevíme, kde začít.
			    - Může to být: $10, 8, 6...$
			    - Nebo: $0, -2, -4...$
			- Proto **musí** být vždy zadán alespoň jeden člen pevně, obvykle první ($a_1 = 1$).
	- $a_{n+1}=a_n-2$
	- $a_1 =1$
		- $a_2 = -1$
		- $a_3 =-3$
		- $a_4 =-5$

- Za $n$ dosazujeme pouze přirozená čísla ($1;2;\to\infty$), maximálně můžeme přidat 0. Jiné čísla nejsou připuštěna.
### Příklady
- Zadání
	- máme posloupnost $1,2,3,4,5,6,7,8$ vyrobte vzorec pro N-tý člen
		- Je to konečná posloupnost (končí na čísle 8)
		- $(n)^8_{n=1}$
	- máme posloupnost $1,4,9,16,25$ vyrobte vzorec pro N-tý člen
		- také je to konečná posloupnost
		- $(n²)^{5}_{n=1}$
	- máme posloupnost $5,5,5,5,5,...$ vyrobte vzorec pro N-tý člen
		- Jedná se o nekonečnou posloupnost
		- $(5)^{\infty}_{n=1}$
	- Máme N-tý vzorec $((-1)^{n+1}*3)^{10}_{n=1}$
		- Jedná se o konečnou posloupnost
		- $3,-3,3,-3,3,-3,3,-3,3,-3$
	- máme posloupnost $\frac12+\frac23+\frac34+\frac45,\ldots$ vyrobte vzorec pro N-tý člen
		- Jedná se o nekonečnou posloupnost
		- Čitatel je $n$, jmenovatel je o jedna větší ($n+1$).
		- $(\frac{n}{n+1})_{n=1}^{\infty}$
	- Máme zadaný zápis $a_n=\frac{2n+1}{n}$ napište prvních 5 členů
		- Dosazujeme za $n=1, 2, 3, 4, 5$.
		- $3;\frac52;\frac73;\frac94;\frac{11}{5}$
	- - **Zadání:** Máme hodnoty $1; 3; 5; 7; \dots$, zapište vzorcem pro n-tý člen a rekurentně.
    
    - **N-tý člen:** $a_n=2n-1$ (lichá čísla)
        
    - **Rekurentně:** $a_1=1; a_{n+1}=a_n+2$
        
- Zadání: 
	- Máme hodnoty $1; -1; 1; -1; \dots$, zapište vzorcem pro n-tý člen a rekurentně.
	    - **N-tý člen:** $a_n=(-1)^{n+1}$
	    - **Rekurentně:** $a_1=1; a_{n+1}=-a_n$ (násobení -1 obrátí znaménko)
- Zadání: 
	- Máme hodnoty $5; 7; 9; 11; 13; \dots$, zapište vzorcem pro n-tý člen a rekurentně.
	    - **N-tý člen:** $a_n=2n+3$
	    - **Rekurentně:** $a_1=5; a_{n+1}=a_n+2$
- Zadání: 
	- Máme rekurentní rovnici $a_{n+2}=a_{n+1}-a_n; a_1=1; a_2=2$.
	    - $a_3 = a_2 - a_1 = 2 - 1 = 1$
	    - $a_4 = a_3 - a_2 = 1 - 2 = -1$
	    - $a_5 = a_4 - a_3 = -1 - 1 = -2$
- Zadání: 
	- Máme rekurentní rovnici $a_{n+2}=a_{n+1}+a_n; a_1=1; a_2=2$ (Fibonacciho princip).
	    - $a_3 = a_2 + a_1 = 2 + 1 = 3$
	    - $a_4 = a_3 + a_2 = 3 + 2 = 5$
	    - $a_5 = a_4 + a_3 = 5 + 3 = 8$
## Aritmetická posloupnost
- V posloupnosti se přičítá nebo odčítá určitá hodnota 
	- např. $1;3;5;7;9$ u každé hodnoty přičítáme hodnotu $2$
### Vzorečky
- $a_{n+1}=a_n+d$
	- číslo $d$ se nazývá **diference**
	- Vztah mezi dvěma sousedními členy.
- $a_n=a_1+(n-1)d$
	- Vzorec pro výpočet N-tého členu pomocí prvního členu a diference
- $a_s=a_r+(s-r)d$
	- Vzorec pro vztah mezi dvěma libovolnými členy (kde $s > r$).
- $s_{n}=\frac{n}{2}\left(a_1+a_{n}\right)$
	- Součet prvních $n$ členů.
###  Příklady
- Příklad
	- Máme posloupnost $a_n=2n-4$ zjistěte zda je aritmetická
	- Postup
		- Zjistíme $d$ a to zjistíme pomocí dopočtení prvních pár hodnot a zjistíme zda se jedná o aritmetickou posloupnost 
			- samozřejmě jde i vidět že vzorec odpovídá aritmetické posloupnosti ale zde si to dokážeme že se opravdu jedná o aritmetickou posloupnost
		- Dopočítáme prvních 5 hodnot
			- $a_1=-2$
			- $a_2=0$
			- $a_3=2$
			- $a_4=4$
			- $a_5=6$
			- Jde vidět, že se hodnoty zvedají o $+2$ tím pádem se jedná o aritmetickou posloupnost
- Příklad
	- Máme zadané hodnoty $a_3=5;a_8=15$ zjistěte zda se jedná o aritmetickou posloupnost, popřípadě zjistěte hodnoty $d,a_1,a_{17}$
	- Postup
		- Zjistíme dosazením hodnoty do vzorečku $a_s=a_r+(s-r)d$
			- $a_8=a_3+(8-3)d$
			- $15=5+(5)d$
			- $d=2$
		- Nyní potřebujeme zjistit hodnotu $a_1$, to zjistíme pomocí dosazení do vzorečku $a_n=a_1+(n-1)d$
			- $a_8=a_1+(8-1)2$ 
				- Dosadit můžeme také $a_3$ je to libovolné ale musíme znát velikost hodnoty
			- $15=a_1+14$
			- $a_1=1$
		- Nyní zjistíme hodnotu $a_{17}$ to provedeme pomocí vzorečku $a_n=a_1+(n-1)d$
			- $a_{17}=1+(17-1)2$
			- $a_{17}=33$
- Příklad
	- Máme zadaný vzorec $(n)_{n=1}^{\infty}$ zjistěte $s_{100}$
	- Postup
		- Použijeme vzorec $s_{n}=\frac{n}{2}\left(a_1+a_{n}\right)$, potřebujeme k tomu hodnotu $a_1$ a $a_n$
		- $a_1$ a $a_100$ jsou zde jednoduché jelikož se jedná o přičítání 1 tudíž $a_1=1$ a $a_{100}=100$
		- Nyní to vše hodíme do vzorce
			- $s_{100}=\frac{100}{2}\left(1+100\right)$
			- $s_{100}=5050$
- Příklad: 
	- Máme diferenci $d=0.04$ a hodnotu $a_{50}=6$. Zjistěte $a_1, a_{100}, s_{100}$.
    - Výpočet $a_1$:
        - $a_{50} = a_1 + 49d$
        - $6 = a_1 + 49 \cdot 0,04$
        - $6 = a_1 + 1,96 \Rightarrow a_1 = 4,04$
    - Výpočet $a_{100}$:
        - $a_{100} = a_1 + 99d$
        - $a_{100} = 4,04 + 99 \cdot 0,04 = 4,04 + 3,96 = 8$
    - Výpočet $s_{100}$:
        - $s_{100} = \frac{100}{2}(a_1 + a_{100}) = 50(4,04 + 8) = 50 \cdot 12,04 = 602$
- Příklad: 
	- Střecha tvaru lichoběžníku. 1. řada = 85 tašek, poslední řada = 102 tašek, každá další řada o 1 tašku více ($d=1$). Kolik tašek celkem ($s_n$)?
    - Postup:
        - Známe $a_1=85, a_n=102, d=1$. Musíme zjistit počet řad $n$.
        - $a_n = a_1 + (n-1)d$
        - $102 = 85 + (n-1) \cdot 1$
        - $17 = n - 1 \Rightarrow n = 18$ (střecha má 18 řad)
        - Nyní součet $s_{18}$:
        - $s_{18} = \frac{18}{2}(85 + 102) = 9 \cdot 187 = 1683$ tašek.
## Geometrická posloupnost
- V posloupnosti se násobí stále stejnou hodnotou.
- ${2;4;8;16}$ -> pokaždé vynásobíme 2
	- Číslo kterým násobíme nazýváme kvocient ($q$)
### Vzorečky
- vzorce
	- $a_{n+1}=a_n\cdot q$
	- $a_n=a_1\cdot q^{n-1}$
	- $a_s=a_r\cdot q^{s-r}$
	- $S_n=a_1\cdot \frac{q^n-1}{q-1}$
	- $q = \frac{a_2}{a_1}$
### Příklady
- Příklad: 
	- Zadáno $a_1=6, a_2=24$. Vypočítejte $q, a_5, a_8$.
    - **Výpočet $q$:**
        - $q = \frac{a_2}{a_1} = \frac{24}{6} = 4$
    - **Výpočet $a_5$:**
        - $a_5 = a_1 \cdot q^{5-1} = 6 \cdot 4^4 = 6 \cdot 256 = 1536$
    - **Výpočet $a_8$:**
        - $a_8 = a_1 \cdot q^{7} = 6 \cdot 4^7 = 6 \cdot 16384 = 98304$
- Příklad: 
	- Zadáno $a_4=\frac{1}{3}, a_5=\frac{1}{9}$. Vypočtěte součet prvních 7 hodnot $S_7$.
    - **Postup:**
        1. Zjistíme $q$: $q = \frac{a_5}{a_4} = \frac{\frac{1}{9}}{\frac{1}{3}} = \frac{3}{9} = \frac{1}{3}$.
        2. Dopočítáme $a_1$:
            - $a_4 = a_1 \cdot q^3$
            - $\frac{1}{3} = a_1 \cdot (\frac{1}{3})^3 = a_1 \cdot \frac{1}{27}$
            - $a_1 = \frac{1}{3} \cdot 27 = 9$.
        3. Dosadíme do vzorce pro $S_7$:
            - $S_7 = 9 \cdot \frac{(\frac{1}{3})^7 - 1}{\frac{1}{3} - 1} = 9 \cdot \frac{\frac{1}{2187} - 1}{-\frac{2}{3}}$
            - $S_7 = 9 \cdot \frac{-\frac{2186}{2187}}{-\frac{2}{3}} = 9 \cdot \frac{2186}{2187} \cdot \frac{3}{2}$
            - $S_7 = \frac{1093}{81} \doteq 13,49$ 
- Příklad: 
	- Zadáno $a_1 - a_3 = -1,5$ a $a_2 + a_1 = 1,5$. Vypočtěte součet prvních 5 hodnot $S_5$.
    - **Postup (Soustava rovnic):**
        1. Vyjádříme vše pomocí $a_1$ a $q$:
            - $a_1 - a_1 q^2 = -1,5 \Rightarrow a_1(1-q^2) = -1,5$
            - $a_1 q + a_1 = 1,5 \Rightarrow a_1(1+q) = 1,5$
        2. Vydělíme první rovnici druhou:
            - $\frac{a_1(1-q)(1+q)}{a_1(1+q)} = \frac{-1,5}{1,5}$
            - $1-q = -1 \Rightarrow q = 2$
        3. Dosadíme $q$ zpět a zjistíme $a_1$:
            - $a_1(1+2) = 1,5 \Rightarrow 3a_1 = 1,5 \Rightarrow a_1 = 0,5$
        4. Vypočítáme $S_5$:
            - $S_5 = 0,5 \cdot \frac{2^5 - 1}{2 - 1} = 0,5 \cdot \frac{31}{1} = 15,5$
  