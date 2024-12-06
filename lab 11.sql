CREATE TABLE STU_INFO(
Rno INT,
Name VARCHAR(20),
Branch VARCHAR(20) 
);
DROP TABLE STU_INFO

INSERT INTO STU_INFO VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

SELECT *FROM  STU_INFO


CREATE TABLE RESULT(
Rno INT,
SPI DECIMAL(4,2),
);
DROP TABLE RESULT

INSERT INTO RESULT VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(106, 8.9);
SELECT *FROM RESULT

CREATE TABLE EMPLOYEE_MASTER(
EmployeeNo VARCHAR(20),
Name VARCHAR(20),
ManagerNo VARCHAR(20)
);
DROP TABLE EMPLOYEE_MASTER

INSERT INTO EMPLOYEE_MASTER VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');
SELECT *FROM EMPLOYEE_MASTER
SELECT *FROM STUDENT



--PART-A

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT *FROM STU_INFO CROSS JOIN result

--2. Perform inner join on Student and Result tables.
SELECT *FROM STU_INFO INNER JOIN Result ON STU_INFO.RNO=Result.RNO


--3. Perform the left outer join on Student and Result tables.
SELECT *FROM STU_INFO LEFT JOIN RESULT ON STU_INFO.RNO=Result.RNO


--4. Perform the right outer join on Student and Result tables.
SELECT *FROM STU_INFO RIGHT JOIN RESULT ON STU_INFO.RNO=Result.RNO

--5. Perform the full outer join on Student and Result tables.
SELECT *FROM STU_INFO FULL JOIN RESULT ON STU_INFO.RNO=Result.RNO

--6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI FROM STU_INFO
JOIN RESULT ON STU_INFO.RNO=Result.RNO

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI FROM STU_INFO
JOIN RESULT ON STU_INFO.RNO=Result.RNO
WHERE STU_INFO.BRANCH='CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI FROM STU_INFO 
JOIN RESULT ON STU_INFO.RNO=Result.RNO
WHERE STU_INFO.BRANCH='EC'

--9. Display average result of each branch.
SELECT BRANCH,AVG(RESULT.SPI) FROM STU_INFO
JOIN RESULT ON STU_INFO.RNO=Result.RNO
GROUP BY BRANCH

--10. Display average result of CE and ME branch
SELECT BRANCH,AVG(RESULT.SPI) FROM STU_INFO
JOIN RESULT ON STU_INFO.RNO=Result.RNO WHERE STU_INFO.BRANCH='CE' OR STU_INFO.BRANCH='ME'
GROUP BY BRANCH


--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT BRANCH,AVG(RESULT.SPI) FROM  STU_INFO
JOIN RESULT ON STU_INFO.RNO=Result.RNO
GROUP BY STU_INFO.BRANCH
ORDER BY AVG(RESULT.SPI) 

--2. Display highest SPI from each branch and sort them in descending order.
SELECT BRANCH,MAX(RESULT.SPI) FROM  STU_INFO 
JOIN RESULT ON STU_INFO.RNO=Result.RNO 
GROUP BY STU_INFO.BRANCH 
ORDER BY MAX(RESULT.SPI) DESC

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT  E.NAME AS EMPLOYEE,M.NAME MANAGER
FROM EMPLOYEE_MASTER E 
JOIN EMPLOYEE_MASTER M ON E.MANAGERNO=M.EmployeeNo