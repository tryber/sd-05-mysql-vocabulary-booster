SELECT JOB_TITLE AS "CARGO",
(CASE
	WHEN hr.jobs.MAX_SALARY <= 10000 THEN "Baixo"
    WHEN hr.jobs.MAX_SALARY <= 20000 THEN "Médio"
    WHEN hr.jobs.MAX_SALARY <= 30000 THEN "Alto"
    ELSE "Altíssimo"
    END
) AS "Nível"
FROM hr.jobs
ORDER BY "CARGO";