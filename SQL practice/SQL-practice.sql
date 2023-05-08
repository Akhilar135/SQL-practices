SELECT * FROM sql_inventory.products;
USE sql_inventory;
select name, unit_price, (unit_price-(unit_price*10/100)) AS Price_with_discount
FROM products;

select name, unit_price
FROM products
WHERE unit_price>4;

SELECT * 
FROM products
WHERE quantity_in_stock > 50 AND quantity_in_stock<70
ORDER BY name;

SELECT * 
FROM products
WHERE quantity_in_stock = 70 OR quantity_in_stock=90;
