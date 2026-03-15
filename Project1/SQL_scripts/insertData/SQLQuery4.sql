USE BootcampDB;

CREATE TABLE dbo.Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);


DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO dbo.Employees
    VALUES (
        @i,
        CONCAT('Employee_', @i),
        CONCAT('Department_', (@i % 4) + 1),
        DATEADD(DAY, -@i, GETDATE()),
        ROUND(RAND()*80000 + 20000,2)
    )

    SET @i = @i + 1
END


