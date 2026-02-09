-- Analysis: Average ticket value
-- Objective: understand customer spending per order

SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(p.payment_value)/COUNT(DISTINCT o.order_id),2) AS avg_ticket
FROM orders o
JOIN payments p ON p.order_id = o.order_id
GROUP BY month
ORDER BY month;
