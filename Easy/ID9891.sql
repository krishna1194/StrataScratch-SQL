# Problem Name: Customer Details
# Problem Id: ID 9891
# Problem Detail: Find the details of each customer regardless of whether the customer made an order. Output the customer's first name, last name, and the city along with the order details.You may have duplicate rows in your results due to a customer ordering several of the same items. Sort records based on the customer's first name and the order details in ascending order.

# Code:
select a.first_name,a.last_name,a.city,b.order_details from customers a 
left join orders b on a.id = b.cust_id 
order by a.first_name asc, b.order_details asc;