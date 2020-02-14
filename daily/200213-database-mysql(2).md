# 200212112 - MySQL symtax
# To Day I Learned..
## Mysql 

### 1. 소수점 올림, 반올림, 버림 함수

#### 올림 ceil
```
select ceil(12.345)
```

#### 반올림 round , 몇번째 까지
```
SELECT round(12.345, 2)
```

#### 버림 trauncate , 몇번째 까지
```
SELECT TRUNCATE(12.345,2 )
```

#### 예제
```
SELECT CODE, (gnp / population) * 1000
FROM country

# 올림
SELECT CODE, CEIL((gnp / population) * 1000)
FROM country

# 반올림
SELECT CODE, round((gnp / population) * 1000,2)
FROM country

# 내림
SELECT CODE,TRUNCATE((gnp / population) * 1000,2)
FROM country
```

### 2. 조건문 

```
# if : if(조건, 참, 거짓)
# 도시의 인구가 100만이상이면 big ciyt, 100 미만 small city
# column : city_scale

SELECT NAME, population
, if(population >= 1000000, 'big city', 'small city')
AS city_scale
FROM city

# ifnull : ifnull(참, 거짓)
# country 테이블에서 독립년도(indepyear)가 없으면 0으로 출력

SELECT NAME, ifnull(indepyear,0)
FROM country

# case
# case 
#   when (조건1) then (출력1)
#   when (조건2) then (출력2)
# end as (컬럼명)
# 나라별10억이상, 1억이상, 1억 이하 조건을 출력

SELECT NAME, population,
case
    when population >100000000 then 'upper 1 bilion'
    when population >10000000 then 'upper 100 milion'
    ELSE 'below 100 milion'
END AS result
FROM country
```

### 3. date_fromat : 날짜 데이터의 포멧을 변경해주는 함수

```
USE skila

# paymont에서 월별 총 매출 출력

SELECT DATE_FORMAT(payment_date,'%Y-%m') AS monthly, 
sum(amount), COUNT(amount)
FROM payment
GROUP BY monthly

# paymont에서 시간별 총 매출 출력

SELECT DATE_FORMAT(payment_date,'%H') AS hourly, 
sum(amount), COUNT(amount)
FROM payment
GROUP BY hourly

# paymont에서 요일별 총 매출 출력

SELECT DATE_FORMAT(payment_date,'%W') AS weekly, 
sum(amount), COUNT(amount)
FROM payment
GROUP BY weekly
```

### 4. join : merge()

```
USE world

# 데이터 생성, 생성후 다시 주석처리

# CREATE TABLE USER(
#    user_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
#    NAME VARCHAR(30) DEFAULT NULL,
#    PRIMARY KEY (user_id)
#    ) engine = INNODB DEFAULT CHARSET =UTF8

# CREATE TABLE addr(
#    id INt(11) UNSIGNED NOT NULL AUTO_INCREMENT,
#    addr VARCHAR(30) DEFAULT NULL,
#    user_id INT(11) DEFAULT NULL,
#    PRIMARY KEY(id)
# ) ENGINE = INNODB DEFAULT CHARSET =UTF8

# INSERT INTO USER(NAME)
# values('jin'),
# ('po'),
# ('alice'),
# ('petter')

# INSERT INTO addr(addr,user_id)
# VALUES('seoul',1),
# ('pusan',2),
# ('deajeon',3),
# ('deagu',5),
# ('seoul', 6)
```

#### merge (inner, left, right, outer)
#### inner join

```
SELECT *
from addr
JOIN USER
ON addr.user_id = USER.user_id # inner join

# select에서 테이블이름.컬럼명 하면 해당만 나온다.
SELECT addr.addr, addr.user_id, USER.name 
from addr
JOIN USER
ON addr.user_id = USER.user_id # inner join

# world 도시이름, 국가이름을 출력
SELECT city.countrycode, city.name, country.name
FROM city
JOIN country
ON city.countrycode = country.code

# letf join
SELECT id, addr.user_id,IFNULL(USER.name, '-')
FROM addr
LEFT JOIN USER
ON addr.user_id = USER.user_id

# right join

SELECT id, addr.addr, USER.user_id, USER.name
FROM addr
right JOIN USER
ON addr.user_id = USER.user_id

# outer join (union : select 문의 결과를 합쳐서 출력)
# 자동으로 중복을 제거

SELECT NAME
FROM USER
union
SELECT addr
FROM addr

# union all로 중복 살려둠
SELECT NAME
FROM USER
UNION all
SELECT addr
FROM addr

# outer join
SELECT USER.name, addr.addr, addr.user_id
FROM USER
LEFT JOIN addr
ON USER.user_id = addr.user_id
union
SELECT USER.name, addr.addr,addr.user_id
FROM USER
right JOIN addr
ON USER.user_id = addr.user_id

# 데이터 중복을 살려보자
SELECT USER.name, addr.addr, addr.user_id
FROM USER
LEFT JOIN addr
ON USER.user_id = addr.user_id
UNION all
SELECT USER.name, addr.addr,addr.user_id
FROM USER
right JOIN addr
ON USER.user_id = addr.user_id
```

### 5 sub-query : 쿼리문 안에 쿼리가 있는 문법

#### select, from, where

```
# select 서브커리
# 전체 나라수, 전체 도시수, 전체 언어수를 출력
USE world
select
(SELECT COUNT(*)
FROM country ) AS total_country,

(SELECT COUNT(*)
FROM city) AS total_city,

(SELECT COUNT(DISTINCT(LANGUAGE))
FROM countrylanguage) AS language

# from 서브커리
# 800만 이상이 되는 도시의 국가코드, 이름, 도시인구수

SELECT *
from
    (SELECT countrycode, NAME, population
    FROM city
    WHERE population >= 8000000) AS city_data
join
    (SELECT CODE, name
    FROM country) AS country
ON city_data.countrycode = country.code

# where 절에 서브커리
# 800만 이상 도시의 국가코드, 국가이름, 대통령이름 출력

SELECT CODE, NAME, HeadOfstate
from country
WHERE code IN (
    SELECT distinct(countrycode)
    FROM city
    WHERE population >= 8000000
)
```

### 6. index : 데이터를 검색할때 빠르게 찾을수 있도록 해주는 기능
```
USE employees

SELECT COUNT(*)
FROM salaries

SELECT COUNT(*)
FROM salaries
WHERE to_date > '2000-01-01'
# 약 0.600초

EXPLAIN # 아리의 쿼리 실행시 실행 어떻게 할지를 보여줌
SELECT COUNT(*)
FROM salaries
WHERE to_date > '2000-01-01'

# to_date라는 컬럼을 index로 만듬
CREATE INDEX tdate
ON salaries (to_date)

EXPLAIN # 아리의 쿼리 실행시 실행 어떻게 할지를 보여줌
SELECT COUNT(*)
FROM salaries
WHERE to_date > '2000-01-01'
# index를 추가하여 속도가 빨라짐. 0.016초

# 인덱스 삭제

DROP INDEX tdate
ON salaries
# index로 인해, 컬럼이 추가되어 데이터용량이 커짐
# 사용하고 지우는게 나을듯
# where절에 사용하는 컬럼을 인덱스로 사용함
```

### 7. view : 특정 쿼리문에 대한 결과를 저장하는 개념

```
# VIEW 생성

USE world

CREATE VIEW code_name AS
SELECT CODE, NAME
FROM country

# 뷰 테이블을 이용하여 join 보여줌

SELECT *
FROM city
JOIN code_name #위의 view
# (select code, name
# from country) as code_name 뷰가 없었으면 주석처리 했어야함

ON city.countrycode = code_name.CODE
```
# Tomorrow I'll Learn..
- mongodb and EDA project start