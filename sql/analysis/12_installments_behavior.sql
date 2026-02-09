-- Analysis: Installment behavior
-- Objective: understand how customers split payments

SELECT
    payment_installments,
    COUNT(*) AS total_orders,
    ROUND(AVG(payment_value),2) AS avg_order_value
FROM payments
GROUP BY payment_installments
ORDER BY payment_installments;
