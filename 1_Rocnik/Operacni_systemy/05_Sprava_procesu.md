# Správa procesů
## Procesy
- OS – složen z částí
	- Jedna z důležitých částí
		- Správa procesů
### Definice procesů
- Proces (task) : 
	- program (kód), který se aktuálně provádí 
	- je nahraný do operační paměti CPU 
	- CPU mu poskytuje: 
		- Systémové prostředky: 
			- Strojový čas 
			- Velikost operační paměti 
			- Přístup k periferiím (soubory, další I/O zařízení)
### Správa procesů
- OS musí zajistit: 
	1. vytváření a ukončení procesů 
	2. pozastavení a znovuspuštění procesů 
	3. synchronizaci procesů
		- řešení vzájemného zablokování 
	4. komunikaci mezi procesy
### Stavy procesů
- Stavy procesů - obecně:
	1. New - nový proces - zatím neaktivní 
	2. Running - aktuálně běžící 
	3. Ready - přerušený Running 
		- připraven ke zpracování 
	4. Waiting - čeká na událost: 
		- dokončení I/O, komunikaci s jiným procesem 
		- uplynutí zadaného času, na potomka … 
	5. Terminated o konec – vyčerpání instrukcí / násilné ukončení
- OS - všechny informace o procesu ve speciální datové struktuře: 
	- Tabulka procesů: 
		- skládá se z PCB (process control block) informace popisují každý proces v OS
### Plánování procesů
- Plánováním procesů - činnost OS: 
	- vybírá mezi procesy 
	- určuje pořadí jejich provádění 
	1. dlouhodobé: 
		- mixování úloh (priorita, náročnost …) 
	2. střednědobé 
		- odkládání do paměti (swapping) 
	3. krátkodobé 
		- určení procesu, který se má stát běžícím 
	- Vytvořené procesy – stromová struktura
### Ukončení procesů
1. Proces vykonal všechny instrukce 
2. nebo je násilně ukončen OS: 
	- OS uvolní všechny přidělené zdroje systému 
	- Je-li to nutné, násilně ukončí všechny související procesy (záleží na OS) 
	- proces Zombie – neuvolněný, nefunkční
		- Zabírá zbytečně paměť
### Kooperace procesů
- Sdílení informací /dat /zdrojů: 
	- Příklad: 
		- jeden proces produkuje data (výsledky měření)
		- druhý je statisticky zpracovává
		- třetí vykreslí graf
- Paralelní provádění pod-úloh: 
	- Víceprocesorové systémy 
	- Příklad: 
		- prohlížeče WWW: 
			- jeden proces přenáší obrázek 
			- s druhým procesem komunikuje uživatel o 
- Modulární programování: 
	- Lepší spolupráce menších celků programů 
	- Tzv. modulů (Linux)
### Tabulka procesů
- PID - Identifikátor procesu (process identifier): 
	- celé číslo 
	- Jednoznačně určuje: 
		- proces a jeho stav 
			- běžící, připravený, ...
- Tabulka obsahuje Info pro plánovač procesů: 
	- priorita
	- fronty 
	- atd. 
- Informace o přidělené paměti: 
	- Tzv. heap 
- Informace o času stráveným na CPU a podobně ... 
- Stav I / O: 
	- např. přiřazeno zařízení
	- otevřené soubory a pod.