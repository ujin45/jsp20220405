USE mydb1;

-- UNIQUE : 해당 컬럼의 값이 중복되면 안 됨.

CREATE TABLE mytable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC mytable10;
SELECT * FROM mytable10;
INSERT INTO mytable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'e');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'e'); -- uique 는 중복 되었던 값을 넣을 수 없음
INSERT INTO mytable10 (col1, col2) VALUES ('c', NULL);
INSERT INTO mytable10 (col1, col2) VALUES ('d', NULL); -- 중복된 개념이 아니라 null은 값이 없다의 표현 


-- UNIQUE, NOT NULL 조합
CREATE TABLE mytable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC mytable11;

