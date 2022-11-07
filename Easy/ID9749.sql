# Problem Name: Find the most dangerous places in SF
# Problem Id: ID 9749
# Problem Detail:Find the most dangerous places in SF based on the crime count per address and district combination. Output the number of incidents alongside the corresponding address and the district. Order records based on the number of occurrences in descending order.

# Code:
select address, pd_district, count(*) as n_occurences from sf_crime_incidents_2014_01
group by address, pd_district
order by n_occurences desc;