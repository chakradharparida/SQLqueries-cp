SELECT DISTINCT order_status FROM orders
select*from orders limit 100

SELECT DISTINCT order_status FROM orders
ORDER BY 1;

SELECT*FROM orders WHERE order_status = 'COMPLETE'
SELECT*FROM orders WHERE order_status = 'PROCESSING';
SELECT*FROM orders WHERE order_status = 'CLOSED'
SELECT*FROM orders WHERE order_status = 'PENDING' OR order_status = 'CLOSED'
SELECT*FROM orders WHERE order_status IN ('PENDING','CLOSED');

SELECT COUNT (*) FROM orders;
SELECT COUNT (*) FROM order_items;
SELECT COUNT (DISTINCT order_date) FROM orders;
SELECT*FROM order_items;

SELECT SUM(order_item_subtotal)
FROM order_items
WHERE order_item_order_id = 2;

SELECT*FROM orders;

SELECT order_status,count(*) AS order_count 
FROM orders 
GROUP BY 1
ORDER BY 2 DESC;

SELECT order_date,count(*) AS order_count 
FROM orders 
GROUP BY 1
ORDER BY 2 DESC;

SELECT to_char(order_date,'yyyy-mm')AS order_month ,count(*) AS order_count 
FROM orders 
GROUP BY 1
ORDER BY 2 DESC;

SELECT*FROM order_items;

SELECT order_item_order_id,
    ROUND(sum(order_item_subtotal)) AS order_revenue
FROM order_items
GROUP BY 1
ORDER BY 1;

SELECT order_date , count(*) AS order_count
FROM orders
WHERE order_status IN('COMPLETE','CLOSED')
GROUP BY 1
ORDER BY 2 DESC;

--FROM
--WHERE
--GROUP BY
--SELECT
--ORDER BY

SELECT order_date , count(*) AS order_count
FROM orders
WHERE order_status IN('COMPLETE','CLOSED')
GROUP BY 1
      HAVING COUNT(*) >=120
ORDER BY 2 DESC;

SELECT*FROM order_items;


SELECT order_item_order_id,
round(sum(order_item_subtotal)::numeric,2) AS order_revenue
FROM order_items
GROUP BY 1
ORDER BY 2 DESC;


SELECT order_item_order_id,
round(sum(order_item_subtotal)::numeric,2) AS order_revenue
FROM order_items
GROUP BY 1
HAVING round(sum(order_item_subtotal)::numeric,2)>=2000
ORDER BY 2 DESC;













