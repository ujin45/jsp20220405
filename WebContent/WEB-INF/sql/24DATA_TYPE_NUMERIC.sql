USE mydb1;

CREATE TABLE MyTable6 (
	col1 int,
    col2 int(3)
);

SELECT * FROM MyTable6; 

INSERT INTO MyTable6 (col1) VALUES (12345678923455);  -- 최대, 최소값 사이만 가능
INSERT INTO MyTable6 (col1) VALUES (3333);
INSERT INTO MyTable6 (col2) VALUES (123);
INSERT INTO MyTable6 (col2) VALUES (1234);
INSERT INTO MyTable6 (col1) VALUES (3.14);


--  DEC (size, d) : 소수가 있는 수 
-- size : 총길이, d: 소수점 이하수의 길이

CREATE TABLE MyTable7 (
	col1 DEC(3, 2),
    col2 DEC(5, 1)
);

SELECT * FROM  MyTable7;

INSERT INTO MyTable7 (col1) VALUES (3.14);
INSERT INTO MyTable7 (col1) VALUES (13.14);
INSERT INTO MyTable7 (col1) VALUES (3.145);
INSERT INTO MyTable7 (col2) VALUES (1234.5);
INSERT INTO MyTable7 (col2) VALUES (1234.522);
INSERT INTO MyTable7 (col2) VALUES (12345.5678);





