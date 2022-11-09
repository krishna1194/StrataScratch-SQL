# Problem Name: Department Salaries
# Problem Id: ID 9921
# Problem Detail: Find the number of male and female employees per department and also their corresponding total salaries.Output department names along with the corresponding number of female employees, the total salary of female employees, the number of male employees, and the total salary of male employees.

# Code:
select department,
count(case when sex='F' then 'F' else Null end) as females,
sum(case when sex='F' then salary else Null end) as fem_sal,
count(case when sex='M' then 'F' else Null end) as males,
sum(case when sex='M' then salary else Null end) as mal_sal
from employee
group by department;