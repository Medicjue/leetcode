# Write your MySQL query statement below
SELECT t.request_at as 'Day', 
        1- ROUND( SUM(IF(t.status = 'completed', 1, 0)) / COUNT(1)  , 2) as 'Cancellation Rate'
FROM Trips t
LEFT JOIN Users u ON t.client_id  = u.users_id  AND u.role = 'client'
LEFT JOIN Users d ON t.driver_id  = d.users_id AND d.role = 'driver'
WHERE u.banned = 'No'  AND d.banned = 'No'
AND t.request_at >= '2013-10-01' AND t.request_at < '2013-10-04'
GROUP BY t.request_at

