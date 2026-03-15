CREATE PROCEDURE dbo.usp_Merge_Products_SCD1
AS
BEGIN
    SET NOCOUNT ON;

    MERGE dbo.Gold_Products_SCD1 AS TARGET
    USING dbo.Stg_Products_Silver AS SOURCE
    ON TARGET.ProductID = SOURCE.ProductID

    WHEN MATCHED THEN
        UPDATE SET
            TARGET.ProductName = SOURCE.ProductName,
            TARGET.Category = SOURCE.Category,
            TARGET.Price = SOURCE.Price,
            TARGET.CreatedDate = SOURCE.CreatedDate,
            TARGET.LastUpdated = GETDATE()

    WHEN NOT MATCHED BY TARGET THEN
        INSERT
        (
            ProductID,
            ProductName,
            Category,
            Price,
            CreatedDate,
            LastUpdated
        )
        VALUES
        (
            SOURCE.ProductID,
            SOURCE.ProductName,
            SOURCE.Category,
            SOURCE.Price,
            SOURCE.CreatedDate,
            GETDATE()
        );
END;
