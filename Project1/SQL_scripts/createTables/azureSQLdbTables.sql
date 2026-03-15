CREATE TABLE dbo.Gold_Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(200),
    Department VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10,2)
);

CREATE TABLE dbo.Gold_Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2)
);
CREATE TABLE dbo.Gold_Sales
(
    SaleID INT PRIMARY KEY,
    Quantity INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10,2)
);

CREATE TABLE dbo.Gold_Customers
(
    CustomerID INT NOT NULL,
    CustomerName VARCHAR(200),
    City VARCHAR(100),
    Country VARCHAR(100)
);
