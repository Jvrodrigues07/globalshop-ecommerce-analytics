-- Analysis: Repeat customers
-- Objective: identify customer retention level

SELECT
    CASE 
        WHEN total_orders = 1 THEN 'one_time'
        ELSE 'repeat'
    END AS customer_type,
    COUNT(*) AS customers
FROM (
    SELECT
        customer_id,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY customer_id
) t
GROUP BY customer_type;
