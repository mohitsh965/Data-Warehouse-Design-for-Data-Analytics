SELECT p.EnglishProductName, SUM(s.OrderQuantity) AS TotalQuantity
FROM DimProduct p
JOIN FactInternetSales s ON p.ProductKey = s.ProductKey
GROUP BY p.EnglishProductName
ORDER BY TotalQuantity DESC;
