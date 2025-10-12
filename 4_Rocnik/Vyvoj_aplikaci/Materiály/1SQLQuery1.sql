DROP TABLE IF EXISTS Zaci;
DROP TABLE IF EXISTS Znamky;

CREATE TABLE Zaci(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Jmeno NVARCHAR(100) NOT NULL,
	Prijmeni NVARCHAR(100) NOT NULL,
	trida VARCHAR(10) NULL,
);
CREATE TABLE Znamky	(
	Id INT PRIMARY KEY IDENTITY (1,1),
	Id_Zak INT NOT NULL,
	Datum DATE DEFAULT GETDATE(),
	Absence BIT,
	Znamka INT,
	Vaha INT,
	Predmet VARCHAR(10)
);

INSERT INTO Zaci(Jmeno, Prijmeni, Trida) VALUES 
('Jan','Novak','1.A'),
('Honza','Novak','1.A'),
('Pepa','Novak','1.A'),
('PÈùa','Novak','1.A'),
('Jan','Novak','1.A');
INSERT INTO Znamky(Id_Zak, Datum, Absence, Znamka, Vaha, Predmet) VALUES
(1, '3.9. 2025', 'False', 2, 5, 'PRG')

SELECT * FROM Zaci;
SELECT * FROM Znamky;