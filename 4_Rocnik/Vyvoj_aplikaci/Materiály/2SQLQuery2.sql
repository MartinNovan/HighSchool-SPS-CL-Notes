DROP TABLE IF EXISTS Recenze;
DROP TABLE IF EXISTS Knihy;

GO

CREATE TABLE Knihy(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nazev NVARCHAR(200) NOT NULL,
	Autor NVARCHAR(100) NOT NULL,
	RokVydani INT NOT NULL,
	Zanr NVARCHAR(50) NOT NULL
);

GO

INSERT INTO Knihy(Nazev, Autor, RokVydani, Zanr) VALUES
('Zaklínaè III: Krev Elfù', 'Stephen King', 1994, 'Horor'),
('Malý princ', 'Antoine de Saint-Exupéry', 1943, 'Pohádka'),
('Harry Potter a Kámen mudrcù', 'J.K. Rowling', 1997, 'Fantasy'),
('Duna', 'Frank Herbert', 1961, 'Sci-fi'),
('Martin Eden', 'Jack London', 1909, 'Román');

GO

SELECT * FROM Knihy WHERE RokVydani > 1950;
SELECT * FROM Knihy WHERE Autor = 'Frank Herbert';
SELECT * FROM Knihy WHERE Zanr = 'Fantasy';

GO

UPDATE Knihy SET RokVydani = 1965 WHERE Nazev = 'Duna';
UPDATE Knihy SET Autor = 'Andrzej Sapkowski', Zanr  = 'Fantasy' WHERE Nazev = 'Zaklínaè III: Krev Elfù';

GO

CREATE TABLE Recenze(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Id_Knihy INT FOREIGN KEY REFERENCES Knihy(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	Datum DATE DEFAULT GETDATE(),
	Hodnoceni INT CHECK(Hodnoceni >= 0 AND Hodnoceni <=5)
);

GO

INSERT INTO Recenze(Id_Knihy, Hodnoceni) VALUES
(1,5),
(2,4),
(4,3),
(5,2);

GO

SELECT * FROM Recenze;

GO

DELETE FROM Knihy WHERE Id > 3;

GO

SELECT * FROM Recenze;

GO

DROP TABLE IF EXISTS Recenze;
DROP TABLE IF EXISTS Knihy;