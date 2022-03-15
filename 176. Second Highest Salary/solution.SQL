# Write your MySQL query statement below
SELECT CASE WHEN COUNT(cnt) >= 1 THEN salary ELSE null END as SecondHighestSalary
FROM (SELECT DENSE_RANK() OVER ( ORDER BY e.salary DESC) as cnt, salary
FROM Employee e) dummy
WHERE dummy.cnt = 2

