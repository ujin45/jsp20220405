-- -- 는 한 줄 주석
-- select : 테이블에 있는 데이터 가져오는 명령문 
-- from : 어떤 테이블
-- ; : 명령문 종료
select * from Customers;

-- data :  table의 한 줄 (row, record, entry)

-- 8개 테이블 조회
select * from Categories;
select * from Employees;
select * from OrderDetails;
select * from Orders;
select * from Products;
select * from Shippers;
select * from Suppliers;

-- 특정 속성(attribute, column, field)만 조회
-- select 키워드 다음에 column명 나열 
-- * : 모든 column 나열 
-- 작성된 순서로 조회 결과 나옴 

select * from Customers;
select CustomerName, Address from Customers;

-- Employees 테이블에서 FirstName과 BirthDate만 조회
select FirstName, BirthDate from Employees;
-- Employees 테이블에서 firstName과 lastName을 조회하는데 
-- firstName이 왼쪽에 위치하도록 작성 
select FirstName, LastName from Employees;
select LastName, FirstName from Employees;


-- 대소문자 구분 안 함 (데이터베이스 Vendor, Version 마다 다름 )
select firstname, lastname from Employees;
select FIRSTNAME, LASTNAME from Employees;

-- 작성 관습 : 키워드는 대문자
-- 컬럼명 : lowerCamelCase, snake_case, SNAKE_CASE


















