1. Total revenue by product category
SELECT product_category, SUM(price * quantity) AS total_revenue
FROM orders
GROUP BY product_category;

2. Average revenue per customer
SELECT customer_id, AVG(price * quantity) AS avg_revenue
FROM orders
GROUP BY customer_id;

3. Number of orders by payment method
SELECT payment_method, COUNT(*) AS number_of_orders
FROM orders
GROUP BY payment_method;

4. Quantity sold by region
SELECT region, SUM(quantity) AS total_quantity
FROM orders
GROUP BY region;

5. View all orders table
SELECT * FROM orders;

6. Orders placed by customer_id = 104
SELECT * FROM orders WHERE customer_id = 104;

7. Total sales by month
SELECT DATE_TRUNC('month', order_date) AS sale_month, SUM(price * quantity) AS total_sales
FROM orders
GROUP BY sale_month;
