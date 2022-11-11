# Problem Name: Risky Projects
# Problem Id: ID 10304
# Problem Detail: Identify projects that are at risk for going overbudget. A project is considered to be overbudget if the cost of all employees assigned to the project is greater than the budget of the project.You'll need to prorate the cost of the employees to the duration of the project. For example, if the budget for a project that takes half a year to complete is $10K, then the total half-year salary of all employees assigned to the project should not exceed $10K. Salary is defined on a yearly basis, so be careful how to calculate salaries for the projects that last less or more than one year.Output a list of projects that are overbudget with their project name, project budget, and prorated total employee expense (rounded to the next dollar amount).

# Code:
select a.id, a.title, a.budget, ceiling((sum(c.salary)/365)*datediff(a.end_date,a.start_date)) as prorated_employee_expense
from linkedin_projects a
join linkedin_emp_projects b
on a.id = b.project_id
join linkedin_employees c
on b.emp_id = c.id
group by 1,2
having prorated_employee_expense > budget;