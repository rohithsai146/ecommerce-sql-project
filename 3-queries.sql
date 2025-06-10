SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.product_name
ORDER BY 
    total_quantity_sold DESC
LIMIT 3;


SELECT 
    p.category,
    SUM(oi.item_price) AS total_revenue
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.category
ORDER BY 
    total_revenue DESC;


SELECT 
    MONTH(order_date) AS order_month,
    COUNT(*) AS total_orders
FROM 
    orders
GROUP BY 
    MONTH(order_date)
ORDER BY 
    order_month;


SELECT 
    c.full_name,
    SUM(o.total_amount) AS total_spent
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.full_name
ORDER BY 
    total_spent DESC
LIMIT 5;


SELECT 
    o.order_id,
    DATEDIFF(d.delivery_date, o.order_date) AS delivery_days
FROM 
    orders o
JOIN 
    delivery d ON o.order_id = d.order_id
WHERE 
    d.delivery_status = 'Delivered';
