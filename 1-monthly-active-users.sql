SELECT 
    strftime('%Y-%m', order_date) AS month,
    COUNT(DISTINCT user_id) AS active_users
FROM orders
GROUP BY month
ORDER BY month;
