SELECT filtered.employee_id
FROM(
    SELECT * 
    FROM Employees em1
    Where em1.salary < 30000 
    AND em1.manager_id IS NOT NULL
    AND NOT EXISTS (
    SELECT 1
    FROM employees em2
    WHERE em2.employee_id = em1.manager_id
    )
    ) AS filtered
ORDER BY em1.employee_id ASC
