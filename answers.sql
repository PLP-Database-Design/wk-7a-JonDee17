  --Question 1 Achieving 1NF (First Normal Form)
CREATE TABLE Orders_1NF (
    Order_ID INT,
    Customer_Name VARCHAR(100),
    Product VARCHAR(50),
    PRIMARY KEY (Order_ID, Product)
);

INSERT INTO Orders_1NF VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


--Question 2 Achieving 2NF (Second Normal Form) 
-- Orders table
CREATE TABLE Orders_2NF (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100)
);

-- OrderDetails table
CREATE TABLE OrderDetails_2NF (
    Order_ID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (Order_ID, Product),
    FOREIGN KEY (Order_ID) REFERENCES Orders_2NF(Order_ID)
);

-- Insert data into Orders table
INSERT INTO Orders_2NF VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Insert data into OrderDetails table
INSERT INTO OrderDetails_2NF VALUES
(101, 'Laptop', 1),
(101, 'Mouse', 2),
(102, 'Tablet', 1),
(102, 'Keyboard', 2),
(102, 'Mouse', 2),
(103, 'Phone', 1);

