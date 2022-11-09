# Problem Name: Favorite Customer
# Problem Id: ID 9910
# Problem Detail: Find "favorite" customers based on the order count and the total cost of orders.A customer is considered as a favorite if he or she has placed more than 3 orders and with the total cost of orders more than $100. Output the customer's first name, city, number of orders, and total cost of orders.

# Code:
select a.first_name as name, a.city, 
count(cust_id) as order_count,
sum(total_order_cost) as total_cost
from customers a
join orders b
on a.id = b.cust_id
group by 1,2
having order_count > 3;