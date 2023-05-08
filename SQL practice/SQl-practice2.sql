USE sql_store;
SELECT * FROM sql_store.orders;

SELECT order_id,order_date,comments
FROM orders
WHERE comments is NULL;

SELECT order_id,order_date,comments
FROM orders
WHERE comments is NOT NULL;

SELECT order_id,order_date,comments
FROM orders
WHERE comments is NULL
ORDER BY order_date;

SELECT * 
FROM orders
WHERE status = 2;

SELECT order_id,order_date,comments
FROM orders
WHERE comments is NOT NULL
LIMIT 2;

SELECT order_id,order_date,comments
FROM orders
LIMIT 2,3;




