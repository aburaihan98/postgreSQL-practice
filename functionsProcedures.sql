
SELECT * FROM employees

CREATE FUNCTION emp_count()
RETURNS INTEGER
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees
$$

SELECT emp_count()

CREATE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees
WHERE employee_id = 30
$$

SELECT delete_emp()

CREATE or replace FUNCTION delete_emp_by_id(p_delete_emp int)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees
WHERE employee_id = p_delete_emp
$$;

SELECT delete_emp_by_id(28);

-- PROCEDURE
CREATE PROCEDURE del_emp_var(p_emp_id INT)
LANGUAGE  plpgsql
AS
$$
DECLARE 
 test_var INT;
BEGIN
SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;
DELETE FROM employees WHERE employee_id = test_var;
RAISE NOTICE 'Employee removed successfully';
END;
$$;

CALL del_emp_var(26);