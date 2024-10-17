--create product table
CREATE TABLE Product (
    Product_id INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

--create customer table
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Customer_Tel VARCHAR(15)
);

--create orders table 
CREATE TABLE Orders (
    Customer_id VARCHAR(10),
    Product_id VARCHAR(10),
    OrderDate DATE,
    Quantity INT,
    Total_amount DECIMAL(10, 2),
    PRIMARY KEY (product_id, customer_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

--Insert customer 
INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel)
VALUES 
('C01', 'ALI', '71321009'),
('C02', 'ASMA', '77345823');

--insert product
INSERT INTO Product (Product_id, Product_Name, Category, Price)
VALUES 
('P01', 'Samsung Galaxy S20', 'Smartphone', 3299),
('P02', 'ASUS Notebook', 'PC', 4599);

--insert orders
INSERT INTO Orders (Customer_id, Product_id, OrderDate, Quantity, Total_amount)
VALUES 
('C01', 'P02', NULL, 2, 9198),
('C02', 'P01', '2020-05-28', 1, 3299);

