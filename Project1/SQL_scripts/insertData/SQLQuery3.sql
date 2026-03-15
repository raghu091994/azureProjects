USE BootcampDB;

CREATE TABLE dbo.Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10,2)
);


DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO dbo.Sales
    VALUES (
        @i,
        (@i % 100) + 1,
        (@i % 10) + 1,
        DATEADD(DAY, -@i, GETDATE()),
        ROUND(RAND()*2000 + 100,2)
    )

    SET @i = @i + 1
END