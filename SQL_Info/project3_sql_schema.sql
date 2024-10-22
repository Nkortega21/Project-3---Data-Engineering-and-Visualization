-- Create Orders table
CREATE TABLE Orders (
    OrderID VARCHAR(50) PRIMARY KEY,
    Date DATE NOT NULL, 
    Status VARCHAR(50) NOT NULL,
    Fulfilment VARCHAR(50) NOT NULL,
    SalesChannel VARCHAR(50) NOT NULL,
    ShipServiceLevel VARCHAR(50) NOT NULL,
    B2B BOOLEAN NOT NULL
);

-- Create ShippingDetails table
CREATE TABLE ShippingDetails (
    OrderID VARCHAR(50) PRIMARY KEY,
    ShipCity VARCHAR(100)  NULL, 
    ShipState VARCHAR(100) NULL,  
    ShipPostalCode VARCHAR(20) NOT NULL,  
    ShipCountry VARCHAR(50) NULL,  
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Create Products table
CREATE TABLE Products (
    SKU VARCHAR(50),
    OrderID VARCHAR(50),
    Style VARCHAR(50) NOT NULL, 
    Category VARCHAR(50) NOT NULL, 
    Qty INT NOT NULL, 
    Currency VARCHAR(10) NOT NULL,  
    Amount DECIMAL(10, 2) NOT NULL,  
    PRIMARY KEY (OrderID, SKU),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Create Completed Orders Table
CREATE TABLE completed_orders (
    OrderID VARCHAR(50) PRIMARY KEY,  
    Status VARCHAR(100) NOT NULL,      
    Fulfilment VARCHAR(100),            
    Amount DECIMAL(10, 2) NOT NULL      
);
