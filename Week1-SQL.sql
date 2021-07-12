use employees;
-- 1.	Show all employees who were born before 1965-01-01
SELECT * FROM employees WHERE birth_date<'1965-01-01';
-- 2. Show all employees who are female and were hired after 1990
SELECT * FROM employees WHERE gender=’f’ AND hire_date>'1990-12-31';
-- 3. Show the first and last name of the first 50 employees whose last name starts with F
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'f%' LIMIT 50;
-- 4. Insert 3 new employees into the employees table. There emp_no should be 100, 101, and 102.  You can choose the rest of the data.
INSERT INTO employees VALUES(100, '2013-06-07', 'Dylan', 'Staples', 'M', '2021-06-24'),  (101, '2010-10-06', 'Ben', 'Staples', 'M', '2021-06-24'),  (102, '1971-09-04', 'Heather', 'Staples', 'F', '2021-06-24');
-- 5. Change the employee's first name to Bob for the employee with the emp_no of 10023.
UPDATE employees SET first_name='Bob' WHERE emp_no=10023;
-- 6. Change all employees hire dates to 2002-01-01 whose first or last names start with P.
UPDATE employees SET hire_date='2002-01-01' WHERE first_name LIKE 'p%' OR last_name LIKE 'p%';
-- 7. Delete all employees who have an emp_no less than 10000
DELETE FROM employees WHERE emp_no<10000;
-- 8. Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089.
DELETE FROM employees WHERE emp_no=10048;
DELETE FROM employees WHERE emp_no=10099;
DELETE FROM employees WHERE emp_no=10234;
DELETE FROM employees WHERE emp_no=20089;
