-- Identify the most common pizza size ordered

SELECT 
    pizzas_.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas_
        JOIN
    order_details ON pizzas_.pizza_id = order_details.pizza_id
GROUP BY pizzas_.size
ORDER BY order_count DESC; 

