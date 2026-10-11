-- Identify the most common pizza size ordered.
SELECT 
    quantity, COUNT(order_details_id)
FROM
    orders_details
GROUP BY quantity;