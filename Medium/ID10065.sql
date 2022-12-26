# Problem Name: Find whether the number of seniors works at Meta/Facebook is higher than its number of USA based employees
# Problem Id: ID 10065
# Problem Detail: Find whether the number of senior workers (i.e., more experienced) at Meta/Facebook is higher than number of USA based employees at Facebook/Meta. If the number of seniors is higher then output as 'More seniors'. Otherwise, output as 'More USA-based'.

# Code:
select case 
when
((select sum(is_senior) from facebook_employees) - 
(select count(id) from facebook_employees where location='USA'))
>0 then 'More seniors' else 'More USA-based' end as winner;