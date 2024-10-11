-- Create ShippingDetails table
CREATE TABLE ShippingDetails (
    OrderID VARCHAR(50) PRIMARY KEY,
    ShipCity VARCHAR(100),
    ShipState VARCHAR(100),
    ShipPostalCode VARCHAR(20),
    ShipCountry VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID VARCHAR(50) PRIMARY KEY,
    Date DATE,
    Status VARCHAR(50),
    Fulfilment VARCHAR(50),
    SalesChannel VARCHAR(50),
    ShipServiceLevel VARCHAR(50),
    B2B BOOLEAN,
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Create Products table
CREATE TABLE Products (
    SKU VARCHAR(50),
    OrderID VARCHAR(50) PRIMARY KEY,
    Style VARCHAR(50),
    Category VARCHAR(50),
    Amount DECIMAL(10, 2),
    Currency VARCHAR(10),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
