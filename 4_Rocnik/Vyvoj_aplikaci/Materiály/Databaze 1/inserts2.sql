INSERT INTO Osoby (Jmeno, Prijmeni) VALUES
(N'Barbora', N'Veselá'),
(N'David', N'Mareš'),
(N'Lenka', N'Horáková'),
(N'Filip', N'Kuèera'),
(N'Adéla', N'Bláhová'),
(N'Radek', N'Køíž'),
(N'Klára', N'Sedláèková'),
(N'Roman', N'Urban'),
(N'Ivana', N'Holubová'),
(N'Ondøej', N'Rùžièka');

INSERT INTO Ucitele (id) VALUES
(11), 
(12), 
(13); 

INSERT INTO Zaci (id, Trida) VALUES
(14, 2), 
(15, 3), 
(16, 1), 
(17, 2), 
(18, 3),
(19, 1),
(20, 2);

INSERT INTO Predmety (nazev, vyucujici) VALUES
('BIO', 11),  
('ZEM', 12), 
('D', 13),  
('INF', 11),  
('HV', 12); 

INSERT INTO Znamky (id_zak, datum, absence, znamka, vaha, id_predmet) VALUES
(4, GETDATE(), 0, 5, 3, 6),
(5, GETDATE(), 0, 2, 5, 6),
(6, GETDATE(), 1, 0, 5, 7),
(7, GETDATE(), 0, 3, 4, 7),
(8, GETDATE(), 0, 4, 5, 8),
(9, GETDATE(), 0, 1, 2, 8),
(10, GETDATE(), 0, 5, 5, 9),
(14, GETDATE(), 0, 3, 4, 9),
(15, GETDATE(), 1, 0, 5, 9),
(16, GETDATE(), 0, 2, 3, 10),
(17, GETDATE(), 0, 4, 5, 10),
(18, GETDATE(), 1, 0, 5, 10);