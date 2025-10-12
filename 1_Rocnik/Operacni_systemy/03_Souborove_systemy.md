# Souborové systémy
## Souborový systémy, oddíly, disky
- Souborový systém
	- pravidla pro ukládání souborů a adresářů na pevný disk: 
	- kde na pevném disku je soubor 
	- jak se jmenuje a v jakém je adresáři 
	- a jaká má přístupová práva…kdo ho může číst/upravovat 
- Každý disk/oddíl/výměnné zařízení:
	- Musí mít svůj souborový systém
- V MS Windows:
	- Oddíly/disky vidíme odděleně (`C`,`D`,...)
	- Z `C:\` nemáme „jednoduchý“ přístup na např. `G:\` , `D:\` , …
		- Každý oddíl/disk/externí zařízení:
		- má svůj kořenový adresář (tzv. root) označený písmenem: 
			- `C:\` `D:\` `E:\` … `Z:\` 
### Souborový systém
- Souborový systém - stromová struktura
	- Adresáře v Windows - Stromová struktura: 
	- Počátek - \ kořenový adresář – root: 
	- k němu jsou připojeny ostatní podadresáře o V Linuxu: i „jiné samostatné souborové systémy“ 
- Základní pojmy a symbolika:
	- Kořenový adresář (root) `/`
	- Aktuální adresář `./`
		- ve kterém se uživatel nebo proces v daném okamžiku nachází
	- Nadřízený adresář `../`
		- adresář o úroveň výš v kontextu stromové struktury
	- Cesta (Path) `C:/…/…/…`
		- umístění konkrétního adresáře v adresářovém stromu
### Souborové systémy OS Windows
#### Tradiční souborové systémy
- FAT - File Allocation Table: 
	- FAT12, FAT16, vFAT, FAT32, exFAT (64) – adresace 12,16,32,64b 
	- Postupně klesá omezení 
		- max.velikost souboru 
		- max.velikost oddílu 
		- max.počet souborů
	- FAT32 - W95, W98, diskety/flash disky 
		- max.velikost souboru 4GB (109 B) 
		- max.velikost oddílu 16TB (4kB cluster) 
		- max.počet souborů cca 4 000 000
	- exFAT (FAT64) - od Windows 7 
		- vhodný hlavně pro flash disky , vysokokapacitní karty SDXC… 
		- max.velikost souboru $16 \cdot 10^{64}$B (EiB - ExbiByte) 
		- max.velikost oddílu 128EiB 
		- max.počet souborů v adresáři > 65536
#### Žurnálovací souborové systémy
- Rozdíl mezi tradičním a žurnálovým systémem:
	- ve způsobu ukládání dat 
	- Tradiční systém: 
		- průběžně ukládá data na disk a sektory označí pro OS jako obsazené 
		- Při kolizi (výpadek el.energie) může nastat: 
			- Soubor nefunkční/nekompletní, 
			- Sektory obsazené - nefunkční 
		- Při vymazání souboru – některé sektory zůstanou obsazené 
- Žurnálovací systém NTFS:
	- New Technology File System 
	- Ukládání na disk – ve více krocích: 
		1. nejprve OS zapíše do žurnálu (vyhrazené místo na disku/v oddílu), co bude ukládat 
		2. pak uloží data/metadata na HDD/SSD/…
		3. zatím sektor pro OS označí za neobsazený 
		4. provede kontrolu (je-li vše ze žurnálu zapsáno na disk) 
		5. je-li OK – označí sektory za obsazené 
		6. smaže záznam ze žurnálu 
	- Výhoda systému žurnálu při kolizi
		- část dat zapsaných korektně na disku – zbytek nezapsaných: 
		- Např. výpadek el.energie 
			- V žurnálu – info že zápis dat neproběhl do konce 
			- Při restartu: 
				- Není-li žurnál prázdný: 
					- Z info z žurnálu se provede zbývající zápis dat na pozadí 
					- Po kontrole komplet.zápisu – žurnál vymazán 
	- vyvinutý původně pro Windows NT 
		- Windows 2000 
		- Windows XP 
		- Windows Vista, Windows 7,8,10,11; Windows Server 20XX 
		- NTFS plně nahradil systém FAT
	- Vlastnosti NTFS
		- Žurnálování: 
		- Access Control List: 
			- práva k přístupu a manipulaci uživatelů se soubory (čtení/zápis/mazání…) 
		- Komprese dat (úspora místa) 
		- Šifrování (EFS - Encrypting File System) 
			- ochrana dat 
		- Diskové kvóty: 
			- nastavení omezení využitelného místa na disku (pro uživatele) 
		- Dlouhá jména souborů 
### Souborové systémy GNU/Linux
#### Tradiční souborové systémy
- Ext2
#### Žurnálovací souborové systémy
- Ext3, Ext4 
	- Ext4 - kompatibilní s ext3 
	- Novinky – zrušení omezení ext3, nové fce: 
	- velikost FS, počet souborů v adresáři, 
	- CRC žurnálu, online defragmentaci, rychlejší kontrola, 
	- zvýšení výkonu... 
- ReiserFS 
	- Zahrnuto v Linuxovém jádru z roku 2001 
	- Dobře zachází s malými soubory / velkým počtem souborů 
	- Úspora místa a zlepšení výkonu 
### Souborové systémy v síti
- NFS - Network File System (Sun) 
	- internetový protokol pro vzdálený přístup k souborům přes počítačovou síť 
- SMB - Server Message Block (Microsoft) 
	- Síťový protokol - slouží ke sdílenému přístupu: 
		- k souborům, tiskárnám, sériovým portům, komunikace mezi uzly
	- využíván hlavně na počítačích/v sítích s operačními systémy Windows 
### Virtuální souborové systémy v OS
- Abstraktní vrstva nad konkrétními FS o Cílem VFS:
- Poskytnout aplikacím jednoduchý způsob přístupu k různým FS
	- Tzv. jednotné API
