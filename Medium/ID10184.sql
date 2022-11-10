# Problem Name: Order all countries by the year they first participated in the Olympics
# Problem Id: ID 10184
# Problem Detail: Order all countries by the year they first participated in the Olympics. Output the National Olympics Committee (NOC) name along with the desired year. Sort records by the year and the NOC in ascending order.

# Code:
# Simple way:
select noc, min(year) as first_time_year from olympics_athletes_events
group by noc order by first_time_year, noc asc;

# Not-Simple way
with oae as (
select noc, year, row_number() over(partition by noc order by year asc) as first_time_year
from olympics_athletes_events)
select noc, year from oae where first_time_year = 1
order by year, noc asc;