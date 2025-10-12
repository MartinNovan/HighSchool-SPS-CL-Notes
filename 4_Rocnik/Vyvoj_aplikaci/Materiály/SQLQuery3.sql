// úkol 1 
SELECT k.Nazev, COUNT(ma.Id_Autora) AS PocetAutoru FROM Knihy k JOIN Mapping_Table ma ON k.id = ma.Id_Knihy GROUP BY k.Nazev HAVING COUNT(ma.Id_Autora) > 1;
// úkol 2
SELECT k.Nazev, AVG(r.Hodnoceni) AS PrumerneHodnoceni FROM Knihy k JOIN Recenze r ON k.id = r.id_knihy GROUP BY k.Nazev;
// úkol 3
SELECT rec.Jmeno, rec.email, k.Nazev AS NazevKnihy, r.Hodnoceni, r.datum FROM Recenze r JOIN Recenzenti rec ON r.id_recenzeta = rec.id JOIN Knihy k ON r.id_knihy = k.id WHERE r.Hodnoceni = (SELECT MIN(r2.Hodnoceni) FROM Recenze r2 WHERE r2.id_recenzeta = rec.id);
// úkol 4
SELECT TOP 1 k.Nazev, AVG(r.Hodnoceni) AS PrumerneHodnoceni FROM Knihy k JOIN Recenze r ON k.id = r.id_knihy GROUP BY k.Nazev ORDER BY PrumerneHodnoceni DESC;
// úkol 5
SELECT a.Jmeno, a.Prijmeni, COUNT(m.Id_Knihy) AS PocetKnih FROM Autori a LEFT JOIN Mapping_Table m ON a.id = m.Id_Autora GROUP BY a.Jmeno, a.Prijmeni;
// úkol 6
SELECT TOP 1 a.Jmeno, a.Prijmeni, COUNT(m.Id_Knihy) AS PocetKnih FROM Autori a LEFT JOIN Mapping_Table m ON a.id = m.Id_Autora GROUP BY a.Jmeno, a.Prijmeni ORDER BY PocetKnih DESC;
