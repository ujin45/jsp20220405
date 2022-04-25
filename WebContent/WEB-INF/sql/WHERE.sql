use w3schools;

SELECT * FROM Employees;
SELECT FirstName FROM Empolyees;
SELECT CustomerName, Address FROM Customers;
SELECT Address, CustomerName FROM Customers;

-- where : 어떤 Row(RECORD)를 선택할지 결정하는 키워드 
-- 예제1) 나라가 멕시코인 고객들 조회 
SELECT * FROM Customers WHERE Country = 'Mexico';


-- 예제2) 나라가 독일인 고개들 조회
SELECT * FROM Customers WHERE Country = 'Germany';

-- 작은 따옴표 : 문자열값 

-- 예제3) 고객 ID가 1번인 고객조회 
SELECT * FROM Customers WHERE CustomerID = 1;  -- 수형식은 작은 따옴표 안 씀, 근데 써도 됨!
SELECT * FROM Customers WHERE CustomerID = 90;
SELECT * FROM Customers WHERE CustomerID = '1';
SELECT * FROM Customers WHERE Country = Germany; -- 문자형식은 꼭 작은 따옴표 써야함! 

-- 예제4) 1번 고객의 이름 조회 
SELECT CustomerName FROM Customers WHERE CustomerID = 1;

SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 1;
SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 3;

SELECT FirstName, LastName, BirthDate FROM Employees WHERE EmployeeID = 1;

DESC Employees;

SELECT CustomerName, CIty, Country, PostalCode FROM Customers;
SELECT FirstName, LastName, BirthDate FROM Employees;

-- city=' OR '1'='1
SELECT CustomerName, City, Country FROM Customers WHERE City = 'london';





