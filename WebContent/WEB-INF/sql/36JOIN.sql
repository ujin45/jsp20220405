USE mydb2;

-- 게시물별 댓글 수 조회(단, 댓글이 없는 게시물은 나오지 않음)
SELECT * FROM Reply;

SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) 
FROM Board b JOIN Reply r  ON b.id = r.board_id
GROUP BY b.id
ORDER BY 1
;

SELECT b.*, COUNT(r.id) 
FROM Board b JOIN Reply r  ON b.id = r.board_id
GROUP BY b.id
ORDER BY 1
;

-- INNER JOIN
SELECT * FROM Board b INNER JOIN Reply r ON b.id = r.Board_id;
SELECT * FROM Reply r INNER JOIN Board b ON b.id = r.Board_id;
-- LEFT OUTER JOIN ( INNER JOIN + 나머지 다 )
SELECT * FROM Board b LEFT OUTER JOIN Reply r ON b.id = r.Board_id;

-- RIGHT OUTER JOIN (현재 없어서 이너조인과 같은 결과)
SELECT * FROM Board b RIGHT OUTER JOIN Reply r ON b.id = r.Board_id;
SELECT * FROM Reply r RIGHT OUTER JOIN Board b ON b.id = r.Board_id;

SELECT * FROM Board b RIGHT JOIN Reply r ON b.id = r.Board_id;
SELECT * FROM Reply r RIGHT  JOIN Board b ON b.id = r.Board_id;

-- 댓글이 없는 게시물 조회
SELECT * FROM Board b 
LEFT JOIN Reply r 
ON b.id = r.Board_id
WHERE r.id IS NULL
;


-- 전체 게시물 조회 with 댓글 수 같이 조회
SELECT b.*, COUNT(r.id) NumOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;







