SELECT p.product_name , SUM(o.unit) AS unit
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
WHERE order_date LIKE '2020-02%'
GROUP BY p.product_id
HAVING SUM(o.unit) >= 100


--Using Subquery
SELECT 
    product_name, unit
FROM (
    SELECT 
        p.product_id, p.product_name,
        SUM(o.unit) AS unit
    FROM Products p
    JOIN Orders o ON p.product_id = o.product_id
    WHERE order_date LIKE '2020-02%'
    GROUP BY p.product_id, p.product_name
) filtered
WHERE unit >= 100;
