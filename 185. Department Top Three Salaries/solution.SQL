# Write your MySQL query statement below
SELECT dummy.Department, dummy.name as 'Employee', dummy.salary as 'Salary'
FROM
(
    SELECT d.name as 'Department', e.*, (dense_rank() OVER  (PARTITION BY e.departmentId ORDER BY e.salary DESC)) as 'rank'
    FROM Employee e
    LEFT JOIN Department d ON e.departmentId = d.id) dummy
WHERE dummy.rank <= 3

