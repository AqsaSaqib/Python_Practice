ALTER DATABASE superstore SET datestyle = 'ISO, MDY';

CREATE TABLE superstore_sales (
    row_id INTEGER PRIMARY KEY,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(20),
    customer_id VARCHAR(20),
    customer_name VARCHAR(50),
    segment VARCHAR(20),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    region VARCHAR(20),
    product_id VARCHAR(20),
    category VARCHAR(30),
    sub_category VARCHAR(30),
    product_name VARCHAR(255),
    sales NUMERIC(12,4),
    quantity INTEGER,
    discount NUMERIC(4,2),
    profit NUMERIC(12,4)
);