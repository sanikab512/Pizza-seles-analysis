--- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT AVG(total_pizzas) AS average_pizzas_per_day
FROM (
    SELECT orders.date,
           SUM(orders_details.quantity) AS total_pizzas
    FROM orders
    JOIN orders_details
        ON orders.order_id = orders_details.order_id
    GROUP BY orders.date
) AS daily_orders;