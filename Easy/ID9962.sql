# Problem Name: Top 10 QBs
# Problem Id: ID 9962
# Problem Detail: Find the top 10 ratings quarterbacks received. Output the quarterback along with the corresponding rating.

# Code:
select qb,rate from qbstats_2015_2016
order by rate desc limit 10;