CREATE TABLE dbo.ADF_Metadata_Config (
    MetadataID INT IDENTITY(1,1) PRIMARY KEY,
    SourceSchema VARCHAR(100),
    SourceTable VARCHAR(100),
    TargetContainer VARCHAR(100),
    TargetFolder VARCHAR(200),
    TargetFileName VARCHAR(200),
    LoadType VARCHAR(50),          -- Full / Incremental
    WatermarkColumn VARCHAR(100),  -- optional for later
    IsActive BIT,
    LoadSequence INT,
    CreatedDate DATETIME DEFAULT GETDATE(),
    ModifiedDate DATETIME DEFAULT GETDATE()
);