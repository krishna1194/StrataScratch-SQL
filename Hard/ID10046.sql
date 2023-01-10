# Problem Name: Top 5 States With 5 Star Businesses
# Problem Id: ID 10046
# Problem Detail: Find the top 5 states with the most 5 star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. If two states have the same result, sort them in alphabetical order.

# Code:
select state,
count(business_id) as five_star_counts,
rank() over (order by count(business_id) desc) as state_rank
from yelp_business
where stars = 5
group by 1
order by 3, 1
limit 6;