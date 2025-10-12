- VLAN 100 - LAN - 192.168.100.0/24 eth 2 a 3
- VLAN 200 - Guest - 192.168.200.0/24 eth 4 a 5
- Wifi - LAN - na VLAN 100
- Wifi - Guest - na VLAN 200
- Internet

1. bridge
	1. ![](Obrazky/07_Router_s_Wifi_a_VLAN/Snímek%20obrazovky%20z%202025-11-07%2013-38-02.png)
2. přidat porty
	1.  ![](Obrazky/07_Router_s_Wifi_a_VLAN/Snímek%20obrazovky%20z%202025-11-07%2014-06-41.png)
3. nastavit pvid na portech
	1. ![](Obrazky/07_Router_s_Wifi_a_VLAN/Snímek%20obrazovky%20z%202025-11-07%2014-00-20.png)
4. dát bridge do vlan tagovanych
	1. ![](Obrazky/07_Router_s_Wifi_a_VLAN/Snímek%20obrazovky%20z%202025-11-07%2013-59-46.png)
5. vytvořit vlan v interfaces
	1. ![](Obrazky/07_Router_s_Wifi_a_VLAN/Snímek%20obrazovky%20z%202025-11-07%2013-42-03.png)
	2. ![](Obrazky/07_Router_s_Wifi_a_VLAN/Snímek%20obrazovky%20z%202025-11-07%2013-41-39.png)
6. DHCP client popř nastavit staticky na eth 1
7. nastavit ip adresy na interfaces
8. Dns server
9. DHCP setup pro vlany
10. zapnout vlan filt. na bridge
11. nastavit NAT masquarade
12. nastavit route když používáme statický adresy
13. vytvořit datapath wifi 
14. vytvořit security wifi 
15. Nastavit configuration wifi
16. nastavit wifi