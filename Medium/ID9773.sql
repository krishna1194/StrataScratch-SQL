# Problem Name: Day 1 Common Reactions
# Problem Id: ID 9773
# Problem Detail: Find the most common reaction for day 1 by counting the number of occurrences for each reaction. Output the reaction alongside its number of occurrences.

# Code:
with d1cr as
(
select reaction, count(reaction) as n_occurences from facebook_reactions
where date_day = 1
group by reaction 
)
select reaction, n_occurences from d1cr where n_occurences in (select max(n_occurences) from d1cr);
