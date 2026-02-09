-- Analysis: Delivery delay
-- Objective: measure late deliveries

SELECT
    CASE
        WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'late'
        ELSE 'on_time'
    END AS delivery_status,
    COUNT(*) AS total_orders,
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM orders
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;
