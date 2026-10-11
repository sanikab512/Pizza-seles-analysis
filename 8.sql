--- Determine the distribution of orders by hour of the d

SELECT HOUR(time) AS hour,
       COUNT(order_id) AS order_count
FROM orders
GROUP BY HOUR(time)
ORDER BY hour;