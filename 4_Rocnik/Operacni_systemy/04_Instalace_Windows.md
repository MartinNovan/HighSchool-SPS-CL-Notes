# Instalace Windows
1. Nainstalovat windows (2jádra 4gb ram 80gb disk, Spravce Spravce)
2. Přídavky pro hosta a aktulizace
3. Nastavit UAC
4. Rozdělit disk na 2 části (vel. zmenšení 46461 -> 34Gb C:, 45gb Users)
5. Naformátovat disk Users na U: (NTFS, Data)
6. Najít v registrech ProfileList (HKLM\Software\Microsoft\Windows NT\CurrentVersion\ProfileList)
7. změnit profiles directory na U:\Users
8. spustit terminal jako správce a jet "net user Uzivatel Uzivatel /add"
9. zkusit se přihlásit jako nově vytvořený účet a zkontrolujeme zda se vytvořil účet v novém disku
10. zaheslovat administrator heslo pomocí "net user Administrator 123"