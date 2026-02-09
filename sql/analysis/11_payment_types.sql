-- Analysis: Payment types distribution
-- Objective: understand customer payment preference

SELECT
    payment_type,
    COUNT(*) AS total_payments,
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM payments
GROUP BY payment_type
ORDER BY total_payments DESC;
