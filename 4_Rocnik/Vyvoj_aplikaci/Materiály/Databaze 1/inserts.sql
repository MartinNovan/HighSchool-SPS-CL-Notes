INSERT INTO Osoby (Jmeno, Prijmeni) VALUES
(N'Jan', N'Novák'),
(N'Petr', N'Svoboda'),
(N'Lucie', N'Dvoøáková'),
(N'Karel', N'Èerný'),
(N'Eva', N'Procházková'),
(N'Tomáš', N'Beneš'),
(N'Marie', N'Králová'),
(N'Josef', N'Fiala'),
(N'Anna', N'Machová'),
(N'Martin', N'Pokorný');

INSERT INTO Ucitele (id) VALUES (1), (2), (3);

INSERT INTO Tridy (id, nazev, tridni_ucitel) VALUES
(1, '1.A', 1),
(2, '2.A', 2),
(3, '3.A', 3);

INSERT INTO Zaci (id, Trida) VALUES
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 1);

INSERT INTO Predmety (nazev, vyucujici) VALUES
('M', 1),
('ÈJ', 2),
('AJ', 3),
('FY', 1),
('CH', 2);

INSERT INTO Znamky (id_zak, absence, znamka, vaha, id_predmet) VALUES
(4, 0, 1, 5, 1),
(4, 0, 2, 5, 2),
(5, 0, 3, 4, 3),
(6, 0, 5, 2, 1),
(7, 1, 0, 1, 2),
(8, 0, 2, 3, 3),
(9, 0, 4, 5, 4),
(10, 0, 1, 5, 5),
(5, 0, 3, 5, 1),
(6, 0, 2, 5, 2);

INSERT INTO Tel_cisla (cislo, id_osoby) VALUES
(777111222, 1),
(602123456, 1), 
(777222333, 2),
(603654321, 2), 
(777333444, 3),
(604987654, 3), 
(777444555, 4),
(777555666, 5),
(605456789, 5), 
(777666777, 6),
(777777888, 7),
(777888999, 8),
(777999000, 9),
(606123456, 10);
