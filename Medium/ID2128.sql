# Problem Name: Book Sales
# Problem Id: ID 2128
# Problem Detail: Calculate the total revenue made per book. Output the book ID and total sales per book. In case there is a book that has never been sold, include it in your output with a value of 0.

# Code:
select b.book_id, coalesce(sum(a.quantity)*b.unit_price,0) as total_sales from amazon_books_order_details a
right join amazon_books b
on a.book_id = b.book_id
group by 1;