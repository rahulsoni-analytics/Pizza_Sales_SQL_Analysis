-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(order_details.quantity * pizzas_.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas_ ON pizzas_.pizza_id = order_details.pizza_id;
