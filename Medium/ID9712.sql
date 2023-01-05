# Problem Name: Find the first and last times the maximum score was awarded
# Problem Id: ID 9712
# Problem Detail: Find the first and last times the maximum score was awarded

# Code:
select min(activity_date) as first_time, max(activity_date) as last_time 
from los_angeles_restaurant_health_inspections
where score = (select max(score) from los_angeles_restaurant_health_inspections);