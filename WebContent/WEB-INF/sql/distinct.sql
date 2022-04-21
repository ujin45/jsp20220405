use w3schools;
select * from Customers;
select Country from Customers;

-- 중복 제거 : distinct  () 생략가능
select distinct(country) from Customers;
select distinct country from Customers;

-- suppliers 테이블에서 중복없이 country 컬럼 조회
select distinct country from Suppliers;

SELECT city FROM Customers;