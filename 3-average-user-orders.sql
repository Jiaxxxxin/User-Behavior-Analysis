SELECT 
    ROUND(AVG(order_count), 2) AS avg_orders_per_user
FROM (
    SELECT user_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY user_id
);
