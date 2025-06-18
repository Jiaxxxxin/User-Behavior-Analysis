SELECT 
    strftime('%Y-%m', signup_date) AS month,
    COUNT(*) AS new_users
FROM users
GROUP BY month
ORDER BY month;
