SELECT 
    strftime('%Y-%m', o.order_date) AS month,
    ROUND(SUM(oi.quantity * o.total_amount), 2) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
