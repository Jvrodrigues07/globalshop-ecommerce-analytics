-- Analysis: Compare revenue vs volume
-- Objective: identify expensive vs popular products

SELECT
    oi.product_id,
    COUNT(*) AS items_sold,
    ROUND(SUM(p.payment_value),2) AS revenue,
    ROUND(SUM(p.payment_value)/COUNT(*),2) AS avg_price_estimated
FROM order_items oi
JOIN payments p ON p.order_id = oi.order_id
GROUP BY oi.product_id
ORDER BY avg_price_estimated DESC
LIMIT 20;
