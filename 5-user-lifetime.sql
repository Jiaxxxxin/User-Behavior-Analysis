SELECT 
    u.user_id,
    u.name,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(o.total_amount), 2) AS lifetime_value,
    ROUND(AVG(o.total_amount), 2) AS avg_order_value
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY lifetime_value DESC;
