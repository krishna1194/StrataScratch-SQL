# Problem Name: City with Most Customers
# Problem Id: ID 2079
# Problem Detail: For each city, find the number of rides in August 2021 that were not paid for using promotional codes. Output the city or cities where this number was the highest.

# Code:
with cmc as
(
select city,
rank() over(order by count(*) desc) rk
from 
lyft_orders a
inner join 
lyft_payments b
on
a.order_id = b.order_id
where b.promo_code = 0 and year(b.order_date) = 2021 and month(b.order_date) = 08
group by 1
)

select city
from cmc
where rk =1;
