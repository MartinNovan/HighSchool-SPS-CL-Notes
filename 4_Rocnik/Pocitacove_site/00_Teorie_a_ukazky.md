# Teorie a ukázky
## Network
### Topologie sítí
### Typy počítačových sítí
## Adresy
### MAC adresy
### IP adresy
#### IPv4
#### IPv6
## OSI model
## DNS
## DHCP
## Firewall
### Politiky pro nastavení firewallu
Politiky
	Accept
		Defaultně povolovat packety když nemáme v pravidlech jejich zahození
			nastavit Chain (napr foward), nastavíme action Accept 
	Denied
		Defaultně zahazovat packety když nesouhlasí s pravidly
			nastavit Chain (napr foward), nastavíme action reject/drop
### Windows firewall
### Linux firewall
### Mikrotik firewall
4 tabulky 
	filtr
		tabulky
			Foward
				Obyč firewall pravidla
			Input
				zamezit přístup do routeru
			Output
				Zahazování invalid packetů
	nat
	mangle
	raw
#### Filter
#### NAT
#### Mangle
#### Raw
