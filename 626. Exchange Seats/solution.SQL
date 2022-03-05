# Write your MySQL query statement below
SELECT s.id, 
       IF( IF( MOD(s.id,2) = 0, LAG(s.student, 1) OVER (ORDER BY s.id ASC) , LEAD(s.student, 1) OVER (ORDER BY s.id ASC) ) IS NULL, 
       s.student, 
       IF( MOD(s.id,2) = 0, LAG(s.student, 1) OVER (ORDER BY s.id ASC) , LEAD(s.student, 1) OVER (ORDER BY s.id ASC) ) ) as 'student'
FROM Seat s
