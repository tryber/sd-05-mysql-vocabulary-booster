SELECT ProductName AS 'Produto',
MIN(o_d.Quantity) AS 'Mínima',
MAX(o_d.Quantity) AS 'Máxima',
ROUND(AVG(o_d.Quantity),2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o_d
ON p.ProductID = o_d.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20
ORDER BY `Média`, ProductName;
