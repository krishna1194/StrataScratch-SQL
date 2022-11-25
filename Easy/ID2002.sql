# Problem Name: Submission Types
# Problem Id: ID 2002
# Problem Detail: Write a query that returns the user ID of all users that have created at least one ‘Refinance’ submission and at least one ‘InSchool’ submission.

# Code:
with st as
(
select distinct user_id,type from loans
)
select user_id from st where 
type = 'Refinance' or type = 'InSchool'
group by 1
having count(type) = 2;