# Server - Database - Table

# 1. Create 
# 1 -1  데이터베이스

SHOW DATABASES; # 현재데이터 베이스 확인

# 생성
create DATABASE test;

# 선택
USER1

# 현재 확인
SELECT DATABASE()

# 2. Table
CREATE TABLE USER1(
	user_id INT,
	NAME VARCHAR(20),
	email VARCHAR(30),
	age INT(3),
	rdate date
)


CREATE TABLE USER2(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	email VARCHAR(30) UNIQUE NOT NULL,
	age INT(3) DEFAULT '30',
	rdate timestamp
)


# 2 수정 Alter

# 2-1 데이터베이스
SHOW VARIABLES LIKE "character_set_database"
ALTER DATABASE test CHARACTER SET = UTF8
 
 # 2-2 테이블
 
 ALTER TABLE USER2 ADD tmp text
 ALTER TABLE USER2 MODIFY COLUMN tmp INT(3)
 ALTER TABLE USER2 DROP tmp
 
 # 3. 삭제 (Drop)
 # 3-1 데이터 베이스 삭세
 CREATE DATABASE tmp # 데이터베이스 생성
 DROP DATABASE tmp
 SHOW databases
 
 # 3-2 테이블 삭제
 DROP TABLE USER3
 SELECT DATABASE()
 
 # 4. Insert 
 INSERT INTO USER1(user_id, NAME, email, age, rdate)
 VALUE(1,'jin', 'jin@gmail.com',32,NOW()),
 (2,'jo', 'jo@daum.net',33,NOW()),
 (3,'peter', 'peter@naver.com',36,NOW()),
 (4,'min', 'min@compas.com',40,NOW()),
 (5,'po', 'po@himail.com',19,NOW()),
 (6,'andy', 'andy@goodmail.com',20,NOW())
 
 # 5. SELSECT : 데이터 조회
 
 SELECT user_id, NAME, age
 FROM USER1
 
 SELECT *
 FROM USER1
 
 SELECT user_id AS "아이디", NAME AS "이름", age AS "나이"
 FROM USER1
 
 # 중복제거
 
 SELECT DISTINCT(NAME)
 FROM USER1
 
 # where 조건검색
 SELECT *
 FROM USER1
 WHERE age>=30
 
 SELECT *
 FROM USER1
 WHERE age =32
 
 SELECT *
 FROM USER1
 WHERE age !=40
 
 SELECT DISTINCT(NAME)
 FROM USER1
 WHERE age >= 30 
 
 # 30세 이상인 사람명수 출력
 SELECT count(DISTINCT(NAME))
 FROM USER1
 WHERE age >= 30 
 
 # 20세 이상 40세 미만
 SELECT *
 FROM USER1
 WHERE age >= 20 and age < 40
 
 # BETWEEN A AND B (범위 선택)
 SELECT *
 FROM USER1
 where age BETWEEN 20 AND 39
 
 # ODER BY 정렬 ASC = 오름차순, DESC = 내림차순 
 
 # 오름차순
 SELECT *
 FROM USER1
 ORDER BY age ASC
 
 # 내림차순
 SELECT *
 FROM USER1
 ORDER BY age DESC
 
 SELECT *
 FROM USER1
 ORDER BY NAME, age DESC 
 
 # 나이가 20세에서 40세 사이에 있는 사용자를 이름순으로 내림정렬하고
 # 중복데이터를 제거해서 이름만 출력
 
 SELECT DISTINCT(NAME)
 FROM USER1
 WHERE age BETWEEN 20 AND 39
 ORDER BY NAME desc
 
 # concat (데이터 합치기)
 
 SELECT NAME, age, CONCAT (NAME, age) AS 'name_age'
 FROM USER1
 
 # 괄호넣기
 SELECT NAME, age, CONCAT (NAME,'(', age,')') AS 'name_age'
 FROM USER1
 
 # like : where 절에서 특정 문자열이 들어간 데이터 조회
 # %앞에 문자나 숫자가있다는것을 의미
 
 SELECT *
 FROM USER1
 WHERE email LIKE "%daum.%"
 
 
 SELECT *
 FROM USER1
 WHERE email LIKE 'p%'
 
 # 없는것 not like
 
 SELECT *
 FROM USER1
 WHERE email not LIKE "%gmail.%"
 
 # in : 여러개 조건을 조괴할때 사용
 
 SELECT *
 FROM USER1
 WHERE NAME='andy' or NAME='peter' or NAME='po'
 
 SELECT *
 FROM USER1
 # WHERE NAME='andy' or NAME='peter' or NAME='po'
 WHERE NAME IN ('andy','peter','po')
 
 # 서브커리 응용
 
 SELECT *
 FROM USER1
 where NAME IN (
 	SELECT DISTINCT(NAME)
 	FROM USER1
 	WHERE age > 30
 )
 
 # LIMIT (출력갯수제한)
 
 SELECT *
 FROM USER1
 LIMIT 3
 
 
 # 3번재부터 밑으로 5개
 SELECT *
 FROM USER1
 LIMIT 3, 5
 
 # 6. UPDATE (수정)
 
 UPDATE USER1
 SET age=20, rdate='2019-12-12'
 WHERE age BETWEEN 20 AND 29 
 
 # update를 하기전에 실수를 방지하기위해 select로 확인
 
 SELECT *
 FROM USER1
 # SET age=20, rdate='2019-12-12'
 WHERE age BETWEEN 20 AND 29 
 
 # 7. delete
 
 DELETE FROM USER1 
 WHERE rdate >'2020-11-01'
 
 SELECT *
 FROM USER1