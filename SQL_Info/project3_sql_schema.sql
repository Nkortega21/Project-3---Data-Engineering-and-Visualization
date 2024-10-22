-- Create Orders table
CREATE TABLE Orders (
    OrderID VARCHAR(50) PRIMARY KEY,
    Date DATE NULL, 
    Status VARCHAR(50) NULL,
    Fulfilment VARCHAR(50) NULL,
    SalesChannel VARCHAR(50) NULL,
    ShipServiceLevel VARCHAR(50) NULL,
    B2B BOOLEAN NOT NULL
);

-- Create ShippingDetails table
CREATE TABLE ShippingDetails (
    OrderID VARCHAR(50) PRIMARY KEY,
    ShipCity VARCHAR(100) NULL, 
    ShipState VARCHAR(100) NULL,  
    ShipPostalCode VARCHAR(20) NULL,  
    ShipCountry VARCHAR(50) NULL,  
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Create Products table
CREATE TABLE Products (
    SKU VARCHAR(50),
    OrderID VARCHAR(50),
    Style VARCHAR(50) NULL, 
    Category VARCHAR(50) NULL, 
    Qty INT NULL, 
    Currency VARCHAR(10) NULL,  
    Amount DECIMAL(10, 2) NULL,  
    PRIMARY KEY (OrderID, SKU),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


