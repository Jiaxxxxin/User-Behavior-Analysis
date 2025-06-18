SELECT 
    p.category,
    ROUND(SUM(oi.quantity * o.total_amount), 2) AS total_sales
FROM orders o, order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;