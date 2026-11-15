-- 3. Business question: Kaunsi top 10 categories sabse zyada revenue deti hain?
SELECT
    t.product_category_name_english AS category,
    ROUND(SUM(oi.price), 2) AS revenue,
    COUNT(DISTINCT oi.order_id) AS orders
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
JOIN category_translation t ON pr.product_category_name = t.product_category_name
GROUP BY 1
ORDER BY revenue DESC
LIMIT 10;