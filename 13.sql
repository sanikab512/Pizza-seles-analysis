--- Analyze the cumulative revenue generated over time.


SELECT orders.date,
       SUM(orders_details.quantity * pizzas.price) AS daily_revenue,
       SUM(SUM(orders_details.quantity * pizzas.price))
       OVER (ORDER BY orders.date) AS cumulative_revenue
FROM orders
JOIN orders_details
    ON orders.order_id = orders_details.order_id
JOIN pizzas
    ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY orders.date
ORDER BY orders.date;