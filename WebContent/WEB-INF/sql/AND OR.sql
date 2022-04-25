USE w3schools;

SELECT *FROM Customers;
SELECT * FROM Customers WHERE Country = 'Brazil';
-- AND : 다 만족해야 True
SELECT * FROM Customers WHERE Country = 'Brazil' AND City = 'Rio de Janeiro' ;
-- OR : 하나라도 만족하면 True
SELECT * FROM Customers WHERE Country = 'Germany' OR City = 'London';

SELECT * FROM Customers WHERE NOT Country = 'Germany';

-- 나라명 ' OR '1' = ' 1
SELECT * FROM Customers WHERE 1 = 1;
SELECT * FROM Customers WHERE Country = ' ' OR '1' = '1' ;



