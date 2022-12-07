# Problem Name: Daily Top Merchants
# Problem Id: ID 2092
# Problem Detail: For each day, find the top 3 merchants with the highest number of orders on that day. In case of a tie, multiple merchants can share the same place but on each day, there should always be at least 1 merchant on the first, second and third place.Output the date, the name of the merchant and their place in the daily ranking.

# Code:
select * from 
(select cast(a.order_timestamp as date) as order_day, b.name ,
dense_rank() over(partition by cast(a.order_timestamp as date) order by count(a.id) desc) as rnk
from doordash_orders a
join doordash_merchants b 
on a.merchant_id = b.id
group by 1,2) dtm
where rnk <= 3;