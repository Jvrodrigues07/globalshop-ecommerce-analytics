/*
Analysis: Top Revenue Products

Business Question:
Which products generate most of the marketplace revenue?

Objective:
Identify products responsible for the largest share of revenue.

Tables Used:
- order_items
- payments

Metric Created:
- Revenue per Product

Author: João
Project: GlobalShop E-commerce Analytics
*/


SELECT
    oi.product_id,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM order_items oi
JOIN payments p ON p.order_id = oi.order_id
GROUP BY oi.product_id
ORDER BY revenue DESC
LIMIT 20;
