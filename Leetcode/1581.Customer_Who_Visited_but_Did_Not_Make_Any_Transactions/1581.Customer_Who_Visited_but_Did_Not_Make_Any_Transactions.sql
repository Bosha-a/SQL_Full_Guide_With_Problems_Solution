SELECT vi.customer_id , COUNT(vi.visit_id) AS count_no_trans
FROM Visits vi
LEFT JOIN Transactions tr on tr.visit_id = vi.visit_id 
Where tr.transaction_id IS NULL 
GROUP BY vi.customer_id  

