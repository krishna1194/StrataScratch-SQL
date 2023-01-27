# Problem Name: Users Activity Per Month Day
# Problem Id: ID 2006
# Problem Detail: Return a distribution of users activity per day of the month

# Code:
select day(post_date) date_part, count(*) 'count' from facebook_posts
group by 1;