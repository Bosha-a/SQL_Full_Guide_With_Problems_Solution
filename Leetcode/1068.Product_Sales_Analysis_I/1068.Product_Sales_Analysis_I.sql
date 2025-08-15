--Using LEFT JOIN
SELECT pr.product_name , sa.year , sa.price 
FROM Sales sa
LEFT JOIN Product pr on pr.product_id = sa.product_id


--Using RIGHT JOIN
SELECT pr.product_name , sa.year , sa.price 
FROM Product pr
RIGHT JOIN Sales sa on pr.product_id = sa.product_id