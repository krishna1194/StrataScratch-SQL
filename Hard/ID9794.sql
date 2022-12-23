# Problem Name: Words With Two Vowels
# Problem Id: ID 9794
# Problem Detail: Find all words which contain exactly two vowels in any list in the table.

# Code:
with wwtv as
(
select substring_index(words1, ",", 1) word from google_word_lists
union 
select substring_index(words2, ",", 1) word from google_word_lists
union
select substring_index(words1, ",", -1) word from google_word_lists
union
select substring_index(words2, ",", -1) word from google_word_lists
union
select substring_index(substring_index(words1, ",", 2), ",", -1) word from google_word_lists
union
select substring_index(substring_index(words2, ",", 2), ",", -1) word from google_word_lists
)

select word from wwtv 
where length(word) - length(regexp_replace(word, "[aeiou]", "")) = 2;