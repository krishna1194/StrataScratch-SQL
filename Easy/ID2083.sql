# Problem Name: Pending Claims
# Problem Id: ID 2083
# Problem Detail: Count how many claims submitted in December 2021 are still pending. A claim is pending when it has neither an acceptance nor rejection date.

# Code:
select count(*) n_claims from cvs_claims
where year(date_submitted) = 2021 and month(date_submitted) = 12
and date_accepted is null and date_rejected is null;