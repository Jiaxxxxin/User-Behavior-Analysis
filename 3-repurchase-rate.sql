SELECT 
    ROUND(COUNT(*) * 1.0 / (SELECT COUNT(DISTINCT user_id) FROM orders), 2) AS repurchase_rate
FROM (
    SELECT user_id
    FROM orders
    GROUP BY user_id
    HAVING COUNT(order_id) > 1
);