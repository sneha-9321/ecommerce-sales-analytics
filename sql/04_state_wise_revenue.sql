-- 4. Business question: Kaunse states se sabse zyada revenue aata hai?
SELECT c.customer_state, ROUND(SUM(p.payment_value), 2) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_payments p ON o.order_id = p.order_id
GROUP BY 1
ORDER BY revenue DESC;