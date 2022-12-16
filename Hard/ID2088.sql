# Problem Name: Seat Availability
# Problem Id: ID 2088
# Problem Detail: A movie theater gave you two tables: seats that are available for an upcoming screening and neighboring seats for each seat listed. You are asked to find all pairs of seats that are both adjacent and available. Output only distinct pairs of seats in two columns such that the seat with the lower number is always in the first column and the one with the higher number is in the second column.

# Code:
with sa as
(
select b.seat_left, a.seat_number, b.seat_right
from theater_availability a join
theater_seatmap b
on a.seat_number = b.seat_number
where is_available=1
)
select seat_number as available_seat1, seat_number+1 as available_seat2 from sa where 
seat_number+1 in (select seat_number from theater_availability where is_available=1)