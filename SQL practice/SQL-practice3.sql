use sql_store;
-- use sql_inventory;

SELECT * FROM sql_store.customers;

-- join
SELECT order_id, o.customer_id, first_name, last_name 
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;
    
-- copy of table
CREATE table orders_new as
SELECT * 
FROM orders;


delete from customers
Where customer_id=5;
SELECT * 
FROM customers;

use sql_store;
SELECT * FROM sql_store.orders;

-- Union
SELECT order_id,
order_date, comments,
'Active' As Status
FROM sql_store.orders
WHERE order_date >= '2019-01-01'
UNION 
SELECT order_id,
order_date, comments,
'Archived' As Status
FROM sql_store.orders
WHERE order_date < '2019-01-01';

-- insert
INSERT into sql_store.orders(order_id,customer_id, order_date, status, comments, shipped_date, shipper_id)
Values ('16','5','2023-05-01','1','new order placed','2023-05,03','5');

-- update
update sql_store.orders
set comments = 'Comment updated' 
where order_id=6; 
SELECT * FROM sql_store.orders;

use sql_hr;
SELECT
    e.employee_id,
    e.first_name,
    m.first_name AS manager
 FROM employees e
 JOIN employees m
    ON  e.reports_to = m.employee_id;
    
  -- alter  
     alter table sql_store.customers add Age int;
    update sql_store.customers
set Age = 23 
where customer_id=1; 
update sql_store.customers
set Age = 24 
where customer_id=2; 
update sql_store.customers
set Age = 25
where customer_id=3; 
update sql_store.customers
set Age = 26 
where customer_id=4; 
update sql_store.customers
set Age = 27
where customer_id=5; 
update sql_store.customers
set Age = 28 
where customer_id=6; 
update sql_store.customers
set Age = 21 
where customer_id=7; 
update sql_store.customers
set Age = 22
where customer_id=8; 
update sql_store.customers
set Age = 23 
where customer_id=9; 
update sql_store.customers
set Age = 25
where customer_id=10; 
    select * from sql_store.customers;
    

    
