use rocky;
 

CREATE TABLE products (
   product_id INT PRIMARY KEY,
   product_name VARCHAR(50),
   category VARCHAR(30),
   price DECIMAL(10,2),
   stock INT,
   brand VARCHAR(30)
);

INSERT INTO products VALUES
(1, 'iPhone 13', 'Mobile', 70000, 10, 'Apple'),
(2, 'Galaxy S21', 'Mobile', 60000, 15, 'Samsung'),
(3, 'Redmi Note 11', 'Mobile', 20000, 25, 'Xiaomi'),
(4, 'MacBook Air', 'Laptop', 90000, 5, 'Apple'),
(5, 'Dell Inspiron', 'Laptop', 55000, 8, 'Dell'),
(6, 'HP Pavilion', 'Laptop', 60000, 7, 'HP'),
(7, 'Sony Headphones', 'Accessories', 8000, 20, 'Sony'),
(8, 'Boat Earbuds', 'Accessories', 2000, 50, 'Boat'),
(9, 'iPad', 'Tablet', 50000, 12, 'Apple'),
(10, 'Samsung Tab', 'Tablet', 30000, 18, 'Samsung'),
(11, 'Asus Laptop', 'Laptop', 65000, 6, 'Asus'),
(12, 'OnePlus 11', 'Mobile', 55000, 14, 'OnePlus'),
(13, 'Realme Narzo', 'Mobile', 15000, 30, 'Realme'),
(14, 'Lenovo ThinkPad', 'Laptop', 75000, 4, 'Lenovo'),
(15, 'JBL Speaker', 'Accessories', 10000, 22, 'JBL'),
(16, 'Mi Pad', 'Tablet', 25000, 16, 'Xiaomi'),
(17, 'AirPods', 'Accessories', 15000, 9, 'Apple'),
(18, 'Oppo F21', 'Mobile', 22000, 19, 'Oppo'),
(19, 'Vivo V27', 'Mobile', 28000, 17, 'Vivo'),
(20, 'Noise Watch', 'Accessories', 5000, 40, 'Noise');

SELECT category, count(*) as total_products
FROM products
GROUP BY category

SELECT category,count(stock) as stock_avialable
FROM products
GROUP BY category

SELECT brand , avg(price) as avg_price
FROM products
group by brand

SELECT brand , count(product_id) as total_products
FROM products
GROUP BY brand

SELECT category , MAX(price) AS COSTLY_product
FROM products
GROUP BY category

SELECT brand , COUNT(stock) as stock
FROM products
GROUP BY brand
ORDER BY COUNT(stock) DESC

SELECT category, avg(price)
FROM products
GROUP BY category
ORDER BY avg(price) DESC

SELECT category , COUNT(product_id)
FROM products
GROUP BY category
ORDER BY COUNT(product_id) ASCSQL


