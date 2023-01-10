# Problem Name: Top Two Media Types
# Problem Id: ID 2124
# Problem Detail: What are the top two (ranked in decreasing order) single-channel media types that correspond to the most money the grocery chain had spent on its promotional campaigns?

# Code:
select media_type, sum(cost) money_spent
from facebook_sales_promotions
group by 1
order by 2 desc
limit 2;