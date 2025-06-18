SELECT 
    u.user_id,
    u.name,
    ROUND(SUM(o.total_amount), 2) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY total_spent DESC
LIMIT 10;
