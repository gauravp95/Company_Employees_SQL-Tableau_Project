/*COMMIT AND ROLL BACK */

-- for testing purpose, disable autocommit
SET autocommit = 0;

SELECT *
FROM employees
WHERE emp_no = '999901';

UPDATE employees
SET first_name = 'Stella', gender = 'M'
WHERE emp_no = '999901';

ROLLBACK;

SELECT *
FROM employees
WHERE emp_no = '999901';

-- using commit

UPDATE employees
SET first_name = 'Sally'
WHERE emp_no = '999901';

COMMIT;

SELECT *
FROM employees
WHERE emp_no = '999901';

ROLLBACK;

-- now the changes are aready commmited, it cannot be rollback
SELECT *
FROM employees
WHERE emp_no = '999901';

-- change back to auto commit
SET autocommit = 1;

/*------------------------------------------------------------------*/
