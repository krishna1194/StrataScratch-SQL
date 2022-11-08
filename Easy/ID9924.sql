# Problem Name: Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email
# Problem Id: ID 9924
# Problem Detail: Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email.

# Code:
select distinct(home_library_code) from library_usage
where circulation_active_year = 2016 and notice_preference_code = 'z' and provided_email_address = 0;