# Problem Name: Find the most profitable company in the financial sector of the entire world along with its continent
# Problem Id: ID 9663
# Problem Detail:Find the most profitable company from the financial sector. Output the result along with the continent.

# Code:
select company, continent from forbes_global_2010_2014
where profits = (select max(profits) from forbes_global_2010_2014);