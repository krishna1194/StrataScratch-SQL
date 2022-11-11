# Problem Name: Expensive Projects
# Problem Id: ID 10301
# Problem Detail: Given a list of projects and employees mapped to each project, calculate by the amount of project budget allocated to each employee . The output should include the project title and the project budget rounded to the closest integer. Order your list by projects with the highest budget per employee first.

# Code:
select title as project , ceiling((a.budget/count(id))) as budget_emp_ratio
from ms_projects a
join ms_emp_projects b
on a.id = b.project_id
group by 1
order by 2 desc;