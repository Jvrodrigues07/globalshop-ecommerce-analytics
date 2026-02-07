SELECT COUNT(*) AS orders FROM orders;
SELECT COUNT(*) AS order_items FROM order_items;
SELECT COUNT(*) AS payments FROM payments;
SELECT COUNT(*) AS products FROM products;
SELECT COUNT(*) AS customers FROM customers;

SELECT COUNT(*) AS orders_without_payments
FROM orders o
LEFT JOIN payments p ON p.order_id = o.order_id
WHERE p.order_id IS NULL;

SELECT COUNT(*) AS payments_without_orders
FROM payments p
LEFT JOIN orders o ON o.order_id = p.order_id
WHERE o.order_id IS NULL;

SELECT COUNT(*) AS items_without_orders
FROM order_items oi
LEFT JOIN orders o ON o.order_id = oi.order_id
WHERE o.order_id IS NULL;
