# Problem Name: Average Age of Claims by Gender
# Problem Id: ID 2139
# Problem Detail: You have been asked to calculate the average age by gender of people who filed more than 1 claim in 2021. The output should include the gender and average age rounded to the nearest whole number.

# Code:
with aacg as
(
select a.account_id, count(*) as claimsmade,a.gender,a.age 
from cvs_accounts a
inner join cvs_claims b
on a.account_id = b.account_id
where year(date_submitted) = 2021
group by 1
)
select gender, round(avg(age),0) avg_age from aacg where claimsmade > 1 group by 1;