/*
Analysis: Payment Type Distribution

Business Question:
What payment methods do customers prefer?

Objective:
Measure distribution of payment methods to understand purchasing behavior.

Tables Used:
- payments

Metric Created:
- Payment Type Percentage Distribution

Author: Ailton & João
Project: GlobalShop E-commerce Analytics
*/


SELECT
    payment_type,
    COUNT(*) AS total_payments,
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM payments
GROUP BY payment_type
ORDER BY total_payments DESC;
