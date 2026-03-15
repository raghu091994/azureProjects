
USE BootcampDB;
CREATE TABLE dbo.Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2)
);

DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO dbo.Orders
    VALUES (
        @i,
        (@i % 100) + 1,
        DATEADD(DAY, -@i, GETDATE()),
        ROUND(RAND()*1000 + 50,2)
    )

    SET @i = @i + 1
END