# Problem Name: Second Highest Salary
# Problem Id: ID 9892
# Problem Detail: Find the second highest salary of employees.

# Code:
select salary from employee
order by 1 desc
limit 1 offset 1;