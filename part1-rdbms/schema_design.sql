-- Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50)
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    rep_id VARCHAR(10) PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    rep_id VARCHAR(10),
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    price INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Inserts (at least 5 rows)

INSERT INTO customers VALUES
('C1', 'Rohan Iyer', 'Mumbai'),
('C2', 'Aditya Shah', 'Delhi'),
('C3', 'Neha Joshi', 'Mumbai'),
('C4', 'Amit Mehta', 'Pune'),
('C5', 'Riya Verma', 'Delhi');

INSERT INTO products VALUES
('P1', 'Laptop', 'Electronics'),
('P2', 'Shirt', 'Clothing'),
('P3', 'Rice', 'Grocery'),
('P4', 'Headphones', 'Electronics'),
('P5', 'Shoes', 'Footwear');

INSERT INTO sales_reps VALUES
('R1', 'Raj'),
('R2', 'Priya'),
('R3', 'Amit'),
('R4', 'Sneha'),
('R5', 'Karan');

INSERT INTO orders VALUES
('O1', 'C1', 'R1', '2023-01-01', 12000),
('O2', 'C2', 'R2', '2023-01-02', 8000),
('O3', 'C3', 'R3', '2023-01-03', 15000),
('O4', 'C4', 'R4', '2023-01-04', 5000),
('O5', 'C5', 'R5', '2023-01-05', 20000);

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
('O1', 'P1', 1, 12000),
('O2', 'P2', 2, 4000),
('O3', 'P3', 3, 5000),
('O4', 'P4', 1, 5000),
('O5', 'P5', 2, 10000);
