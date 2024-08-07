CREATE TABLE EMP(
EID INT,
EName VARCHAR(25),
Department VARCHAR(25),
SALARY DECIMAL(8,2),
JoiningDate DATETIME,
City VARCHAR(25)
);
INSERT INTO EMP VALUES
(101,'Rahul','Admin',56000,'1-Jan-90','Rajkot'),
(102,'Hardik','IT',18000,'25-Sep-90', 'Ahmedabad'),
(103,'Bhavin','HR',25000,'14-May-91' ,'Baroda'),
(104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot'),
(105,'Rohit','IT',17000,'23-Jul-90','Jamnagar'),
(106,'Priya','IT',9000,'18-Oct-90','Ahmedabad'),
(107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot')

SELECT * FROM EMP

-----------Part – A:

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY)AS MAX_SALARY,MIN(SALARY) AS MIN_SALARY FROM EMP 

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(SALARY)AS TOTAL_SALARY,AVG(SALARY) AS AVERAGE_SALARY FROM EMP 

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID)AS TOTAL_EID FROM EMP 

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY)AS HIGHEST_SALARY FROM EMP WHERE CITY='RAJKOT'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY)AS MAXIMUM_SALARY FROM EMP WHERE DEPARTMENT='IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID)AS TOTAL_EID FROM EMP WHERE JOININGDATE >'8-FEB-91'

--7. Display average salary of Admin department.
SELECT AVG(SALARY)AS AVERAGE_SALARY FROM EMP WHERE DEPARTMENT='ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY)AS TOTAL_SALARY FROM EMP WHERE DEPARTMENT='HR'

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY)AS CITY FROM EMP 

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT)AS CITY FROM EMP 

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY)AS SALARY FROM EMP WHERE CITY='Ahmedabad'

--12. Find city wise highest salary.
SELECT MAX(SALARY)AS MAXIMUM_SALARY FROM EMP GROUP BY DEPARTMENT

--13. Find department wise lowest salary.
SELECT MIN(SALARY)AS MINIMUM_SALARY FROM EMP GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT COUNT(EID)AS TOTAL_EMPLOYEE FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT SUM(SALARY)AS TOTAL_SALARY FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department name
SELECT AVG(SALARY)AS AVERAGE_SALARY FROM EMP GROUP BY DEPARTMENT


--------Part – B:
--1. Count the number of employees living in Rajkot.
SELECT COUNT(EID)AS TOTAL_EMPLOYEE FROM EMP WHERE CITY= 'RAJKOT'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT (MAX(SALARY)-MIN(SALARY)) AS DIFFERENCE FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID)AS TOTAL_EID FROM EMP WHERE JOININGDATE <'1-JAN-91'


--------Part – C:
--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID)AS TOTAL_EMPLOYEE FROM EMP WHERE CITY= 'RAJKOT' OR CITY='BARODA'

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(EID)AS TOTAL_EID FROM EMP WHERE JOININGDATE <'1-JAN-91' AND DEPARTMENT='IT'

--3. Find the Joining Date wise Total Salaries.
SELECT SUM(SALARY) FROM EMP GROUP BY JoiningDate

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT,CITY,MAX(SALARY) AS MAX_SALARY FROM EMP WHERE CITY LIKE 'R%' GROUP BY Department,CITY 


------extra 
--find department wise highest salary with dapartment name (without having)
select DEPARTMENT ,ENAME as highestpaid employee, salary as highest salary from emp
where salary in( 
select max(salary) from emp group by Department);