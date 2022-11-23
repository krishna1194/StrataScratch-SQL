# Problem Name: Users By Average Session Time
# Problem Id: ID 10352
# Problem Detail: Calculate each user's average session time. A session is defined as the time difference between a page_load and page_exit. For simplicity, assume a user has only 1 session per day and if there are multiple of the same events on that day, consider only the latest page_load and earliest page_exit. Output the user_id and their average session time.

# Code:
with fwl as (
select user_id, date(timestamp) as only_date,
max(case when action = 'page_load' then timestamp else Null end) as latest_page_load,
min(case when action = 'page_exit' then timestamp else Null end) as earliest_page_exit
from facebook_web_log
group by user_id, only_date)
select user_id, avg(timestampdiff(second,latest_page_load,earliest_page_exit)) from fwl
where latest_page_load is not null and earliest_page_exit is not null
group by user_id;