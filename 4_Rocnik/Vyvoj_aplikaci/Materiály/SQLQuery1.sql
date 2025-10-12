SELECT k.nazev as 'Název Knihy', r.hodnoceni FROM Knihy k INNER JOIN Recenze r ON k.id = r.id_knihy;
GO
SELECT k.nazev as 'Název Knihy', a.jmeno + ' ' + a.prijmeni as 'Jméno autora' FROM Autori_knih ak INNER JOIN Knihy k ON ak.id_kniha = k.id INNER JOIN Autori a ON ak.id_autor = a.id;
GO
SELECT k.nazev as 'Název Knihy', a.jmeno + ' ' + a.prijmeni as 'Jméno autora', r.hodnoceni FROM Autori_knih ak INNER JOIN Knihy k ON ak.id_kniha = k.id INNER JOIN Autori a ON ak.id_autor = a.id INNER JOIN Recenze r ON k.id = r.id_knihy WHERE a.id = 3;
GO
SELECT k.nazev as 'Název Knihy', a.jmeno + ' ' + a.prijmeni as 'Jméno autora', ro.uzivatelske_jmeno as 'Jméno  recenzenta', r.hodnoceni as 'Ohodnocení' FROM Autori_knih ak INNER JOIN Knihy k ON ak.id_kniha = k.id INNER JOIN Autori a ON ak.id_autor = a.id INNER JOIN Recenze r ON k.id = r.id_knihy INNER JOIN Recenzenti ro ON r.id_recenzent = ro.id;
