# Problem Name: Fastest Hometowns
# Problem Id: ID 2066
# Problem Detail: he hometowns with the top 3 average net times. Output the hometowns and their average net time. In case there are ties in net time, return all unique hometowns.

# Code:
with fh as
(
select hometown, avg(net_time) avg_net_time,
rank() over (order by avg(net_time)) rk
from marathon_male
group by 1
)

select hometown, avg_net_time from fh where rk < 4;