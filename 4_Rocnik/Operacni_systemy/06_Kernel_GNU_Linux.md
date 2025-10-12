# Kernel GNU/Linux
## Modularita
- základní charakteristika GNU/Linuxu - modulárnost
	- Složen z mnoha relativně nezávislých částí - modulů
		- Modul - jednoduchý program
		- Moduly - mezi sebou komunikují (I/O)
- Rozdíly mezi distribucemi Linuxu
	- záleží na tvůrci/správci distribuce
		- jak systém sestaví
		- jaké použije moduly
## Kernel
- Funkce Kernelu
	- funkčnost OS: inicializace HW
	- bezpečnost OS: oprávnění přístupu k HW
	- použitelnost OS: poskytuje svoje API programům
### Inicializace HW
- kontrola funkčnosti HW
- Zprostředkuje přístup programům k HW
### Oprávnění přístupu
- zajišťuje bezpečí samotného systému
- kontroluje přístupová práva programů
- přiděluje systémové prostředky (pamět, čas CPU, ...)
### Poskytování API
- Application Programming Interface
- programátorské komunikační rozhraní
	- sbírka procedur/funkcí, tříd. protokolů, nějaké knihovny
### Vanilla kernel
- čisté společné jádro
	- Pro všechny distribuce linuxu
	- Vydané Linusem Torvaldem - stále pod jeho kontrolou
	- bez patchů a všeho ostatního...
- Na něj se nabalují ostatní moduly
- 4 základní moduly/funkce - společné pro všechny distribuce
	1. Multitasking
	2. Správa procesů
	3. Správa pamětí
	4. TCP/IP - komunikace
- Méně modulů -> menší jádro -> rychlejší jádro
#### Komunikace TCP/IP
- Server <-> Klient
### Typy jader
- Monolitické jádro
	- ovladače zakompilovány do jednoho celku
- Modulární jádro
	- ovladače v modulech
	- natahují se do jádra až v případě potřeby
### Linuxové jádro
- mezi monolitickém a modulárním jádrem
- je složeno z modulů
- funguje jako celek
	- moduly lze do jádra přidávat a také odebírat
		- i přímo za běhu počítače, dle potřeby
#### Linuxové modulární jádro
- soubor uložený v adresáři `/boot`
- obvykle předponou `vmlinuz`
	- obsahuje nejnutnější ovladače HW
	- zbytek se nainstaluje z "RAM disku"
	- cca 10MB
- RAM disk
	- vytvořen při startu OS
	- obsahuje všechny potřebné moduly
		- jádro po startu auto-detekuje HW
		- nainstaluje z RAM disku vše potřebné - drivery
	- soubor uložený buď v `/` nebo `/boot`
	- obvykle s předponou `initrd` - cca 50MB
- Označení verze jádra
		- verze jádra má číselné označení `A.B.C.D`
- Režim běhu jádra
	- Reálný režim (bez ochrany)
		- není možný funkční multitasking
		- 16-bitové OS
	- Privilegovaný režim (chráněný)
		- Spolehlivý běh počítače
		- plná podpora multitaskingu - ochrana RAM
			- spuštěné procesy se navzájem neovlivňují
		- Charakteristika
			- Ochrana a virtualizace paměti - multitasking
				- přidělení procesu určitou část paměti
				- zákaz zasahovat mimo tuto část
				- podpora virtuální paměti - stránkování
			- Virtualizace systému
				- uvnitř jednoho systému (hypervizor) - jiný systém (virtualizovaný)
				- Virtualizovaný OS - má dojem, že má pc jen pro sebe
					- je však pod kontrolou hypervizoru
			- Je zajištěna zpětná kompatibilita
			- Procesory x86
				- spouštějí se nejprve v reálném režimu
				- Po nahrání kernelu se přepne do privilegovaného režimu
		- Úrovně privilegovaného režimu (Ringy)
			- Jádro OS - ring 0 
				- privilegovaný režim
				- plný přístup k HW
			- Neprivilegované ostatní procesy - ring 1,2,3,...
				- Jádro je má plně pod svou kontrolou
			- Jen jádro může
				- procesům přidělovat/odebírat systémové prostředky
				- ukončovat procesy
				- vynucovat změny priorit (ringů)
				- kontrolovat neoprávněný přístup