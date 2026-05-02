### 1: Retrieve the total number of orders placed
Select Count(order_id) as total_order from orders;

#2:Calculate the total revenue generated from pizza sales.
SELECT 
    round(SUM(order_details.quantity * pizzas.price), 2) AS Total_Revenue
FROM
    order_details
        JOIN
    Pizzas ON Order_details.pizza_id = Pizzas.pizza_id;

## 3:Identify the highest-priced pizza.

Select pizza_type_id, price from Pizzas order by Price desc  limit 1;
select max(price) from pizzas;

##4:Identify the most common pizza size ordered. Size, quantity
SELECT 
    pizzas.size as pizza_size, SUM(order_details.quantity) as total_quantity
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
    group by pizza_size
    order by total_quantity desc limit 5;
  
## 5:List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pizza_types.name AS Pizza_type_Name,
    SUM(order_details.quantity) AS Total_quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_type_Name
ORDER BY Total_quantity DESC
LIMIT 5;
    