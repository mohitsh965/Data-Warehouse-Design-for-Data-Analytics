SELECT 
    dd.InvoiceDate,
    SUM(sf.Amount) AS DailyRevenue
FROM 
    Sales_Fact sf
JOIN 
    Date_Dim dd ON sf.DateKey = dd.DateKey
GROUP BY 
    dd.InvoiceDate
ORDER BY 
    DailyRevenue DESC
