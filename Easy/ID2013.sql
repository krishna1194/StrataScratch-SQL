# Problem Name: Customer Average Orders
# Problem Id: ID 2013
# Problem Detail: How many customers placed an order and what is the average order amount?

# Code:
select count(distinct customer_id),avg(amount) from postmates_orders;