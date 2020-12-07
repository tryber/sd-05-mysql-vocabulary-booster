USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN CARGO VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY ),2) AS 'Média salarial'
FROM hr.jobs AS J
JOIN hr.employees AS E
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = CARGO;
END $$
DELIMITER ;
