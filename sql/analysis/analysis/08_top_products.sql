-- Analysis: Top products by revenue
-- Objective: identify products that sustain marketplace revenue

SELECT
    oi.product_id,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM order_items oi
JOIN payments p ON p.order_id = oi.order_id
GROUP BY oi.product_id
ORDER BY revenue DESC
LIMIT 20;
