
INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');
select*from City

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

select *from Village 

-------------------------------------PART:A--------------------------------------------------

--1. Display all the villages of Rajkot city. 
SELECT V.Name AS VillageName
FROM VILLAGE V
JOIN CITY C ON V.CityID = C.CityID
WHERE C.Name = 'Rajkot';

--2. Display city along with their villages & pin code.
SELECT C.Name AS CityName, V.Name AS VillageName, C.Pincode
FROM CITY C
LEFT JOIN VILLAGE V ON C.CityID = V.CityID;

--3. Display the city having more than one village.
SELECT C.Name AS CityName
FROM CITY C
JOIN VILLAGE V ON C.CityID = V.CityID
GROUP BY C.Name
HAVING COUNT(V.VID) > 1;

--4. Display the city having no village.
SELECT C.Name AS CityName
FROM CITY C
LEFT JOIN VILLAGE V ON C.CityID = V.CityID
WHERE V.VID IS NULL;

--5. Count the total number of villages in each city.
SELECT C.Name AS CityName, COUNT(V.VID) AS VillageCount
FROM CITY C
LEFT JOIN VILLAGE V ON C.CityID = V.CityID
GROUP BY C.Name;

--6. Count the number of cities having more than one village.
SELECT COUNT(DISTINCT C.CityID) AS CityCount
FROM CITY C
JOIN VILLAGE V ON C.CityID = V.CityID
GROUP BY C.CityID
HAVING COUNT(V.VID) > 1;

----Create below table with following constraints

INSERT INTO STU_MASTER (Rno, Name, Branch, SPI, Bklog) VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 0),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', NULL, 4.50, 3);

SELECT * FROM STU_MASTER


--1. Do not allow SPI more than 10 
--2. Do not allow Bklog less than 0. 
--3. Enter the default value as ‘General’ in branch to all new records IF no other value is specified.  
--4. Try to update SPI of Raju from 8.80 to 12. 
--5. Try to update Bklog of Neha from 0 to -1.  

UPDATE STU_MASTER
SET SPI = 12
WHERE Name = 'Raju';

UPDATE STU_MASTER
SET Bklog = -1
WHERE Name = 'Neha';


