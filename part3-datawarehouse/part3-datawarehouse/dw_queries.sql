SELECT product_id, SUM(total_amount) FROM fact_sales GROUP BY product_id;
