# Problem Name: Host Response Rates With Cleaning Fees
# Problem Id: ID 9634
# Problem Detail: Find the average host response rate with a cleaning fee for each zipcode. Present the results as a percentage along with the zip code value. Convert the column 'host_response_rate' from TEXT to NUMERIC using type casts and string processing (take missing values as NULL). Order the result in ascending order based on the average host response rater after cleaning.

# Code:
select zipcode,
avg(cast(host_response_rate as float)) as avg_host_response_rate
from airbnb_search_details
where cleaning_fee = 1
group by 1
having avg(cast(host_response_rate as float)) is not null
order by 2;