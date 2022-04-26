USE w3schools;

-- safe mode 해제
SET SQL_SAFE_UPDATES=0;

-- update 하는 방법 
SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
UPDATE Employees
SET LastName = 'Sunja' , FirstName = 'Yuhjung'
WHERE EmployeeID = '1'; 

-- 예제1) 1번 고객(Customers Table) 의 
-- 계약자명(ContactName)은 'Alfred Schmidt'
-- 도시(city)는 'Frankfurt' 로 변경 

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = '1';

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico'; -- safe mode 라서 실행되지 않음 

SELECT * FROM Customers WHERE Country = 'Mexico';


SELECT * FROM Products;

UPDATE Products
SET Price = Price + 2; -- 기존 가격의 +2 한 가격으로 다 나타남.
SELECT * FROM Employees;


SELECT 1 = 1; -- true 1
SELECT 1 = 2; -- false 0
SELECT 1 = '1'; -- true 1 


     
