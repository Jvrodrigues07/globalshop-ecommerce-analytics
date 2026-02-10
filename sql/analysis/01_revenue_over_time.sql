/*
Analysis: Revenue Over Time

Business Question:
How did the marketplace revenue evolve over time?

Objective:
Measure monthly revenue to identify growth phases and seasonality patterns.

Tables Used:
- orders
- payments

Metric Created:
- Monthly Revenue (sum of payments grouped by month)

Author: João
Project: GlobalShop E-commerce Analytics
*/


SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN payments p ON p.order_id = o.order_id
GROUP BY month
ORDER BY month;
