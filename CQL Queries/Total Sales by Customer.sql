SELECT c.CustomerKey, c.FirstName, c.LastName, SUM(s.SalesAmount) AS TotalSales
FROM DimCustomer c
JOIN FactInternetSales s ON c.CustomerKey = s.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY TotalSales DESC;
