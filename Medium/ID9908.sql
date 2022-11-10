# Problem Name: Customer Orders and Details
# Problem Id: ID 9908
# Problem Detail: Find the number of orders, the number of customers, and the total cost of orders for each city. Only include cities that have made at least 5 orders and count all customers in each city even if they did not place an order. Output each calculation along with the corresponding city name.

# Code:
select city, count(b.id) as orders_per_city, 
count(distinct a.id) as customers_per_city, sum(b.total_order_cost) as orders_cost_per_city
from customers a 
left join
orders b
on a.id=b.cust_id
group by city
having orders_per_city > 4;