USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04에 주분한 고객의 이름	
SELECT  o.OrderDate, c.CustomerName, o.EmployeeID
FROM Orders o JOIN Customers c ON c.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 고객의 이름과, 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
                         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';                         

-- 1996-07-04에 주문을 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers 
SELECT o.OrderDate, s.ShipperName, s.ShipperName
FROM Orders o JOIN Shippers s ON s.ShipperID = s.ShipperID
                         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04'; 

-- 1996-07-04에 주문한 고객과, 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers , Customers
SELECT o.OrderDate,  c.CustomerName,  e.LastName, s.ShipperName
FROM Orders o  JOIN Customers c ON o.CustomerID = c.CustomerID
                         JOIN Employees e ON o.EmployeeID = e.EmployeeID
                         JOIN Shippers s ON s.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-08'; 

-- 1996-07-04에 주문한 상품명(들)
-- OrderDetails, Orders, Products
SELECT o.OrderDate, p.ProductName, d.Quantity, p.Price, (d.Quantity * p.Price) total
FROM OrderDetails d  JOIN Orders o ON d.OrderID = o.OrderID
								 JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-08'; 


-- 1996-07-08 에 각 고객의 주문 총액
-- Orders, OrderDetails, Products, Customers
SELECT * FROM Orders WHERE OrderDate = '1996-07-08';

SELECT o.OrderDate, c.CustomerName, SUM(p.Price * d.Quantity) '총계'
FROM Orders o  JOIN OrderDetails d ON d.OrderID = d.OrderID
						 JOIN Products p ON d.ProductID = p.ProductID
					     JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID
; 


-- 1996년 가장 많은 주문을 받은 직원
-- 1996년 직원별 처리한 주문 총 금액을 조회(금액이 높은 -> 낮은 순으로) 
-- Employees, Orders, OrdersDetails, Products
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31';
SELECT COUNT(*) FROM Orders;

SELECT  concat(e.FirstName, e.LastName) Name, SUM(p.Price * d.Quantity) total
FROM  Employees e  JOIN Orders o ON e.EmployeeID = o.EmployeeID
						   JOIN OrderDetails d ON d.OrderID = o.OrderID
                           JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY e. EmployeeID
ORDER BY 2 DESC
;                           


-- 가장 많은 수량이 팔린 카테고리 (높은 -> 낮은)
-- 카테고리별 판매수량 전체기간
-- Categories, OrderDetails, Products
SELECT  c.CategoryID, c.CategoryName,  SUM(d.Quantity) total
FROM Categories c  JOIN Products p ON c.CategoryID = p.CategoryID
							  JOIN OrderDetails d ON p.ProductID = d.ProductID
							  
GROUP BY c.CategoryID
ORDER BY total DESC
;                               
								
-- '1996년 7월'
SELECT  o.OrderDate, c.CategoryID, c.CategoryName,  SUM(d.Quantity) total
FROM Categories c  JOIN Products p ON c.CategoryID = p.CategoryID
							  JOIN OrderDetails d ON p.ProductID = d.ProductID
                              JOIN Orders o ON d.OrderID = o.OrderID
WHERE o.OrderDate BETWEEN'1996-08-01' AND '1996-08-07' 					  
GROUP BY c.CategoryID
ORDER BY total DESC
;   

                           
SELECT  c.CategoryID, c.CategoryName, SUM(IFNULL(d.Quantity, 0)) total
FROM Orders o  JOIN OrderDetails d ON d.OrderID = o.OrderID
                                                             AND o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07'
				          JOIN Products p ON p.ProductID = d.ProductID
                          RIGHT JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID
ORDER BY total DESC
; 







