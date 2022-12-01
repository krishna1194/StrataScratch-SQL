# Problem Name: Unique Users Per Client Per Month
# Problem Id: ID 2024
# Problem Detail: Write a query that returns the number of unique users per client per month

# Code:
select client_id, date_format(time_id,"%m") as month, count(distinct user_id) as users_num
from fact_events
group by 1,2;