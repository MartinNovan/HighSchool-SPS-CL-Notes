# GNU/Linux
 >[!Note]
 >Stavíme na podkladech o [Zavádění OS](../Kyberneticka_bezpecnost/01_Zavadeni_OS.md).
## Rady do začátku
1. Číst dokumentaci
2. Stávající OS ponechat
3. Nepracovat pod rootem
4. Neměnit distribuci v začátcích

## Grafické prostředí GNU/Linux
- GUI pro GNU/Linux:
	- Unixový standart - X Window System
		- označení X11
		-  Umožňuje vytvořit GUI na modelu `Server - Klient`
		- X server "obsluhuje" X klienty(aplikace)
	- Modernější -> Wayland
		- Oba standarty tvoří "prostředníka" mezi aplikací a HW
### X Window System
- z nezávislých komponent
	- X Server
	- X protocol (TCP/IP)
	- knihovna Xlib
- X Klient - spuštěný program v Linuxu
	- Model: `Kernel - X Server - Window Manager - Program`
### Wayland
- Jednodušší modernější architektura
	- Lepší výkon / stabilita
	- zaměřen na bezpečnost
- Wayland klient - spuštěný program v Linuxu
	- Stejný model: `Kernel - X Server - Window Manager - Program`
### Volba správného GUI
- Dle HW -> slabší PC -> jednodušší správce oken
	- GUI zatěžuje HW nejvíce
- Moderní stroj - potěší 3D prostředím
	- využití výpočetní síly grafického procesoru
#### GUI
- KDE Plasma
	- disponuje 3D grafikou, efekty, HW náročné
- GNOME
	- přívětivé prostředí
- Unity, Budgie
	- Nadstavba Ubuntu
- Minimální nároky na HW
	- XCFE, LXDE
	- OpenBox3, FluxBox, Razor-qt
- Společné prvky GNOME a KDE
	- Nejdůležitější - funkce levého a pravého tlačítka myši
	- Virtuální plochy
		- každá plocha může mít spuštěné různé aplikace
		- mezi plochami se může snadno přepínat
		- Jak v grafickém tak i v textovém režimu
			- Přepínání dle distra
			- Ctrl + Alt + F1-6
				- 6 celoobrazovkových virtuálních terminálů
					- Záleží na distribuci, např. Arch Linux s GNOME má na prvním terminálu GDM a na druhém běží GUI
				- Přepínání pomocí Alt+F1-6