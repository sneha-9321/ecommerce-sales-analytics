-- 6. Business question: Customers kis tarah se payment karte hain?
SELECT payment_type, COUNT(*) AS payments, ROUND(SUM(payment_value), 2) AS revenue
FROM order_payments
GROUP BY 1
ORDER BY revenue DESC;