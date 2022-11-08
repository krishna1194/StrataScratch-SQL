# Problem Name: Women In The Olympics Before World War 2
# Problem Id: ID 9932
# Problem Detail:Find unique names women who participated in an Olympics before World War 2. Let's consider the year 1939 as the start of WW2.

# Code:
select name from olympics_athletes_events
where sex = 'F' and year < 1939;