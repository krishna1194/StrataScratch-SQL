# Problem Name: Recent Refinance Submissions
# Problem Id: ID 2003
# Problem Detail: Write a query that joins this submissions table to the loans table and returns the total loan balance on each user’s most recent ‘Refinance’ submission. Return all users and the balance for each of them.

# Code:
select user_id, balance from
(select user_id, balance,
rank() over(partition by user_id order by created_at desc) rnk
from loans a
join submissions b 
on a.id = b.loan_id
where type = 'Refinance') rrs
where rnk = 1;