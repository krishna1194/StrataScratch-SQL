# Problem Name: Total Wine Revenue
# Problem Id: ID 10030
# Problem Detail: You have a dataset of wines. Find the total revenue made by each winery and variety that has at least 90 points. Each wine in the winery, variety pair should be at least 90 points in order for that pair to be considered in the calculation.Output the winery and variety along with the corresponding total revenue. Order records by the winery in ascending order and total revenue in descending order.

# Code:
with twr as (
select winery, variety, min(points) as min_points, sum(price) as total_revenue
from winemag_p1
group by 1,2
order by 1 asc, 3 desc
)
select winery, variety, total_revenue from twr where min_points >= 90;