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
    total_amount INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert Cleaned Data

-- dim_date
INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-02-01', 2, 2023),
(3, '2023-03-01', 3, 2023);

-- dim_store
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Pune');

-- dim_product
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Shirt', 'Clothing'),
(3, 'Rice', 'Grocery');

-- fact_sales (at least 10 rows)
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 1, 2, 2, 5, 25000),
(3, 2, 1, 3, 10, 5000),
(4, 2, 3, 1, 1, 50000),
(5, 3, 2, 2, 3, 15000),
(6, 3, 3, 3, 8, 4000),
(7, 1, 1, 2, 4, 20000),
(8, 2, 2, 1, 2, 100000),
(9, 3, 3, 1, 1, 50000),
(10, 1, 3, 3, 6, 3000);
