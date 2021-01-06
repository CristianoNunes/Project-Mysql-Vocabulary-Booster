SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME ) AS 'Nome Completo',
j.JOB_TITLE AS Cargo,
jh.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.employees as e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;