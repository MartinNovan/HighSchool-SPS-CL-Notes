# Binární kódování
- abeceda => dva symboly (např. 0 a 1, tečka a čárka, true a false, ...)
- kódování významu: 
	- hodnotu čísla => velikost (směr)
    - symboly => znak ze znakové sady
![](../../Pasted%20image%2020260128102451.png)
- Řetězce 1 a 001 mají stejnou hodnotu
- $n$ počet bitů umožňuje sestavit $2^n$ možných řetězců
	- Vysvětlení -> Každým přidáním bitu nám roste počet možných prvků exponenciálně

| $n$ | $2^n$ |
| --- | ----- |
| 0   | 1     |
| 1   | 2     |
| 2   | 4     |
| 3   | 8     |
| 4   | 16    |
| 5   | 32    |
- počet bitů nutných k uložení nějakého počtu hodnot $N$
	- Vzorec: $\log_2\left(N\right)$
		- Vysvětlení -> Každým přidáním bitu nám roste počet možných prvků exponenciálně. Tudíž použijeme logaritmus pro zjištění počtu nutných bitů.
	- Příklad
		- Zjistěte kolik bitů je potřeba k uložení hodnoty 256?
		- Postup
			- $log_2(256) = 8$
			- Potřebujeme 8 bitů k uložení hodnoty 256
		- Zjistěte kolik bitů je potřeba k zakódování číslic 0-9? (Každé číslo musí mít unikátní hodnotu v dvojkové soustavě)
		- Postup
			- Máme 10 čísle -> $N=10=<0;1;2;3;...;9>$
			- $log_2(10)=3.32$
				- Musíme zaokrouhlit nahoru
					- Vysvětlení, pokud zaokrouhlíme dolů, zbudou poslední dvě čísla nezakódovaná ($2^3=8$) a my potřebujeme zakódovat všech 10 ($2^4=16$) a zůstanou nám nevyužité bitové řetězce
			- Potřebujeme 4 bity
			- Kolik kódů lze sestavit ze 4 bitů?
				- $2^4=16$
			- Kolik bitových řetězců zůstanou nevyužitých?
				- $16-10=6$
	- 