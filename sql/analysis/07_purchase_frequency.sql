-- Analysis: Purchase frequency (time between orders)
-- Objective: estimate how often customers come back to buy

SELECT
    AVG(days_between_orders) AS avg_days_between_orders
FROM (
    SELECT
        customer_id,
        DATEDIFF(
            LEAD(order_purchase_timestamp) OVER (PARTITION BY customer_id ORDER BY order_purchase_timestamp),
            order_purchase_timestamp
        ) AS days_between_orders
    FROM orders
) t
WHERE days_between_orders IS NOT NULL;
