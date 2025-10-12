# Regulační obvody
![Blokové schéma pračky](Obrazky/regulační_obvod.png)
## Regulační odchylka
- $e = |w-y|$
# Regulační pochod
- je odstraňování regulačních odchylek
## Algoritmus
- (skupiny povelů, příkazů?)
- je to jednoznačný postup
	- musí jednoznačně vědět kde skončil a co musí dělat
- Skupina povelů
	- Načtení hodnoty
	- Aritmetické operace
	- Podmíněné příkazy
	- Cykly
		- For
		- While
		- Do-While
	- Procedury
	- Zápis / výstup
# Rozdělení regulátorů / akčních členů
## Regulátor
- Je to zařízení, které **přeměňuje řídicí signál na fyzickou akci** – pohyb, sílu, teplo nebo světlo.
## Akční člen
- Je to zařízení (nebo program), které se neustále dívá na to, jaká je situace, porovnává ji s tím, jakou situaci chcete mít, a dává příkazy akčnímu členu, aby to napravil.
## Rozdělení
### Podle tvaru výstupního signálu
- Spojité (plynulé)
	- Má nekonečně mnoho poloh na výstupu
		- např. potenciometr, nebo vodovodní kohoutek
		- Analogový signál
- Nespojité (skokové)
	- Na výstupu mají omezený počet poloh
		- např. spínač, PWM řízené prvky
		- Digitální signál
- Příklad
	- Automatizovaného ovládání světel v místnosti zářivky/žárovky?
- ![LED_a_zarivky.png](Obrazky/LED_a_zarivky.png)
	 - Máme LED pásek, kterému můžeme snižovat jas, podle toho kolik je venku světla (Spojité)
	 - Máme zářivky, které musíme vypínat po kusech, podle toho kolik je venku světla (Nespojité)
### Podle potřeby energie
 - Přímé
	 - Pro svoji činnost berou energii, z toho co regulují
	 - ![prima_spotreba_energie.png](Obrazky/prima_spotreba_energie.png)
	 - 
 - Nepřímé
	 - Pro svoji činnost potřebují přivést energii
	 - ![neprima_spotreba_energie.png](Obrazky/neprima_spotreba_energie.png)
### Podle dynamických vlastností
- P - proporcionální
- I - intengrační
- D - derivační
- sdružené -> PI, PD, PID
### Podle vnější energie
- Energie "co prochází" regulátorem

|                 | Příklad z praxe                                                                                                                                                                                             | rychlost, síla, hlučnost, opravitelnost, velikost, "péče"                                                                                      |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| **mechanické**  | mechanické vězní hodiny, větrný / vodní mlýn,<br>staré mechanické kalkulátory, zařízení<br>používající táhla, mechanické brzdy (kolo,<br>staré automobily), řízení auta bez posilovače,<br>kladky, páky,... | - středně rychlé, středně až velké síly<br>- hodně hlučný<br>- dobrá opravitelnost<br>- spíš středně až velké velikosti<br>- náročné na údržbu |
| **elektrické**  | elektronické řídící systémy, digitální<br>termostaty, PLC, dotykové ovládání "chytrych" domů, cyklocomputer, ATMEL, Arduino,...                                                                             | - nejrychlejší<br>- bez síly<br>- skoro žádný hluk<br>- v dnešní době vetšinou neopravitelné<br>- libovolná<br>- musí být chlazené             |
| **pneumatické** | lisy ovládané vzduchem, pneumatické nářadí<br>(utahovaky, vrtacky), pneumatické<br>manipulatory, vakuové (podtlakové) prisavky<br>na pfenaseni materialu,...                                                | - rychlé i pomalé<br>- hlučnost, když vypouští vzduch<br>- velké síly<br>- opravitelné<br>- střední velikost<br>- středně náročné na údržbu    |
| **hydraulické** | těžké lisy, mechanika stavebních strojů, brzdy<br>v autech, hydraulicky posilovací řízení v<br>autech,...                                                                                                   | - velice pomalé<br>- obrovská síla<br>- hlučnější<br>- opravitelné<br>- středně veliké<br>- středně náročné na údržbu                          |
| **kombinované** | automaticka pracka, automobil,...                                                                                                                                                                           | - vezmou si z každé části to nejlepší                                                                                                          |
### Příklady

| regulátor                                 | podle tvaru výstupního signálu          | podle potřeby energie | podle vnější energie                    |
| ----------------------------------------- | --------------------------------------- | --------------------- | --------------------------------------- |
| Hlavní uzávěr plynu                       | spojité                                 | nepřímé               | pneumatické                             |
| termostat v žehličce                      | spojité                                 | nepřímé               | elektrické                              |
| vodovodní kohoutek                        | spojité                                 | nepřímé               | hydraulické                             |
| "spoušť" na vrtačce                       | nespojité                               | neprímé               | elektrické                              |
| ovládání směru otáčení vrtačky            | nespojité                               | nepřímé               | elektrické                              |
| ovládání hlasitosti na rádiu              | spojité (pokud se jedná o potenciometr) | nepřímé               | elektrické                              |
| 5 polohový přepínač na ventilátoru        | nespojité                               | nepřímé               | elektrické                              |
| plynový pedál v autě                      | spojité                                 | nepřímé               | mechanické <br>(u některých elektrické) |
| přetlakový ventil chladící nádržky v autě | nespojité                               | přímé                 | pneumatické                             |
| servomotor na posouvání oken v autě       | nespojité                               | nepřímé               | elektrické                              |
## DI, AI, DO, AO, RO, PWM, NTC
- **DI** (digital input): tlačítko, vypínač, doraz, kontakt zavřených dveří nebo oken, termostat, ...
- **AI** (analog input): snímač polohy klapky, snímač intenzity osvětlení, snímač intenzity hluku, potenciometr, teploměr, snímače teploty, ...
	- **NTC** (negative tempeature coeficient): termistor ("negistor") 
		- *Speciální případ AI*
![[Obrazky/Pasted image 20251022160443.png]]
- **DO,RO** (digital output, relay output): ON/OFF, světlo, motor, topení, siréna
	- **PWM** (pusle width modulation): rychlost otáčení motoru, "plynulá" regulace topení, ovládání intenzity svícení
		- *Speciální případ DO (RO)*
- **AO** (analog output): ovládání polohy klapky, vodovodního ventilu, plynového ventilu 
![[Obrazky/Pasted image 20251022160343.png]]