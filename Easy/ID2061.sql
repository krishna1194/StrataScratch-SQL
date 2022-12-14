# Problem Name: Users with Many Searches
# Problem Id: ID 2061
# Problem Detail: Count the number of users who made more than 5 searches in August 2021.

# Code:
with ums as
(select user_id, count(search_id) as cnt_searches
from fb_searches
where extract(year_month from date) = '202108'
group by user_id
having cnt_searches > 5)
select count(user_id) from ums;