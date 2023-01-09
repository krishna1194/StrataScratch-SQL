# Problem Name: Employee with Most Orders
# Problem Id: ID 2117
# Problem Detail: What is the last name of the employee or employees who are responsible for the most orders?

# Code:
with emo as
(
select first_name,last_name,
rank() over(order by count(resp_employee_id) desc) as rk
from shopify_orders so
inner join
shopify_employees se
on so.resp_employee_id = se.id
group by 1,2
)
select last_name from emo where rk =1;