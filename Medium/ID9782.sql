# Problem Name: Customer Revenue In March
# Problem Id: ID 9782
# Problem Detail: Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019. Output the revenue along with the customer id and sort the results based on the revenue in descending order.

# Code:
select cust_id, sum(total_order_cost) as revenue from orders
where month(order_date) = 3
group by cust_id
order by revenue desc;