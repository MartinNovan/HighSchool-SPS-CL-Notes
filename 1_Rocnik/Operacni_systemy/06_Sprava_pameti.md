# Správa paměti
## Definice paměti:
- Primární (vnitřní) paměť:
	- Operační paměť/rozšířená – RAM
	- Rychlejší přístup než vnější paměť ( cca 10-20 ns)
		- Volatilní - elektricky závislá
			- Nestálá
			- Přepisovatelná
- Sekundární (vnější) paměť:
	- Disky, …
	- Nonvolatilní - elektricky nezávislá
## Vnitřní paměť:
- Fyzická paměť FAP
	- Fyzický Adresový Prostor
	- Přítomna v PC
- Logická (abstraktní) paměť LAP  (LAP >> FAP):
	- Logický Adresový Prostor
	- Řízení HW jednotky správ paměti MMU
		- Memory Managment Unit
### Funkce MMU
- Udržuje informace o využití paměti
	- Přiděluje paměť procesům
		- Paměť, kterou procesy uvolní, přidá k volné paměti
		- Je-li třeba, odebírá paměť procesům
- Zjišťuje ochranu paměti
	- Nedovolí procesům přístup mimo vymezený prostor
## Metody přidělování paměti
1. Přidělené **jedné** souvislé paměti
2. Přidělení **bloků** pevné velikosti
3. Přidělení **bloků proměnné** velikosti
4. Segmentace
5. Stránkování
### Přidělení paměti
1. Souvislá Oblast
	- Lap procesu/úlohy – uložen v souvislé oblasti FAP
	- Neefektivní
		- MMU hledá souvislou oblast paměti pro proces
		- Bez multitaskingu
2. Přidělení bloků pevné velikosti
3. Přidělení bloků proměnné velikosti
4. Segmentace (pro plnohodnotný multitasking)
	- Přirozená ochrana a sdílení kódu/dat
	- LAP rozdělen na bloky (proměnná velikost)
		- Bloky – segmenty pro KÓD programu
		- Bloky – segmenty pro DATA programu
5. Stránkování
	- LAP a FAP rozdělen na stejně velké bloky (4 kB)
	- FAP – rámce (data fyzicky v RAM)
	- LAP – stránky
		- Vše evidováno v Tabulce stránek TS
		- MMU – překládá jako souvislou oblast dat
		- Fyzicky jsou stránky na různých místech paměti jako na HD
## SWAP
- Virtuální paměť (swapping)
	- Ukládání obsahu FAP na disk
	- LAP> FAP
	- FAP – přiřazeno místo i na disku
		- Do odkládací oblasti FAP
			- pagefile.sys … velikost dynamická/pevná (cca jako RAM)
		- Uložení do stavu FAP – hibernace
			- hyberfil.sys … velikost cca instalované RAM
	- stránky aktivního procesu – nemusí být kompletně v paměti část může být uložená na disku
	- Dle požadavků - stránky nahrávány do paměti
	- Je-li FAP plná:
		- OS vybere neaktivní/nejméně aktivní proces
		- stránky – uloží na disk do:
			- Windows: 	do souboru x:\pagefile.sys
			- Linux:		vlastní oddíl disku (swap)
- Windows – soubor x:\pagefile.sys
	- Dynamická/Proměnná velikost
		- Neustálé výpočty/kontroly – alokace, volné místo
		- Neustálý přístup na disk (zpomalení OS)
	- Je-li pagefile.sys fragmentováno na celém disku:
		- Delší vyhledávání dat
	- Pevná velikost:
		- Lze defragmentovat – rychlejší
	- Ideální stav: dostatek RAM a neswapovat 
- Virtuální paměť Linux:
	- vlastní oddíl disku bez „FS“:
		- Nemusí se hlídat velikost souboru, kde je uložen…
		- Vyhledávání dat – sektoru: rychlejší
	- Odpovídá alokaci v FAP