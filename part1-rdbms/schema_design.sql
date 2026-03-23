-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives
CREATE TABLE Sales_Reps (
    rep_id VARCHAR(10) PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES Sales_Reps(rep_id)
);

-- Order Items
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- INSERT DATA

INSERT INTO Customers VALUES
('C101', 'Amit Sharma', 'Mumbai'),
('C102', 'Priya Mehta', 'Pune'),
('C103', 'Rahul Jain', 'Delhi'),
('C104', 'Sneha Patil', 'Mumbai'),
('C105', 'Arjun Rao', 'Bangalore');

INSERT INTO Products VALUES
('P101', 'Laptop', 50000),
('P102', 'Phone', 20000),
('P103', 'Tablet', 15000),
('P104', 'Headphones', 2000),
('P105', 'Monitor', 10000);

INSERT INTO Sales_Reps VALUES
('R1', 'Raj'),
('R2', 'Simran'),
('R3', 'Karan'),
('R4', 'Neha'),
('R5', 'Vikram');

INSERT INTO Orders VALUES
('O1', 'C101', 'R1', '2024-01-10'),
('O2', 'C102', 'R2', '2024-01-11'),
('O3', 'C103', 'R3', '2024-01-12'),
('O4', 'C104', 'R1', '2024-01-13'),
('O5', 'C105', 'R4', '2024-01-14');

INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
('O1', 'P101', 1),
('O1', 'P104', 2),
('O2', 'P102', 1),
('O3', 'P103', 3),
('O4', 'P105', 1);
