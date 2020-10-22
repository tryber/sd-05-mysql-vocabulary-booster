SELECT p.ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAS(o.Quantity) AS 'Máxima',
Round(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON o.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING ROUND(AVG(o.Quantity), 2) > 20.00
ORDER BY 4, 1;
