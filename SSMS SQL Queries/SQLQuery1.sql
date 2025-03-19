CREATE TABLE Stock_Dim (
    StockKey INT PRIMARY KEY IDENTITY(1,1),
    StockCode NVARCHAR(50) NOT NULL,
    Description NVARCHAR(255),
    UnitPrice DECIMAL(10,2)
);

CREATE TABLE Customer_Dim (
    CustomerKey INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    Country VARCHAR(50)
);

CREATE TABLE Date_Dim (
    DateKey INT PRIMARY KEY IDENTITY(1,1),
    InvoiceDate DATETIME NOT NULL,
    Month INT,
    Year INT
);

CREATE TABLE Sales_Fact (
    FactID INT PRIMARY KEY IDENTITY(1,1),
    StockKey INT NOT NULL,
    DateKey INT NOT NULL,
    CustomerKey INT NOT NULL,
    Quantity INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (StockKey) REFERENCES Stock_Dim(StockKey),
    FOREIGN KEY (DateKey) REFERENCES Date_Dim(DateKey),
    FOREIGN KEY (CustomerKey) REFERENCES Customer_Dim(CustomerKey)
);
