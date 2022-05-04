CREATE DATABASE mydb3;
USE mydb3;

-- 중복되는 값이 없도록, NULL 로 남지 않도록
-- 정규화(다듬는다) Normal Form 순서대로 만족해야 넘어감.

-- 제1 정규형 (FIrst Normal Form) 1NF
-- 제2 정규형 (Second Normal Form) 2NF
-- 제3 정규형 (Third Normal Form) 3NF

-- 제 1 정규형 
-- 열은 원자적 값(atomic)만을 포함한다. 
-- 같은 데이터가 여러 열에 반복되지 않도록 

-- 이름, 주소 
CREATE TABLE Person1 (
	name VARCHAR(200) PRIMARY KEY,
    address VARCHAR(200)
);
SET autocommit = 1; -- auto commit enble
INSERT INTO Person1 (name, address) VALUES ('A', '서울시 강남구 역삼동 111');

COMMIT;

CREATE TABLE toy (
	toy_id INT PRIMARY KEY,
    toy VARCHAR(255)
);

CREATE TABLE toy_color (
	toy_id INT ,
	color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id),
    PRIMARY KEY (toy_id, color)
    
);

DROP TABLE toy_color;
CREATE TABLE toy_color (
	toy_color_id INT PRIMARY KEY AUTO_INCREMENT,  -- 1,2정규형을 만족함.
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id)
);










