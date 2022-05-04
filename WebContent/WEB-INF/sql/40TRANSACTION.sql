USE mydb1;

-- transaction : 묶어서 하나의 업무( 모두 성공 또는 실패) 

-- 은행의 송금 (2개의 묶음이 transaction : 모두 성공하거나 실패하거나)
-- 1. A고객의 계좌의 출금
-- 2. B고객의 계좌의 입금
 
-- COMMIT ; DB에 반영 하라는 명령어
-- ROLLBACK : 이전으로 되돌리는 명령어


SELECT * FROM Customers WHERE CustomerID = 1;
ALTER TABLE Customers MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;
UPDATE Customers
SET CustomerName = 'SON'
WHERE CustomerID = 1;

DESC Customers;
ROLLBACK;

-- disable auto commit;
SET autocommit = 0;
UPDATE Customers
SET CustomerName = 'CHA'
WHERE CustomerID = 1;

ROLLBACK;


-- auto commit 
UPDATE Customers
SET CustomerName = 'PARK'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

COMMIT;
ROLLBACK;  -- commit 하면 이전으로 돌아가지 않고 계속 commit 한 상태로 남아있음





