# Problem Name: User Email Labels
# Problem Id: ID 10068
# Problem Detail: Find the number of emails received by each user under each built-in email label. The email labels are: 'Promotion', 'Social', and 'Shopping'. Output the user along with the number of promotion, social, and shopping mails count,.

# Code:
select to_user,
    sum(case when label = 'Promotion' then 1 else 0 end) as promotion,
    sum(case when label = 'Social' then 1 else 0 end) as social,
    sum(case when label = 'Shopping' then 1 else 0 end) as shopping
from google_gmail_emails as a
join google_gmail_labels as b on b.email_id = a.id 
group by 1;