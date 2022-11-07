# Problem Name: Drafted Into NFL
# Problem Id: ID 9648
# Problem Detail: How many athletes were drafted into NFL from 2013 NFL Combine? The pickround column specifies if the athlete was drafted into the NFL. A value of 0 means that the athlete was not drafted into the NFL.

# Code:
select count(*) as n_athletes from nfl_combine
where year = 2013 and pickround <> 0;