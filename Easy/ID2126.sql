# Problem Name: Account Registrations
# Problem Id: ID 2126
# Problem Detail: Find the number of account registrations according to the signup date. Output the months and their corresponding number of registrations.

# Code:
select date_format(started_at, '%Y-%m') to_char, count(*) 
from noom_signups
group by 1;