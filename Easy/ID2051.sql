# Problem Name: Monthly Active Users
# Problem Id: ID 2051
# Problem Detail: Find the monthly active users for January 2021 for each account. Your output should have account_id and the monthly count for that account.

# Code:
select account_id, count(distinct user_id) from sf_events
where year(date) = 2021
group by 1;