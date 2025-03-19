SELECT 
    sd.Description AS Product,
    SUM(sf.Quantity) AS TotalQuantitySold,
    SUM(sf.Amount) AS TotalRevenue
FROM 
    Sales_Fact sf
JOIN 
    Stock_Dim sd ON sf.StockKey = sd.StockKey
GROUP BY 
    sd.Description
HAVING 
    SUM(sf.Quantity) < 50  -- Threshold for low sales
ORDER BY 
    TotalQuantitySold ASC;
