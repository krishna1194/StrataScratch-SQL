# Problem Name: Update Call Duration
# Problem Id: ID 2022
# Problem Detail: Redfin helps clients to find agents. Each client will have a unique request_id and each request_id has several calls. For each request_id, the first call is an “initial call” and all the following calls are “update calls”.  What's the average call duration for all update calls?

# Code:
select avg(call_duration) from 
(
select *,
row_number() over(partition by request_id order by created_on) rn
from redfin_call_tracking
) ucd
where rn>1;