-- Analysis: Top products by quantity sold
-- Objective: compare sales volume vs revenue concentration

SELECT
    oi.product_id,
    COUNT(*) AS items_sold
FROM order_items oi
GROUP BY oi.product_id
ORDER BY items_sold DESC
LIMIT 20;
