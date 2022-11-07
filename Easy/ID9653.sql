# Problem Name: Count the number of user events performed by MacBookPro users
# Problem Id: ID 9653
# Problem Detail: Count the number of user events performed by MacBookPro users. Output the result along with the event name. Sort the result based on the event count in the descending order.

# Code:
select event_name, count(*) as event_count from playbook_events
where device = 'macbook pro' 
group by event_name
order by event_count desc;