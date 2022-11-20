# Problem Name: Distances Traveled
# Problem Id: ID 10324
# Problem Detail: Find the top 10 users that have traveled the greatest distance. Output their id, name and a total distance traveled.

# Code:
select a.user_id,b.name,sum(distance) as traveled_distance 
from lyft_rides_log a 
inner join 
lyft_users b
on a.user_id = b.id
group by 1,2
order by 3 desc
limit 10;