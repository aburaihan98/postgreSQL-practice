
CREATE VIEW dept_avr_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name

SELECT * FROM dept_avr_salary