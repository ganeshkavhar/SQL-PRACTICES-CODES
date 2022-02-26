Display the first name and join date of the employees who joined between 2002 and 2005.
SELECT * FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'YYYY') BETWEEN 2002 AND 2005;

2.	Display first name and join date of the employees who is either IT Programmer or Sales Man.
SELECT FIRST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE JOB_ID='IT Programmer' OR JOB_ID='Sales Man';

3.	Display employees who joined after 1st January 2008.
SELECT * FROM EMPLOYEES
WHERE HIRE_DATE >'01-01-2008';

4.	Display details of employee with ID 150 or 160.
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (150,160);


5.	Display first name, salary, commission pct, and hire date for employees with salary less than 10000.
SELECT FIRST_NAME,SALARY,COMMISSION_PCT,HIRE_DATE
FROM EMPLOYEES
WHERE SALARY<10000;

6.	Display details of jobs in the descending order of the title.
SELECT JOB_ID
FROM EMPLOYEES
ORDER BY JOB_ID DESC;

7.	Display employees where the first name or last name starts with S.
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE('S%') OR LAST_NAME LIKE('S%');


8.	Display employees who joined in the month of May.
SELECT  * FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'MON')='MAY';

9.	Display details of the employees where commission percentage is null and 
salary in the range 5000 to 10000 and department is 30.
SELECT * FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL
AND SALARY BETWEEN 5000 AND 10000
AND DEPARTMENT_ID=30;


10.	Display first name and last name after converting the first letter of each name 
	to upper case and the rest to lower case
    SELECT INITCAP(FIRST_NAME),INITCAP(LAST_NAME)
    FROM EMPLOYEES;
    
11. Diplay first 5 records from employees
SELECT * FROM EMPLOYEES
WHERE ROWNUM<=5;

12. Display the details of employee who get 3rd highest salary
SELECT * FROM 
(SELECT DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DRK,E.* FROM EMPLOYEES E)
WHERE DRK=3;


13. Display the details of employee who get lowest salary	
SELECT * FROM 
(SELECT DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DRK,E.* FROM EMPLOYEES E);


14. Display the details of last five employees.
SELECT * FROM
(SELECT ROWNUM AS RK,E.* FROM EMPLOYEES E ORDER BY EMPLOYEE_ID DESC)
WHERE RK<=5;

15. Create an empty table same as employees.
CREATE TABLE CODES AS SELECT * FROM EMPLOYEES;

16. Insert the data into new empty table from employees.
INSERT INTO CODES
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (100,102,103,104);

SELECT * FROM CODES;
