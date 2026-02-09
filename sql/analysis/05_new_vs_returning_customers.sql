-- Analysis: New vs returning customers
-- Objective: understand retention behavior

SELECT
    DATE_FORMAT(first_purchase, '%Y-%m') AS cohort_month,
    COUNT(DISTINCT customer_id) AS new_customers
FROM (
    SELECT
        customer_id,
        MIN(order_purchase_timestamp) AS first_purchase
    FROM orders
    GROUP BY customer_id
) t
GROUP BY cohort_month
ORDER BY cohort_month;
