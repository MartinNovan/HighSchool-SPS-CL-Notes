DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;

CREATE TABLE Customers(
	CustomerId INT PRIMARY KEY IDENTITY(1,1),
	FullName NVARCHAR(255),
);

CREATE TABLE Orders(
	OrderNumber VARCHAR(60),
	CustomerId INT,
);

INSERT INTO Customers(FullName) VALUES
('Adam'),
('Tomas'),
('Dominic'),
('Peter');

INSERT INTO Orders(OrderNumber, CustomerId) VALUES
('23-467',1),
('29-928',1),
('68-627',3),
('38-917',9);


SELECT * FROM Customers INNER JOIN Orders ON Customers.CustomerId = Orders.CustomerId;

SELECT * FROM Customers LEFT JOIN Orders ON Customers.CustomerId = Orders.CustomerId;
SELECT * FROM Customers LEFT OUTER JOIN Orders ON Customers.CustomerId = Orders.CustomerId WHERE Orders.CustomerId IS NULL;


