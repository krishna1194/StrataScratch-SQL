# Problem Name: Customers Without Orders
# Problem Id: ID 9896
# Problem Detail:Find customers who have never made an order. Output the first name of the customer.

# Code:
select first_name from customers
where id not in (select cust_id from orders);