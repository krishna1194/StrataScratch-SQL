# Problem Name: Median Salary
# Problem Id: ID 9900
# Problem Detail: Find the median employee salary of each department. Output the department name along with the corresponding salary rounded to the nearest whole dollar.

# Code:
with ms as 
(
select department, salary, row_number() over (partition by department order by salary) as rn, count(*) over (partition by department) as cnt
from employee
order by 1,2
)
select department, avg(salary) from ms
where rn in (CEILING(cnt / 2) + 1, CEILING(cnt / 2))
group by 1;