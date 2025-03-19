INSERT INTO Sales_Fact (StockKey, DateKey, CustomerKey, Quantity, Amount)
SELECT 
    sd.StockKey,
    dd.DateKey,
    cd.CustomerKey,
    orl.Quantity,
    orl.Quantity * orl.UnitPrice AS Amount
FROM 
    OnlineRetail orl
JOIN Stock_Dim sd ON orl.StockCode = sd.StockCode
JOIN Date_Dim dd ON orl.InvoiceDate = dd.InvoiceDate
JOIN Customer_Dim cd ON orl.CustomerID = cd.CustomerID
WHERE 
    orl.Quantity > 0 AND 
    orl.UnitPrice > 0;
