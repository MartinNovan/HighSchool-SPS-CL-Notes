# Souborové systémy GNU/Linux
## Souborový systémy, oddíly, disky
- souborový systém
	- pravidla pro ukládání souborů a adresářů na pevný disk
		- kde na disku je soubor
		- jak se jmenuje a v jakém je adresáři
		- a jaká má přístupová práva
- každý disk/oddíl/výměnné zařízení
	- musí mít souborový systém (abychom ho mohli detekovat v OS pomocí souborového průzkumníka)
- Ve Windows - oddíly/disky vidíme odděleně (C,D,...)
	- z C:\ nevidíme na např. G:\ nebo D:\
	- každý oddíl má svůj kořenový adresář (root) označený písmenem
- V linuxu
	- Pouze jeden root - tam kde je uložen systém (označený `/`)
		- V něm informace o všech discích/oddílech
			- Kde se nachází ostatní periferie (HDD, USB, Síť,...)
		- Root je název pro
			1. Kořenový adresář
			2. účet pro super-administrátora
- nejprve systém detekuje oddíl/disk/ext. zařízení
	- Pak je připojí jako adresář
		- připojení = mount
	- Připojí je do kořenového adresáře
- U připojeného adresáře nezáleží na typu FS
	- Ext2, Ext3, Ext4, NTFS, FAT32, exFAT, ...
	- Výhoda
		- např. adresář `/tmp` nemusí "být v žurnálovacím FS"
		- ne-žurnálovací FS -> vždy rychlejší
			- Odpadá práce se žurnálem
- Adresáře v GNU/Linux
	- Disk, oddíl, ... -> adresář
	- jakékoliv zařízení - scanner, tiskárna, USB, ... -> adresář
- Stromová struktura
	- Počátek -> root
		- k němu jsou připojeny ostatní adresáře
		- "samostatné souborové systémy"
	- 