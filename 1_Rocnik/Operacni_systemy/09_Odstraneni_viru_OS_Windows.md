# Odstranění virů operačních systémů Windows
## Napadení OS viry
- Vir:
	- Zdroje škodlivého kódu:
		- Internet – warez, cracknuté programy/OS, 
		- freeware, hry…
		- Externí média (USB, DVD…)
	- Nekontrolovatelný průnik:
		- Přes administrátorský účet
	- Základní ochrana:
		- UAC – práce v uživatelském účtu
		- Podobně jako v Linuxu
- Zavirovaný OS:
	- Spuštění antivir. programu v zavirovaném PC:
		- neúčinné!!!
	- Spuštění antivir. programu v zavirovaném PC:
		- Z nouzového režimu – neúčinné!!!
	- Bez kontroly souborů SBO – neúčinné!!!
		- Při obnově opět zavirujeme OS
- Možný rozsah zavirování:
	1. Master Boot Record 	-	(hledání OS)
	2. Boot Record  			-	vlastní zavádění OS
	3. Systémové soubory
		1. Nouzový režim
		2. Soubory v `\Windows`
		3. Soubory ve společných složkách
		4. Uživatelská data
	4. Systém Bodů Obnovení OS
## Základní postup účinného odvirování
1. Důsledné čištění nepotřebných souborů
	- Odstranit nepotřebné dočasné soubory
		- (/temp, .bak, .log …)
		- Je zdlouhavé aby antivir kontroloval vše
		- Popř. odinstalovat nepotřebný a podezřelý SW
2.  Systém Bodu Obnovení
	1. Můžeme body obnovení odstranit
	2. Nebo je zpřístupnit antivirovému programu
		- Zůstanou-li zavirovány – odvirování je nanic 
3.  Oprava MBR
	- Pomocí instalačního média Windows:
	- Nabootovat z DVD/USB, spustit instalaci:
		1. vybrat Oprava PC:
		2. vybrat OS, Nástroje k opravě:
		3. vybrat nástroj příkazový řádek:
			1. Příkazy:
			2. Příkaz Bootrec.exe 
			3. Následující tři příkazy - zadávat postupně + ENTER:
				1. `bootrec.exe  /fixmbr`		(oprava MBR)
				2. `bootrec.exe  /fixboot`		(oprava BS)
				3. `bootrec.exe  /RebuildBcd`	(úložiště konfig. Dat OSW)
4.  Spuštění live OS - antivir
	- Nahrát 100% nezavirovaný OS
		- Z DVD, USB (rescue antivir disk, hirens boot, …)  
	- Zapnout logování AV programu:
	- Po odvirování zkontrolovat „log“ !!!!  
	- Některé zavirované soubory nemusí jít odstranit !!!!
	- Řešení:
		- Nabootovat LiveLinux (jakýkoli)
		- Odstranit pod Linuxem
5. Spustit odvirovaný OS
	- Odvirování – časově náročná operace
		- (Win10 – nejisté výsledky)