CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Стейк Рибай'),
	(2, 'Гречка'),
	(3, 'Рис'),
	(4, 'Сыр'),
	(5, 'Масло сливочное'),
	(6,'Чай зеленый'),
	(7, 'Помидоры');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'Молочные продукты'),
	(2, 'Мясо'),
	(3, 'Бакалея');

CREATE TABLE ProductCategories (
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategories
VALUES
	(1, 2),
	(2, 3),
	(3, 3),
	(4, 1),
	(5, 1);

SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProductCategories PC
	ON P.Id = PC.ProductId
LEFT JOIN Categories C
	ON PC.CategoryId = C.Id;