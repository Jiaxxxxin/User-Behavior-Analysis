SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY oi.product_id
ORDER BY total_sold ASC
LIMIT 10;
