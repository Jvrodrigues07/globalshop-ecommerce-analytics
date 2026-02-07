-- Analysis: Revenue over time
-- Objective: understand company growth month by month

SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN payments p ON p.order_id = o.order_id
GROUP BY month
ORDER BY month;
