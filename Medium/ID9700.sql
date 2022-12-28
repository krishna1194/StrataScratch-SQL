# Problem Name: Rules To Determine Grades
# Problem Id: ID 9700
# Problem Detail: Find the rules used to determine each grade. Show the rule in a separate column in the format of 'Score > X AND Score <= Y => Grade = A' where X and Y are the lower and upper bounds for a grade. Output the corresponding grade and its highest and lowest scores along with the rule. Order the result based on the grade in ascending order.

# Code:
select grade,
min(score) as 'min',
max(score) as 'max',
case 
when Score > 89 AND Score <= 100 then "Score > 89 AND Score <= 100 => Grade = A"
when Score > 79 AND Score <= 88 then "Score > 79 AND Score <= 88 => Grade = B"
when Score > 69 AND Score <= 79 then "Score > 69 AND Score <= 79 => Grade = C"
end as rule
from los_angeles_restaurant_health_inspections
group by 1;