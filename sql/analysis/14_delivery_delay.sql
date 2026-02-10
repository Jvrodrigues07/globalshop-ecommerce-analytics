/*
Analysis: Delivery Delay

Business Question:
Are orders delivered within the promised delivery date?

Objective:
Calculate the percentage of late deliveries to evaluate logistics reliability.

Tables Used:
- orders

Metric Created:
- Late Delivery Rate (% of orders delivered after estimated date)

Author: João
Project: GlobalShop E-commerce Analytics
*/


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
