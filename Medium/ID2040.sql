# Problem Name: Customers Report Summary
# Problem Id: ID 2040
# Problem Detail: Summarize the number of customers and transactions for each month in 2017, filtering out transactions that were less than $5.

# Code:
select month(transaction_date) as 'month',
count(distinct customer_id) as customers,
count(distinct transaction_id) as transactions
from wfm_transactions
where year(transaction_date) = '2017' and sales >= 5
group by 1;