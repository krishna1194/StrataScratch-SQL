# Problem Name: Most Lucrative Products
# Problem Id: ID 2119
# Problem Detail: For the 5 most lucrative products, i.e. products that generated the highest revenue, output their IDs and the total revenue.

# Code:
select product_id, sum(cost_in_dollars*units_sold) as revenue from facebook_sales
group by product_id
order by revenue desc
limit 5;