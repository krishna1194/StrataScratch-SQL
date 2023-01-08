# Problem Name: Worst Businesses
# Problem Id: ID 9739
# Problem Detail: For every year, find the worst business in the dataset. The worst business has the most violations during the year. You should output the year, business name, and number of violations.

# Code:
select year, business_name, violations as violation_count
from
(
select year(inspection_date) year, business_name, count(distinct violation_id) violations, row_number() over (partition by year(inspection_date) order by count(distinct violation_id) desc) rk from sf_restaurant_health_violations
group by year, business_name
) a
where rk = 1
group by 1
order by 1;