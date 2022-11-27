# Problem Name: Workers With The Highest Salaries
# Problem Id: ID 10353
# Problem Detail: Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary.

# Code:
select b.worker_title from worker a
inner join title b
on a.worker_id = b.worker_ref_id
where a.salary = (select max(salary) from worker);