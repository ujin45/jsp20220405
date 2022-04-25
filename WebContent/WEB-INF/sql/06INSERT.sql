USE w3schools;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (92, 'Donald', 'President', 'New York', 'Seattle', '000000', 'USA');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (93, 'Son', 'Heung-min', 'Tottenum', 'London', '11111', 'UK');

-- 모든 컬럼의 데이터 입력시 컬럼명 생략 가능(그러나 보통은 다 기재함)
INSERT INTO Customers
VALUES (94, 'Cha','Bum', 'BundesLiga', 'Rita Müller', '222222', 'Germany');

-- DESC :테이블 Schem 조회 (DESCRIBE)
DESC Customers;
DESCRIBE Customers;


-- auto_increment 컬럼은 insert 할 때 값 생략 가능
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Oscar', 'Isaac', 'London', 'London', 'B-999', 'UK');

INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES ('USA', 'A112', 'Seattle', 'Hotel', 'RM', 'RM');

SELECT * FROM Employees ORDER BY EmployeeID DESC;
SELECT * FROM Employees;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Jisung', 'Park', '1999-01-01', 'pic1', 'manchester united');

-- 모든 컬럼을 나열하지 않아도 됨
INSERT INTO Employees (LastName, FirtstName, BirthDate, Notes)
VALUES ('Lee', 'sunshin', '1999-01-01','general'); -- 열을 생략하면 null로 남게 됨.

-- Null : 값이 없다
-- insert 시 null 명시 가능
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Harry', 'Kane', '2000-01-01', NULL, 'soccer');	








