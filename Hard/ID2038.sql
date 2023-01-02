# Problem Name: WFM Brand Segmentation based on Customer Activity
# Problem Id: ID 2038
# Problem Detail: WFM would like to segment the customers in each of their store brands into Low, Medium, and High segmentation. The segments are to be based on a customer's average basket size which is defined as (total sales / count of transactions), per customer.The segment thresholds are as follows: 1.If average basket size is more than $30, then Segment is “High”. 2.If average basket size is between $20 and $30, then Segment is “Medium”. 3.If average basket size is less than $20, then Segment is “Low”.Summarize the number of unique customers, the total number of transactions, total sales, and average basket size, grouped by store brand and segment for 2017. Your output should include the brand, segment, number of customers, total transactions, total sales, and average basket size.

# Code:

with cte as(
select s.store_brand as brand,
t.customer_id as customer,
case 
    when sum(t.sales)/count(distinct t.transaction_id) > 30 then "High"
    when sum(t.sales)/count(distinct t.transaction_id) between 20 and 30 then "Medium"
    else "Low"
end as segment,
count(distinct transaction_id) as total_transactions,
sum(sales) as total_sales
from wfm_stores s
join wfm_transactions t
on s.store_id = t.store_id
where year(t.transaction_date) = 2017
group by 1,2
)

select
brand,
segment,
count(customer) as number_customers,
sum(total_transactions) as total_transactions,
sum(total_sales) as total_sales,
sum(total_sales)/sum(total_transactions) as avg_basket_size
from cte
group by 1,2;