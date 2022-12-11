# Problem Name: Three Purchases
# Problem Id: ID 2095
# Problem Detail: List the IDs of customers who made at least 3 orders in both 2020 and 2021.

# Code:
select distinct user_id
from amazon_orders
group by 1
having
count(case when year(order_date) = 2020 then id else null end) >= 3 and
count(case when year(order_date) = 2021 then id else null end) >= 3;