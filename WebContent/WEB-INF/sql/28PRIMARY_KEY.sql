USE mydb1;

CREATE TABLE mytable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);

DESC mytable12;

-- Primary key : not null, unique 조합

CREATE TABLE mytable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);

DESC mytable13;
SELECT * FROM mytable13;
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable13 (col1, col2) VALUES ('a', NULL);




-- auto_increment : 자동으로 값 증가
CREATE TABLE mytable18 (
	col1 INT PRIMARY KEY AUTO_INCREMENT,  -- 1부터 자동으로 1씨기 증가하는 값 입력해줌.
    col2 VARCHAR(10)
);
SELECT * FROM mytable18;
INSERT INTO mytable18 (col2) VALUES ('abcd');

DELETE FROM mytable18 WHERE col1 = 5;




