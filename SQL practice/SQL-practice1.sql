USE sql_store;

SELECT * FROM sql_store.customers;

SELECT customer_id, first_name, phone, state 
FROM customers
WHERE birth_date BETWEEN '1980-01-01' AND '1980-12-31';

SELECT * 
FROM customers
WHERE state IN('CA','FL', 'GA');

SELECT * 
FROM customers
WHERE state NOT IN('CA','FL', 'GA');

SELECT * 
FROM customers
WHERE address LIKE '%Junction';

SELECT * 
FROM customers
WHERE first_name LIKE '%le%';

SELECT first_name,phone,address,state
FROM customers
WHERE address REGEXP 'Trail';

SELECT first_name,last_name,phone,address,state
FROM customers
WHERE last_name REGEXP '^Rose';

SELECT first_name,last_name,phone,address,state
FROM customers
WHERE address REGEXP 'Junction$';



