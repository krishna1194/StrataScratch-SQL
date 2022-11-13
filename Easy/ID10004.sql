# Problem Name: Find all Lyft rides which happened on rainy days before noon
# Problem Id: ID 10004
# Problem Detail: Find all Lyft rides which happened on rainy days before noon.

# Code:
select * from lyft_rides
where weather = 'rainy' and hour < 12;