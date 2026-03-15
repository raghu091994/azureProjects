USE BootcampDB;

CREATE TABLE dbo.ADF_Metadata_Config
(
    MetadataID INT IDENTITY(1,1) PRIMARY KEY,
    SourceSchema VARCHAR(100) NOT NULL,
    SourceTable VARCHAR(100) NOT NULL,
    TargetContainer VARCHAR(100) NOT NULL,
    TargetFolder VARCHAR(200) NOT NULL,
    TargetFileName VARCHAR(200) NOT NULL,
    LoadType VARCHAR(50) NOT NULL,
    IsActive BIT NOT NULL,
    LoadSequence INT NOT NULL,
    CreatedDate DATETIME DEFAULT GETDATE()
);

INSERT INTO dbo.ADF_Metadata_Config
(
    SourceSchema,
    SourceTable,
    TargetContainer,
    TargetFolder,
    TargetFileName,
    LoadType,
    IsActive,
    LoadSequence
)
VALUES
('dbo', 'Customers', 'bronze', 'sqlserver/customers/', 'customers.parquet', 'Full', 1, 1),
('dbo', 'Products',  'bronze', 'sqlserver/products/',  'products.parquet',  'Full', 1, 2),
('dbo', 'Orders',    'bronze', 'sqlserver/orders/',    'orders.parquet',    'Full', 1, 3),
('dbo', 'Employees', 'bronze', 'sqlserver/employees/', 'employees.parquet', 'Full', 1, 4),
('dbo', 'Sales',     'bronze', 'sqlserver/sales/',     'sales.parquet',     'Full', 1, 5);
