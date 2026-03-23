-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount FLOAT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert cleaned dimension data

INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 2024),
(2, '2024-01-02', 1, 2024),
(3, '2024-02-01', 2, 2024);

INSERT INTO dim_store VALUES
(1, 'Store A', 'Delhi'),
(2, 'Store B', 'Mumbai'),
(3, 'Store C', 'Bangalore');

INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Shirt', 'Apparel'),
(3, 'Rice Bag', 'Groceries');

-- Insert cleaned fact data (10 rows)

INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 1, 2, 2, 5, 5000),
(3, 2, 1, 3, 10, 2000),
(4, 2, 3, 1, 1, 50000),
(5, 3, 2, 2, 3, 3000),
(6, 3, 1, 1, 2, 100000),
(7, 1, 3, 3, 8, 1600),
(8, 2, 2, 2, 4, 4000),
(9, 3, 3, 1, 1, 50000),
(10, 1, 1, 2, 6, 6000);
