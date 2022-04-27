USE w3schools;

SELECT LastName FROM Employees;
SELECT FirstName FROM Employees;

SELECT LastName FROM Employees
UNION
SELECT FirstName FROM Employees; -- 여러 조회를 합칠때 (합집합)

-- 1.여러 셀렉트의 컬럼 수가 같아야 함. 
-- 2. 각 컬럼의 데이타 타입이 유사해야 함.
-- 3. 컬럼이 같은 순서이어야 함. 

SELECT LastName, FirstName FROM Employees
UNION
SELECT CustomerName FROM Customers; -- 컬럼 수가 달라서 안 됨.ALTER

SELECT LastName, BirthDate FROM Employees
UNION
SELECT CustomerName, Country FROM Customers; -- OK

SELECT EmployeeID, LastName FROM Employees
UNION
SELECT ProductName, Price FROM Products; -- OK

-- union : 합집합( 중복이 없음)
-- union all : 중복 포함 
SELECT LastName FROM Employees
UNION ALL
SELECT FirstName FROM Employees;

-- 여러 2개 이상의 조회 결과를 합칠 수 있음.
SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
UNION
SELECT City FROM Customers
UNION
SELECT LastName FROM Employees;


SELECT LastName, FirstName, 'samsung' AS company FROM Employees;







