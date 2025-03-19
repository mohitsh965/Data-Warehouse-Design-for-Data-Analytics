SELECT 
    cd.CustomerID,
    COUNT(sf.FactID) AS NumberOfTransactions,
    SUM(sf.Amount) AS TotalRevenue
FROM 
    Sales_Fact sf
JOIN 
    Customer_Dim cd ON sf.CustomerKey = cd.CustomerKey
GROUP BY 
    cd.CustomerID
HAVING 
    COUNT(sf.FactID) > 1
ORDER BY 
    TotalRevenue DESC;
