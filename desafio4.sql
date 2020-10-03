SELECT jo.JOB_TITLE AS 'Cargo', ROUND(AVG(SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(SALARY)) >= 2000 AND ROUND(AVG(SALARY)) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(SALARY)) >= 5801 AND ROUND(AVG(SALARY)) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(SALARY)) >= 7501 AND ROUND(AVG(SALARY)) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS em
INNER JOIN hr.jobs AS jo
ON em.JOB_ID = jo.JOB_ID
GROUP BY Cargo
ORDER BY 2, 1;
