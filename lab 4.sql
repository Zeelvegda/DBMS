-------->Alter Operation
--Part  A:
--Use Deposit table of lab-1

--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSITE ADD CITY VARCHAR(20) 

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSITE
ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSITE
ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.
SP_RENAME 'DEPOSITE.ACTNO','ANO' 

--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSITE DROP COLUMN BNAME --6. Change name of table DEPOSIT to DEPOSIT_DETAIL.SP_RENAME 'DEPOSITE','DEPOSITE_DETAIL'
----Part  B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME 'DEPOSITE_DETAIL.ADATE','AOPENDATE'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSITE_DETAIL DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName.
SP_RENAME 'DEPOSITE_DETAIL.CNAME','CUSTOMERNAME'

----Part  C:
CREATE TABLE STUDENT_DETAIL(
Enrollment_No VARCHAR(20),
Name VARCHAR(25),
CPI DECIMAL(5,2),
Birthdate DATETIME
);

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD  City VARCHAR (20) NOT NULL, Backlog INT NULL

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT 

--4. Rename Column Enrollment_No to ENO.
SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO'

--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL DROP COLUMN CITY

--6. Change name of table student_detail to STUDENT_MASTER.
EXEC SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER'


------>DELETE, Truncate, Drop Operation
--Part  A:
--Use Deposit_Detail table (Altered table of DEPOSIT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
DELETE FROM DEPOSITE_DETAIL WHERE AMOUNT>=4000

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSITE_DETAIL WHERE BNAME='CHANDI' 


--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSITE_DETAIL WHERE ANO>105 


--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSITE_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)DROP TABLE DEPOSITE_DETAIL---Part  B:CREATE TABLE EMPLOYEE_MASTER(EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL (8,2),
City VARCHAR(20));INSERT INTO EMPLOYEE_MASTER VALUES(101,' Keyur','2002-01-05', 12000.00, 'Rajkot'),
(102, 'Hardik', '2004-02-15', 14000.00,'Ahmedabad'),
(103, 'Kajal','2006-03-14',15000.00,'Baroda'),
(104, 'Bhoomi','2005-06-23',12500.00,' Ahmedabad'),
(105, 'Harmit','2004-02-15',14000.00,' Rajkot'),
(106, 'Mitesh','2001-09-25',5000.00,' Jamnagar'),
(107, 'Meera', Null,7000.00,' Morbi'),
(108, 'Kishan', '2003-02-06',10000.00,NULL)

SELECT*FROM EMPLOYEE_MASTER

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 
DELETE FROM EMPLOYEE_MASTER WHERE SALARY>=14000

--2. Delete all the Employees who belongs to RAJKOT city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT'

--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate>2007-01-01

--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate IS NULL  AND  EmpName IS NOT NULL

--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY 

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY IS NOT NULL

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER 

--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER

----Part  C:

--1. Summarize Delete, Truncate and Drop
--DROP: remove table from database (structure completely delete)
--DELETE:remove one or more records from table
--TRUNCATE:remove all rows from existing table