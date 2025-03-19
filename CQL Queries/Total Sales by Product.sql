SELECT p.ProductKey, p.EnglishProductName, SUM(s.SalesAmount) AS TotalSales
FROM DimProduct p
JOIN FactInternetSales s ON p.ProductKey = s.ProductKey
GROUP BY p.ProductKey, p.EnglishProductName
ORDER BY TotalSales DESC;
