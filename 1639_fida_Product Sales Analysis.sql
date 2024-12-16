CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Apple', 2.50),
(2, 'Banana', 1.50),
(3, 'Orange', 3.00),
(4, 'Mango', 2.00);
SELECT * FROM products;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Sales FLOAT  NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Orders (OrderID, ProductID, Quantity, Sales) VALUES
(1, 1, 10, 25.00),
(2, 1, 5, 12.50),
(3, 2, 8, 12.00),
(4, 3, 12, 36.00),
(5, 4, 6, 12.00);
SELECT * FROM Orders;

SELECT 
    p.ProductName, 
    SUM(o.Sales) AS TotalRevenue
FROM 
    Products p
JOIN 
    Orders o
ON 
    p.ProductID = o.ProductID
GROUP BY 
    p.ProductName
ORDER BY 
    TotalRevenue DESC;

