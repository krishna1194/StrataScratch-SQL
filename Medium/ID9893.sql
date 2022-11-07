# Problem Name: Frequent Customers
# Problem Id: ID 9893
# Problem Detail: Find customers who appear in the orders table more than three times.

# Code:
select cs.cust_id from 
(
select cust_id, count(*) as cnt from orders
group by cust_id
having cnt > 3
) 
cs;