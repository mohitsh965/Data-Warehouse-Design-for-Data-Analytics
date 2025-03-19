SELECT 
    dd.Year,
    dd.Month,
    SUM(sf.Amount) AS MonthlySales
FROM 
    Sales_Fact sf
JOIN 
    Date_Dim dd ON sf.DateKey = dd.DateKey
GROUP BY 
    dd.Year, dd.Month
ORDER BY 
    dd.Year, dd.Month;
