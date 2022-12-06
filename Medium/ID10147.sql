# Problem Name: Find countries that are in winemag_p1 dataset but not in winemag_p2
# Problem Id: ID 10147
# Problem Detail: Find countries that are in winemag_p1 dataset but not in winemag_p2. Output distinct country names. Order records by the country in ascending order.

# Code:
select distinct a.country from winemag_p1 a, winemag_p2 b
where a.country not in (select distinct country from winemag_p2)
order by 1;