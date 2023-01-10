# Problem Name: Ranking Hosts By Beds
# Problem Id: ID 10161
# Problem Detail: Rank each host based on the number of beds they have listed. The host with the most beds should be ranked 1 and the host with the least number of beds should be ranked last. Hosts that have the same number of beds should have the same rank but there should be no gaps between ranking values. A host can also own multiple properties. Output the host ID, number of beds, and rank from highest rank to lowest.

# Code:
select host_id, sum(n_beds) number_of_beds,
dense_rank() over(order by sum(n_beds) desc) 'rank'
from airbnb_apartments
group by 1;