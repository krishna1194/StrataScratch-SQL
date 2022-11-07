# Problem Name: Find all searches for San Francisco with a flexible cancellation policy and a review score rating
# Problem Id: ID 9621
# Problem Detail: Find all searches for San Francisco with a flexible cancellation policy and a review score rating. Sort the results by the review score in the descending order.

# Code:
select * from airbnb_search_details
where city = 'SF' and cancellation_policy = 'flexible' and 
review_scores_rating IS NOT NULL
order by review_scores_rating;