INSERT INTO Stock_Dim (StockCode, Description, UnitPrice)
SELECT DISTINCT 
    StockCode, 
    Description, 
    MAX(UnitPrice) AS UnitPrice
FROM OnlineRetail
WHERE StockCode IS NOT NULL AND Description IS NOT NULL
GROUP BY StockCode, Description;

INSERT INTO Customer_Dim (CustomerID, Country)
SELECT DISTINCT 
    CustomerID, 
    Country
FROM OnlineRetail
WHERE CustomerID IS NOT NULL AND Country IS NOT NULL;

INSERT INTO Date_Dim (InvoiceDate, Month, Year)
SELECT DISTINCT 
    InvoiceDate, 
    MONTH(InvoiceDate) AS Month, 
    YEAR(InvoiceDate) AS Year
FROM OnlineRetail
WHERE InvoiceDate IS NOT NULL;
