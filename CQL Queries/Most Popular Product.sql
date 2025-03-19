SELECT TOP 1 p.EnglishProductName, COUNT(DISTINCT s.CustomerKey) AS CustomerCount
FROM DimProduct p
JOIN FactInternetSales s ON p.ProductKey = s.ProductKey
GROUP BY p.EnglishProductName
ORDER BY CustomerCount DESC

