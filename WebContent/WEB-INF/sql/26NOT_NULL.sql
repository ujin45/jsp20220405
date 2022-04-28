USE mydb1;

-- NOT NULL : null 을 허용하지 않음

CREATE TABLE MyTable9 (
	col1 VARCHAR(100),
    col2 VARCHAR(100) NOT NULL
);

DESC MyTable9;
SELECT * FROM MyTable9;
INSERT INTO MyTable9 (co1, col2) VALUES ('a' , 'b');
INSERT INTO MyTable9 (co1, col2) VALUES (null , 'b');
INSERT INTO MyTable9 (co1, col2) VALUES ('a' , NULL);
