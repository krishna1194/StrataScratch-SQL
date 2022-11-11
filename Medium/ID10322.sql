# Problem Name: Finding User Purchases
# Problem Id: ID 10322
# Problem Detail: Write a query that'll identify returning active users. A returning active user is a user that has made a second purchase within 7 days of any other of their purchases. Output a list of user_ids of these returning active users.

# Code:
select distinct a.user_id
from amazon_transactions as a join amazon_transactions as b
on a.user_id = b.user_id and a.id <> b.id
where abs(datediff(a.created_at, b.created_at)) < 8
order by a.user_id;