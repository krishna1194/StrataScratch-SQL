# Problem Name: Find all posts which were reacted to with a heart
# Problem Id: ID 10087
# Problem Detail: Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.

# Code:
select distinct b.* from facebook_reactions a
inner join facebook_posts b
on a.post_id = b.post_id
where a.reaction = 'heart';