SELECT 
    cd.Country,
    SUM(sf.Amount) AS TotalRevenue,
    COUNT(DISTINCT cd.CustomerID) AS TotalCustomers
FROM 
    Sales_Fact sf
JOIN 
    Customer_Dim cd ON sf.CustomerKey = cd.CustomerKey
GROUP BY 
    cd.Country
ORDER BY 
    TotalRevenue DESC;
