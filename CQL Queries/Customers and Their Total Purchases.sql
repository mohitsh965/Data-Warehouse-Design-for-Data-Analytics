SELECT c.CustomerKey, c.FirstName, c.LastName, COUNT(s.ProductKey) AS TotalPurchases
FROM DimCustomer c
JOIN FactInternetSales s ON c.CustomerKey = s.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY TotalPurchases DESC;
