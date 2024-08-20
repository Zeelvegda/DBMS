-->Math functions
-------------------------------------------------Part – A:-------------------------------------------------------------------

--1. Display the result of 5 multiply by 30.
SELECT (5*30) AS MULTIPLICATION

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT (5/2) , (5/3)

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER (3,2),POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50)

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5),SQUARE(15),SQUARE(25)

--9. Find out the value of PI.
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,0),ROUND(157.732,2),ROUND(157.732,-2)

--11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10) , LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5),LOG10(100)

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25),SIGN(0),SIGN(25)

--16. Generate random number using function
SELECT RAND()


CREATE TABLE EMP_MASTER (EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL(8,2),
Commission INT,
City VARCHAR(25),
DeptCode VARCHAR(25));----------------------------------------------------Part – B:----------------------------------------------------------------- INSERT INTO EMP_MASTER VALUES(101 ,'Keyur','2002-01-05',12000.00,4500,'Rajkot', '3@g'),
(102 ,'Hardik','2004-02-15',14000.00,2500,'Ahmedabad','3@'),
(103 ,'Kajal','2006-03-14',15000.00,3000,'Baroda', '3-GD'),
(104 ,'Bhoomi','2005-06-23',12500.00,1000,'Ahmedabad','1A3D'),
(105 ,'Harmit','2004-02-15',14000.00,2000,'Rajkot', '312A')

SELECT* FROM EMP_MASTER

--1. Display the result of Salary plus Commission.
SELECT(SALARY+Commission) AS RESULT FROM EMP_MASTER

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT (55/2),(55/3)

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER (23,2),POWER(14,3)


----------------------------------------------------Part – C:-----------------------------------------------------------------
--1. Find out the square root of 36, 49 and 81.
SELECT SQRT(36),SQRT(49),SQRT(81)

--2. Find out the square of 3, 9, and 12.
SELECT SQUARE(3),SQUARE(9),SQUARE(12)

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
SELECT ROUND(280.8952,2),ROUND(280.8952,-2),ROUND(280.8952,0)

--4. Find sine, cosine and tangent of 4.2014.
SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)

--5. Find sign of -55, 0 and 95.
SELECT SIGN(-55),SIGN(0),SIGN(95)--->String functions
---------------------------------------------------Part – A:------------------------------------------------------------------

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN('NULL'),LEN('HELLO'),LEN('BLANK')

--2. Display your name in lower & upper case.
SELECT LOWER('ZEEL'),UPPER('ZEEL')

--3. Display first three characters of your name.
SELECT LEFT('ZEEL',3)

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('DARSHAN UNIVERSITY',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','abc123efg','abcXYZefg'),REPLACE('abcabcabc','abcabcabc','ab5ab5ab5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('A'),ASCII('a'),ASCII('Z'),ASCII('z'),ASCII(0),ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('HELLO WORLD')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('HELLO WORLD')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST(1234.56 AS DECIMAL(10,2))

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CONVERT(FLOAT,10.58)

--13. Put 10 space before your name using function.
SELECT SPACE(10)+'DARSHAN'

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT('+','DARSHAN','UNIVERSITY')

--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 timesSELECT REPLICATE('ZEEL',3)----------------------------------------------------Part – B:----------------------------------------------------------------

--(Perform following queries on Student table of practical no 5.)

CREATE TABLE STUDENT (StuID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100));INSERT INTO STUDENT VALUES (1011,'Keyur','Patel', 'techonthenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa", Raiya Road'),
(1033,'Kajal','Trivedi',' bigactivities.com','Baroda','Raj bhavan plot, near garden'),
(1044,'Bhoomi','Gajera', 'checkyourmath.com', 'Ahmedabad',' "Jig''s Home", Narol'), 
(1055,'Harmit','Mitel',' @me.darshan.com',' Rajkot', 'B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda', 'A502 Club House Building')  SELECT *FROM STUDENT

--1. Find the length of FirstName and LastName columns.
SELECT  LEN(FIRSTNAME) AS FIRSTNAME FROM STUDENT
SELECT LEN(LASTNAME) AS LASTNAME FROM STUDENT

--2. Display FirstName and LastName columns in lower & upper case.
SELECT LOWER(FIRSTNAME) AS FIRSTNAME FROM STUDENT 
SELECT LOWER(LASTNAME) AS LASTNAME FROM STUDENT
SELECT UPPER(FIRSTNAME) AS FIRSTNAME FROM STUDENT 
SELECT UPPER(LASTNAME) AS LASTNAME FROM STUDENT

--3. Display first three characters of FirstName column.
SELECT LEFT(FIRSTNAME,3) AS FIRSTNAME FROM STUDENT 

--4. Display 3rd to 10th character of Website column.
SELECT SUBSTRING(WEBSITE,3,10) AS WEBSITE FROM STUDENT 

--5. Write a query to display first 4 & Last 5 characters of Website column.
SELECT LEFT(WEBSITE,4) AS WEBSITE FROM STUDENT 
SELECT RIGHT(WEBSITE,10) AS WEBSITE FROM STUDENT 




----------------------------------------------------Part – C:----------------------------------------------------------------

--(Perform following queries on Student table of practical no 5.)

--1. Put 10 space before FirstName using function.
SELECT SPACE(10)+FIRSTNAME FROM STUDENT

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
SELECT CONCAT_WS('+',FIRSTNAME,LASTNAME) FROM STUDENT

--3. Combine all columns using + sign as well as CONCAT ().
SELECT CONCAT_WS('+',StuID,FirstName,LastName,Website,City,Address) FROM STUDENT

--4. Find reverse of FirstName column.
SELECT REVERSE(FIRSTNAME) FROM STUDENT

--5. Repeat FirstName column 3 times
SELECT REPLICATE(FIRSTNAME,3) FROM STUDENT

--6. Give the Names which contains 5 characters.
SELECT FIRSTNAME,LASTNAME FROM STUDENT WHERE LEN(FIRSTNAME)=5 OR LEN(LASTNAME)=5

--7. Combine the result as <FirstName> Lives in <City>.
SELECT CONCAT(FIRSTNAME,'-LIVES IN-',CITY) AS DESCRIPTION FROM STUDENT

--8. Combine the result as Student_ID of < FirstName > is <StuID> .
SELECT CONCAT('STUDENT ID OF ',FIRSTNAME,' IS ',STUID) AS DESCRIPTION FROM STUDENT

-->Date Functions
------------------------------------------------------Part – A:----------------------------------------------------------------


--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS CURRENTDATE

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(day, 365, GETDATE()) AS NewDate;

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(), 'MMM dd yyyy h:mmtt') AS FormattedDate;

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(), 'dd MMM yyyy') AS FormattedDate;

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(), 'MMM dd, yy') AS FormattedDate;

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(month, '2008-12-31', '2009-03-31') AS TotalMonths;

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(year, '2010-09-14', '2012-01-25') AS TotalYears;

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(hour, '2012-01-25 07:00:00', '2012-01-26 10:30:00') AS TotalHours;

--9. Write a query to extract Day, Month, Year from given date 12-May-16.


--10. Write a query that adds 5 years to current date.
SELECT DATEADD(year, 5, GETDATE()) AS NewDate;

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(month, -2, GETDATE()) AS NewDate;

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(month, GETDATE()) AS MonthName, DATEPART(month, GETDATE()) AS MonthNumber;

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) AS LastDateOfMonth;

--14. Calculate your age in years and months.--DECLARE @Birthdate DATE = '2004-11-24';
--SELECT DATEDIFF(year, @Birthdate, GETDATE()) AS AgeYears,
--       DATEDIFF(month, @Birthdate, GETDATE()) % 12 AS AgeMonths;
Create table EMP_DETAIL(EmpNo INT,EmpName VARCHAR(50),JoiningDate DATETIME, Salary DECIMAL(8,2),City VARCHAR(25));INSERT INTO EMP_DETAIL VALUES(101,'Keyur','2002-01-15',12000,'Rajkot'),
(102,'Hardik','2004-02-15',14000,'Ahmedabad'),
(103,'Kajal','2006-03-14',15000,'Baroda'),
(104,'Bhoomi','2005-06-23',12500,'Ahmedabad'),
(105,'Harmit','2004-02-15',14000,'Rajkot'),
(106,'Jay','2007-03-12',12000,'Surat')SELECT * FROM EMP_DETAIL-------------------------------------------------Part – B:----------------------------------------------------------------------1. Write a query to find new date after 365 day with reference to JoiningDate.
SELECT EmpNo, EmpName, JoiningDate, DATEADD(day, 365, JoiningDate) AS NewDate
FROM EMP_DETAIL;

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
SELECT EmpNo, EmpName, JoiningDate, FORMAT(JoiningDate, 'MMMM d yyyy h:mmtt') AS FormattedDate
FROM EMP_DETAIL;

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
SELECT EmpNo, EmpName, JoiningDate, FORMAT(JoiningDate, 'dd MMM yyyy') AS FormattedDate
FROM EMP_DETAIL;

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
SELECT EmpNo, EmpName, JoiningDate, FORMAT(JoiningDate, 'MMM dd, yy') AS FormattedDate
FROM EMP_DETAIL;

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT EmpNo, EmpName, JoiningDate, DATEDIFF(month, JoiningDate, '2009-03-31') AS TotalMonths
FROM EMP_DETAIL;

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
SELECT EmpNo, EmpName, JoiningDate, DATEDIFF(year, JoiningDate, '2010-09-14') AS TotalYears
FROM EMP_DETAIL;


-------------------------------------------------Part – C:------------------------------------------------------------------- 

--1. Write a query to extract Day, Month, Year from JoiningDate.
SELECT EmpNo, EmpName, JoiningDate, 
 DAY(JoiningDate) AS Day, 
 MONTH(JoiningDate) AS Month, 
 YEAR(JoiningDate) AS Year
FROM EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
SELECT EmpNo, EmpName, JoiningDate, 
  DATEADD(year, 5, JoiningDate) AS NewDate
FROM EMP_DETAIL;

--3. Write a query to subtract 2 months from JoiningDate.
SELECT EmpNo, EmpName, JoiningDate, 
  DATEADD(month, -2, JoiningDate) AS NewDate
FROM EMP_DETAIL;

--4. Extract month from JoiningDate using datename () and datepart () function.
SELECT EmpNo, EmpName, JoiningDate, 
 DATENAME(month, JoiningDate) AS MonthName, 
 DATEPART(month, JoiningDate) AS MonthNumber
FROM EMP_DETAIL;

--5. Calculate your age in years and months