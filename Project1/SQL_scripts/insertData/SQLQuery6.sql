USE BootcampDB;

DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO dbo.Customers
    (
        CustomerID,
        CustomerName,
        City,
        Country
    )
    VALUES
    (
        @i,
        CONCAT('Customer_', @i),
        CONCAT('City_', (@i % 10) + 1),
        'Canada'
    )

    SET @i = @i + 1
END
