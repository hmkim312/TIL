# group by
 # city 테이블에서 나라별 도시의 갯수를 출력
 
 SELECT Countrycode, COUNT(Countrycode) AS count
 FROM city
 GROUP BY countrycode
 
 # countrylanguage 테이블에서 전체 언어의 USER1갯수를 출력
 
 SELECT count(distinct(LANGUAGE))
 FROM countrylanguage
 
 # 대륙별 인구수와 GNP의 최대값을 출력
 
 SELECT continent, max(population), max(GNP)
 FROM country
 GROUP BY continent

# 대륙별 인구수와 GNP의 합계값을 출력
  
 SELECT continent, sum(population), sum(GNP),
 SUM(gnp) / sum(population)
 FROM country
 GROUP BY continent

# 대륙별 전체인구를 구하고 5억 이상인 대륙만 출력
# Having : group by가 실행되고 난 결과에 조건을 추가
# where 은 group by위에 있어야함 

SELECT continent, SUM(population) AS data
FROM country
GROUP BY continent
HAVING DATA > 500000000