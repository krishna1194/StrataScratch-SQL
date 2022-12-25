# Problem Name: Guest Or Host Kindness
# Problem Id: ID 10072
# Problem Detail: Find whether hosts or guests give higher review scores based on their average review scores. Output the higher of the average review score rounded to the 2nd decimal spot (e.g., 5.11).

# Code:
select from_type, round(avg(review_score),2) avg_review_score
from airbnb_reviews
group by from_type
order by avg_review_score desc
limit 1;