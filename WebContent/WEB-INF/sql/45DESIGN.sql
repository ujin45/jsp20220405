
-- 제 2정규형 (second normal form , 2NF) 책 369쪽
-- 제 1정규형이어야 하고,
-- 부분적 함수 의존이 없다. 
    -- 키가 아닌 열이 합성키의 일부에 종속되는 경우     
-- 인위적인 기본키가 있고 합성키가 없으면 2NF이다.
    
    
    -- 제3정규형 (Third normal form, 3NF)
    -- 제2정규형이어야 하고, 
    -- 이행적 종속이 없다. 
       -- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우 
       
       
CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);

DROP TABLE courses;

CREATE TABLE course (
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255),
    instructor_id INT,
    FOREIGN KEY (instructor_id)  REFERENCES instructor(instructor_id)
);

CREATE TABLE instructor (
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
	instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);





