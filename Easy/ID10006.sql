# Problem Name: Find the average distance traveled in each hour
# Problem Id: ID 10006
# Problem Detail: Find the average distance traveled in each hour. Output the hour along with the corresponding average traveled distance. Sort records by the hour in ascending order.

# Code:
select hour, avg(travel_distance) from lyft_rides
group by 1
order by 2