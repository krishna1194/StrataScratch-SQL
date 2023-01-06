# Problem Name: From Microsoft to Google
# Problem Id: ID 2078
# Problem Detail: Consider all LinkedIn users who, at some point, worked at Microsoft. For how many of them was Google their next employer right after Microsoft (no employers in between)?

# Code:
select count(user_id) n_employees 
from linkedin_users a
join 
linkedin_users b
using(user_id)
where a.employer = 'Microsoft' and b.employer ='Google'
and a.end_date=b.start_date;