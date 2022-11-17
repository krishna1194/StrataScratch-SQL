# Problem Name: Salaries Differences
# Problem Id: ID 10308
# Problem Detail: Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

# Code:
select max(case when b.department = 'marketing' then salary end) - max(case when b.department = 'engineering' then salary end) as salary_difference
from db_employee a 
inner join db_dept b
on a.department_id = b.id;