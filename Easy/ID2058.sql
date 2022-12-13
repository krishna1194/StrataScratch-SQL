# Problem Name: Total Shipment Weight
# Problem Id: ID 2058
# Problem Detail: Calculate the total weight for each shipment and add it as a new column. Your output needs to have all the existing rows and columns in addition to the  new column that shows the total weight for each shipment. One shipment can have multiple rows.

# Code:
select *, sum(weight) over(partition by shipment_id order by shipment_id) as total_weight
from amazon_shipment;