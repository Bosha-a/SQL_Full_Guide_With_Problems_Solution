# Write your MySQL query statement below
SELECT DISTINCT a.machine_id , round(avg(b.timestamp-a.timestamp),3) AS processing_time
FROM Activity a 
Left join Activity b ON 
a.machine_id  = b.machine_id 
AND a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id


--Using a subquery
select 
a.machine_id,
round(
      (select avg(a1.timestamp) from Activity a1 where a1.activity_type = 'end' and a1.machine_id = a.machine_id) - 
      (select avg(a1.timestamp) from Activity a1 where a1.activity_type = 'start' and a1.machine_id = a.machine_id)
,3) as processing_time
from Activity a
group by a.machine_id