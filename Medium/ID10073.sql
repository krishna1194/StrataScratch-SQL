# Problem Name: Favorite Host Nationality
# Problem Id: ID 10073
# Problem Detail: For each guest reviewer, find the nationality of the reviewer’s favorite host based on the guest’s highest review score given to a host. Output the user ID of the guest along with their favorite host’s nationality. In case there is more than one favorite host from the same country, list that country only once (remove duplicates).

# Code:
with fhn as (
select  a.from_user, a.to_user, b.nationality, a.review_score, 
rank() OVER(partition by a.from_user order by a.review_score desc) AS ur from 
airbnb_reviews a
inner join 
airbnb_hosts b
on a.to_user = b.host_id
where from_type = 'guest'
)

select distinct from_user, nationality from fhn where ur = 1;
