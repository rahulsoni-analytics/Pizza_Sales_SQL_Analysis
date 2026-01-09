-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name,
    SUM(order_details.quantity * pizzas_.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas_ ON pizzas_.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas_.pizza_id
GROUP BY pizza_types.name
ORDER BY revenue DESC
LIMIT 3;
