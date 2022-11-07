# Problem Name: Find the date with the highest opening stock price
# Problem Id: ID 9613
# Problem Detail: Find the date when Apple's opening stock price reached its maximum

# Code:
select date from aapl_historical_stock_price
where open = (select max(open) from aapl_historical_stock_price);