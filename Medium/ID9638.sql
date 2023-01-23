# Problem Name: Total Searches For Rooms
# Problem Id: ID 9638
# Problem Detail: Find the total number of searches for each room type (apartments, private, shared) by city.

# Code:
select city,
sum(case when room_type = 'Entire home/apt' then 1 else 0 end) apt_count,
sum(case when room_type = 'Private room' then 1 else 0 end) private_count,
sum(case when room_type = 'Shared room' then 1 else 0 end) shared_count
from airbnb_search_details
group by 1;