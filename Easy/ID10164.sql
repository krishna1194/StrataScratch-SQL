# Problem Name: Total AdWords Earnings
# Problem Id: ID 10164
# Problem Detail: Find the total AdWords earnings for each business type. Output the business types along with the total earnings.

# Code:
select business_type, sum(adwords_earnings) earnings
from google_adwords_earnings
group by 1
order by 2 desc;