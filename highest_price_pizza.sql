-- Identify the highest-priced pizza. 

SELECT 
    pizza_types.name, pizzas_.price
FROM
    pizza_types
        JOIN
    pizzas_ ON pizza_types.pizza_type_id = pizzas_.pizza_type_id
ORDER BY pizzas_.price DESC
LIMIT 1;