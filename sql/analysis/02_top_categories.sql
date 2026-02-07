-- Analysis: Top product categories by revenue
-- Objective: identify which categories generate the most money

SELECT
    pr.product_category_name AS category,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN payments p ON p.order_id = o.order_id
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products pr ON pr.product_id = oi.product_id
GROUP BY category
ORDER BY revenue DESC
LIMIT 10;
