-- Analysis: Top categories by quantity sold
-- Objective: identify sales volume vs revenue difference

SELECT
    pr.product_category_name AS category,
    COUNT(*) AS items_sold
FROM order_items oi
JOIN products pr ON pr.product_id = oi.product_id
GROUP BY category
ORDER BY items_sold DESC
LIMIT 10;
