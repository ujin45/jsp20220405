-- JOIN 

USE mydb2;

SELECT * FROM Board; -- 4개의 컬럼 열, 8개의 행
SELECT * FROM Reply; --  4개의 컬럼 열, 2개 행

SELECT * FROM Board, Reply; -- 결합(Cartesian Product) : 8개 열(4+4), 16개 행 (8*2)
                                               -- 각 게시물 당 2번씩 반복됨. 그래서 16개 나옴.
SELECT * FROM Reply, Board; -- 순서대로 명시됨. 
SELECT * FROM Board JOIN Reply; -- Cartesian Product 
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN(교집합 : 주로 사용)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN 





