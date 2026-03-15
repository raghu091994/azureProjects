USE BootcampDB;

CREATE TABLE dbo.Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    CreatedDate DATETIME DEFAULT GETDATE()
);


DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO dbo.Products
    VALUES (
        @i,
        CONCAT('Product_', @i),
        CONCAT('Category_', (@i % 5) + 1),
        ROUND(RAND()*500 + 10,2),
        GETDATE()
    )

    SET @i = @i + 1
END




