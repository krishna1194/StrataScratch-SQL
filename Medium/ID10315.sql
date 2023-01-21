# Problem Name: Cities With The Most Expensive Homes
# Problem Id: ID 10315
# Problem Detail: Write a query that identifies cities with higher than average home prices when compared to the national average. Output the city names.

# Code:
select city
from zillow_transactions
group by city
having avg(mkt_price) > (select avg(mkt_price) from zillow_transactions)
order by city;