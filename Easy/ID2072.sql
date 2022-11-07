# Problem Name: Active Users Per Platform
# Problem Id: ID 2072
# Problem Detail: For each platform (e.g. Windows, iPhone, iPad etc.), calculate the number of users. Consider unique users and not individual sessions. Output the name of the platform with the corresponding number of users.

# Code:
select platform, count(distinct user_id) as n_users from user_sessions
group by platform;