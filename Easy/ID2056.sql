# Problem Name: Number of Shipments Per Month
# Problem Id: ID 2056
# Problem Detail: Write a query that will calculate the number of shipments per month. The unique key for one shipment is a combination of shipment_id and sub_id. Output the year_month in format YYYY-MM and the number of shipments in that month.

# Code:
with nspm as (
select concat(shipment_id, '-',sub_id) as shipment, 
date_format(shipment_date, '%Y-%m') as ym
from amazon_shipment)
select ym,count(distinct shipment) 
from nspm
group by ym;