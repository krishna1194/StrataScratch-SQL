# Problem Name: Lyft Driver Salary And Service Tenure
# Problem Id: ID 10018
# Problem Detail: Find the correlation between the annual salary and the length of the service period of a Lyft driver.

# Code:
with ld1 as
(select datediff(coalesce(end_date, now()), start_date) as work_period, yearly_salary
from lyft_drivers),
ld2 as
(select avg(work_period) as avg_period, avg(yearly_salary) as avg_salary
from ld1),
ld3 as
(select work_period - avg_period as diff_period,  yearly_salary - avg_salary as diff_salary
from ld1, ld2),
ld4 as
(select sum(power(diff_period, 2)) as dp_sq , sum(power(diff_salary, 2)) as ds_sq, sum(diff_period * diff_salary) as dpds
from ld3)

select dpds/sqrt(dp_sq*ds_sq) as corr from ld4;