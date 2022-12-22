# Problem Name: Most Senior & Junior Employee
# Problem Id: ID 2044
# Problem Detail: Write a query to find the number of days between the longest and least tenured employee still working for the company. Your output should include the number of employees with the longest-tenure, the number of employees with the least-tenure, and the number of days between both the longest-tenured and least-tenured hiring dates.

# Code:
with main_ as (
select id,datediff(hire_date,current_date) as tenure 
from uber_employees 
where termination_date is null
),
dd as (
select (max(tenure)-min(tenure)) as days_diff
from main_
),
ltc as (
select count(id) as longest_tenured_count
from main_ 
where tenure in (select min(tenure) from main_)
),
stc as (
select count(id) as shortest_tenured_count
from main_ 
where tenure in (select max(tenure) from main_)
)

select shortest_tenured_count,longest_tenured_count,days_diff 
from dd,ltc,stc;
