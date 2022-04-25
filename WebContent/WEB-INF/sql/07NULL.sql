USE w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Employees WHERE Photo = 'pic';
-- 조회시 IS NULL
SELECT * FROM Employees WHERE Photo IS NULL;
SELECT * FROM Employees WHERE Photo IS NOT NULL;

-- 그룹합수에서 보통 제외됨
SELECT COUNT(*) FROM Employees; -- 레코드 수
SELECT COUNT(LastName) FROM Employees;
SELECT COUNT(Photo) FROM Employees;






