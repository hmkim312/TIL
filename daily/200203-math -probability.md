# 200203-확률의수학적정의_확률의성질_확률분포함수..
# To Day I Learned..

### 6.2 확률의 수학적 정의와 의미
- 확률표본
- 표본공간
- 사건

- 표본공간과 확률표본
	- 확률표본(표본) : 확률적 문제에서 발생할수 있는 하나의 현상
	- 표본공간 : 가능한 모든 표본의 집합, 어떤 표본이 가능하고 어떤 표본이 가능하지 않는가를 정의하는 것

- 사건
	- 표본공간의 부분집합, 전체 표본공간 중에서 우리가 관심을 가지는 일부 표본의 집합
	- ~ 가 나오는 경우에서의 '경우'라는 개념이 사건
- 확률
	- 사건을 입력하면 숫자(확률값이)가 출력되는 함수
	- 모든 각각의 사건(부분집합)에 어떤 숫자를 할당하는 함수
	- 콜모고로프의 정리
		1. 모든 사건에 대해 확률은 실수이고 0 또는 양수이다.
		2. 표본공간(전체집합)이라는 사건에 대한 확률은 1이다.
		3. 공통 원소가 없는 두사건의 합집합의 호가률은 사건별 확률의 합이다.
- 확률은 표본이 아닌 사건을 입력으로 가지는 함수
	- 확률은 표본하나하나에 대해 정의되어있는 숫자가아님!!
	- 확률은 표본이 아닌 사건(부분집합)에 대해서 정의되는것

- 주사위 한면의 확률은 무조건 1/6?
	- 공정하지 않은 주사위의 확률은 다를수 있다.
- 확률의 의미
	- 빈도주의 관점 : 반복적으로 선택된 표본이 사건 A의 원소가 될 경향
	- 베이지안 관점 : 선택된 표본이 특정한 사건에 속한다는 명제에 대한 신뢰도
		- 베이지안 확률론에서 사건이 일어났다 = 그 사건의 원소중에 정말로 선택된 표본이 있다는 사실을 알게 되었다 = 추가정보가 들어있다
	- 검진결과를 보아 암에 걸렸을 확률이 90%이다
		- 빈도 : 같은 증상 100명 중 90명이 암에 걸렸다.
		- 베이지안 : 암에 걸릴 신뢰도가 90%이다

### 6.3 확률의 성질
- 성질
	- 성질1 : 공집합인 사건의 확률인 0이다
	- 성질2 : 어떤 사건의 여집합인 사건의 확률은 (1-원래 사건의 확률)과 같다
	- 성질3 : 두사건의 합집합의 확률은 각 사건의 확률의 합에서 두사건의 교집합의 확률을 뺀것과 같다. 이를 포함-배제의 원리라 한다.
	- 성질4 : 전체 확률의 법칙
		- 서로 교집합이 없다. 이를 서로 베타적이라고도 한다.
		- 모든 집합의 합집합이 전체 집합(표본공간)이다. 이 경우 완전한 부분 집합들이라고 본다
		- 사건 A의 확률은 사건 A와 사건 C가 동시에 발생할 사건들의 확률의 합과 같다.

### 6.4 확률분포함수
- 확률분포
	- 어떤 사건에 어느정도의 확류링 할달되었는지 묘사한 정보
        - 확률질량함수 : 정의역이 유한
        - 누적분포함수 : 정의역이 무한
        - 확률밀도함수 : 정의역이 무한

- 단순사건과 확률질량함수
    - 단순사건 : 표본이 하나인 사건, 단순사건의 합의 확률인 1이다
    - 확률질량함수 : 유한개의 사건이 존재하는 경우 각 단순사건에 대한 확률만 정의하는 함수

- 표본수가 무한한 경우
    - 표본수가 무한하고 모든표본에 대해 표본하나만을 가진 사건의 확률이 동일하다면, 표본하나에 대한 사건의 확률은 언제나 0이다.

- 구간
    - 표본 공간이 실수의 집합이라면 대부분의 사건(부분집합)은 시작점과 끝점이라는 두숫자로 이루어진 구간으로 표현한다.
    - P(a,b) a = 시작점, b = 끝점

- 누적분포함수
    - 시작점을 모두 똑같이 음의 무한대로 통일한 특수구간을 사용하여 숫자 하나로 구간을 표현하는 함수
    - F(b) = F(a) + p(a,b)
    - p(a,b) = F(b) - F(a)
    - 음의 무한대에 대한 누적분포함수값은 0이다
    - 양의 무한대에 대한 누적분포함수값은 1이다
    - 입력이 크면 누적분포함수값은 커진다.(단조증가)
- 확률밀도함수
	- 누적분포함수를 미분하여 구한 도함수
	- 해당구간의 면적이 확률임
	- 면적은 정적분으로 구함
	- 적분함수인 누적분포함수의 기울기가 음수가 될수 없기 때문에 확률밀도함수는 0보다 같거나 크다



# Tomorrow I'll Learn..

- math..: 결합확률_조건부확률_베이즈정리