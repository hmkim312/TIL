# 200131-math-function,optimization, set
# To Day I Learned..

### 4.5 변분법
- 범함수 : 함수를 입력받아 실수를 출력하는 것
- 변분법 : 입력인 함수가 변할때 범함수의 출력이 어떻게 달라지는지 계산하는 학문

## 5장 scipy로 공부하는 최적화
### 5.1 최적화 기초
- 최적화 문제
	- 함수 f의 값을 최대화 혹은 최소화 하는 변수 x값 x*를 찾는 것
	- 해 : x*의 최적화 문제
	- 목적함수 : 최소화하려는 함수 f(x) (비용함수, 손실함수, 오차함수)
- 그리드 서치와 수치적최적화
    - 그리드 서치 : 가능한 x의 값을 여러개 넣어보고 그중 가장 작은 값을 선택하는 방법으로 함수 위치가 최적점이 될 때까지 가능한 한 적은 횟수만큼 x위치를 옮기는 방법
		- 단점 : 모든 트레이닝 데이터 집합에 대해 예측값과 타깃값의 차이를 구해야 함으로 계산량이 큼
	- 수치적 최적화 : 반복적 시행 착오에 의해 최적화 필요조건을 만족하는 값 x*를 찾는 방법
		- 현재위치 <img src = "https://latex.codecogs.com/gif.latex?x_k"/>가 최저점인지 판단하는 알고리즘
		- 어떤위치 <img src ="https://latex.codecogs.com/gif.latex?x_k"/>를 시도한뒤, 다음 번에 시도할 위치 <img src ="https://latex.codecogs.com/gif.latex?x_k_&plus;_1"/>을 찾는 알고리즘
- 기울기 필요조건
    - 독립변수값 x*가 최소점이라면 함수의 기울기와 도함수 <img src = "https://latex.codecogs.com/gif.latex?%5Cdfrac%7Bdf%7D%7Bdx%7D"/>값이 0이어야함
    - 단일 변수에 대한 함수인 경우 미분값이 0이어야 한다
    - 다변수함수인 경우 모든 변수에 대한 편미분값이 0이어야한다
    - <img src = "https://latex.codecogs.com/gif.latex?%5Cnabla%20f%20%3D%200"/>

- 최대 경사법
    - 현재 위치 <img src = "https://latex.codecogs.com/gif.latex?x_k"/>에서의 기울기만을 이용하여 다음 위치 <img src ="https://latex.codecogs.com/gif.latex?x_k_&plus;_1"/>를 결정하는 방법
    - <img src = "https://latex.codecogs.com/gif.latex?x_%7Bk&plus;1%7D%20%3D%20x_%7Bk%7D%20-%20%5Cmu%20%5Cnabla%20f%28x_k%29%20%3D%20x_%7Bk%7D%20-%20%5Cmu%20g%28x_k%29" />
	- 스텝사이즈 : 위치를 옮기는 거리를 결정하는 비례상수 <img src = "https://latex.codecogs.com/gif.latex?%5Cmu"/>
	- 최대 경사법에는 스텝사이즈를 적절히 조정하는 것이 중요함
	- 진동현상 : 그레디언트벡터가 최저점을 가르키지 않고 있을때 발생하는 현상
    	- 헤시안 행렬과 모멘텀 방법을 사용하여 삭제

- 2차 도함수를 사용한 뉴턴방법
	- 목적 함수가 2차 함수라는 가정하에 한 번에 최저점을 찾으며, 그레디언트 벡터에 헤시안 행렬을 곱해서 방향과 거리가 변형된 그레디언트 벡터를 사용
	- <img src ="https://latex.codecogs.com/gif.latex?%7Bx%7D_%7Bn&plus;1%7D%20%3D%20%7Bx%7D_n%20-%20%5B%7BH%7Df%28%7Bx%7D_n%29%5D%5E%7B-1%7D%20%5Cnabla%20f%28%7Bx%7D_n%29" />
	- 장점 : 스텝사이즈가 필요없으며 목적함수가 실제로 2차 함수와 비슷한 모양이면 빠르게 수렴이 가능함
	- 단점 : 1차 도함수(그레디언트벡터)뿐 아니라 2차 도함수(헤시안행렬)도 필요함
- 사이파이를 이용한 최적화
    - scipy의 optimize 서브패키지 minimize()를 사용
    - result = minimize(func, x0, jac = jac)
        - func : 목적 함수
        - x0 : 초깃값 벡터
        - jac : (옵션) 그레디언트 벡터를 출력하는 함수
            - 계산량을 줄이려면 직접 그레디언트 벡터값을 반환하는 함수를 만듬
    - minimize 명령의 결과
        - x : 최적화 해
        - success : 최적화에 성공하면 True 반환
        - status : 종료상태, 최적화에 성공하면 0 
        - message : 메세지 문자열
        - fun : x 위치에서 함수의 값
        - jac : x 위치에서 자코비안(그레디언트) 벡터의 값
        - hess_inv : x 위치에서 헤시안 행렬의 역행렬 값
        - nfev : 목적함수 호출 횟수
        - njev : 자코비안 계산 횟수
        - nhev : 헤시안 계산 횟수
        - nit : 이동 횟수
- 전역 최적화 문제
    - 최적화 하려는 함수가 복수의 국소 최저점을 가지고 있는 경우에는 수치적 최적화 방법으로 전역 최저점에 도달한다는 보장이 없음
- 컨벤스 문제
    - 목적함수의 2차 도함수의 값이 항상 0 이상이되는 영역에서만 정의된 최적화 문제

### 5.2 제한조건이 있는 최적화 문제
- 등식 제한조건이 있는 최적화 문제
    - 여러 제한조건이 있는 최적화 문제중 연립방정식 제한조건이 있는 경우
- 라그랑주 승수법
    - 원래의 목적함수 f(x)대신에 제한조건 등식에 <img src ="https://latex.codecogs.com/gif.latex?%5Clambda"/>라는 새로운 변수를 곱해서 더한 함수를 목적함수로 간주하여 최적화
    - <img src = "https://latex.codecogs.com/gif.latex?h%28x%2C%20%5Clambda%29%20%26%3D%20h%28x_1%2C%20x_2%2C%20%5Cldots%20%2C%20x_N%2C%20%5Clambda_1%2C%20%5Cldots%20%2C%20%5Clambda_M%29%20%5C%5C%20%26%3D%20f%28x%29%20&plus;%20%5Csum_%7Bj%3D1%7D%5EM%20%5Clambda_j%20g_j%28x%29"/>
- 사이파이를 사용하여 등식 제한조건이 있는 최적화 문제 계산하기
    - scipy의 optimize 서브패키지의 fmin_slsqp()명령어로 계산
      - 항상 eqcons 인수를 명시 해야함

- 라그랑주 승수의 의미
	- 만일 최적화 문제에서 등식 제한 조건 <img src ="https://latex.codecogs.com/gif.latex?g_i"/>이 있는 가없는가에 따라 해의 값이 달라진다면 이 등식 제한조건에 대응하는 라그랑주 승수는 0이 아닌 값이어야 한다.

- 부등식 제한조건이 있는 최적화 문제
    - <img src = "https://latex.codecogs.com/gif.latex?h%28x%2C%20%5Clambda%29%20%3D%20f%28x%29%20&plus;%20%5Csum_%7Bj%3D1%7D%5EM%20%5Clambda_j%20g_j%28x%29"/>
    - KKT (karush-kuhn-tucker) 조건 : 최적화 해의 필요조건
      - 모든 독립변수에 대한 미분값이 0이다
      - 모든 라그랑주 승수와 제한조건 부등식의 곲이 0이다
      - 라그랑주 승수는 음수가 아니여야 한다.
- scipy를 사용하여 부등식 제한조건이 있는 최적화 문제 계산하기
    - fmin_slsqp()를 사용하며 ieqcons 인수조건을 넣어준다

### 5.3 선형계획법 문제와 이차계획법 문제
- 선형계획법 문제
    - 방정식이나 부등식 제한 조건을 가지는 선형모형의 값을 최소화 하는 문제
    - 목적함수는 <img src = "https://latex.codecogs.com/gif.latex?%5Carg%5Cmin_x%20c%5ETx"/> 이다
- scipy를 이용한 선형계획법 문제 계산
    - scipy의 optimize 패키지의 linprog() 명령을 사용
      - linprog(c, A, b)
      - c : 목적 함수의 계수 벡터
      - A : 등식 제한조건의 계수 행렬
      - b : 등식 제한조건의 상수 벡터
- CVXPY를 이용한 선형계획법 문제 계산
  - linprog와 달리 계수행렬 a b c를 직접 정의하지 않고, 심볼로 정의하여 사용
  - 다만 변수나 조건의 수가 많다면 속도가 느림

- 이차계획법 문제
    - 방정식이나 부등식 제한 조건을 가지는 일반화된 이차형식의 값을 최소화하는 문제
    - 목적 함수는 <img src = "https://latex.codecogs.com/gif.latex?%5Cdfrac%7B1%7D%7B2%7Dx%5ETQx%20&plus;%20c%5ETx"/> 이다
- CVXOTP를 이용한 이차계획법 문제 계산
    - CVXOPT를 이용허여 이차계획법 문제를 풀수 있다.
    - ndarray 배열을 matrix 자료형으로 바꿔야하여, 정수대신 실수를 사용하여야한다

## pgmpy로 공부하는 확률론
### 6.1 집합
- 집합과 원소
  	- 집합(set) : 구별 가능한 객체의 모임
  	- 원소(element) : 집합에 포함된 구별 가능한 객체
  	- set : 내용을 변경할 수 있는 뮤터블 자료형
  	- frozenset : 내용을 변경할 수 없는 임뮤터블 자료형

- 합집합과 교집합
    - 합집합 : 각 집합의 원소를 모두 포함하는 집합
    - 교집합 : 두 집합 모두에 속하는 원소로만 이루어진 집합
    - uninon : 합집합을 만드는 파이썬 메서드 (|)
    - intersection : 교집합을 만드는 파이썬 메서드(&)

- 전체집합, 부분집합, 진부분집합
    - 부분집합 : 어떤 집합의 원소 중 일부만을 포함하는 집합
    - 전체집합 : 원래의 집합
    - 진부분집합 : 원소의 크기가 더 작은 부분집합

- 차집합과 여집합
    - 차집합 : 어떤 집합 A에 속하면서 다른 집합 B에는 속하지 않는 원소로 이루어진 A의 부분집합을 A에서 B를 뺀 차집합이라 함
    - 여집합 : 전체 집합중에서 부분집합에 속하지 않은 원소로만 이루어진 부분집합

- 공집합
    - 아무 원소도 포함하지 않는 집합
    - 모든 집합의 부분집합이 됨

- 부분집합의 수
    - N개의 원소를 가진 집합의 부분집합의 수는 <img src ="https://latex.codecogs.com/gif.latex?2%5EN"/>개

- 합집합과 교집합의 분배 법칙
    - 곱셈과 덧셈의 분배 법칙처럼 교집합과 합집합도 괄호를 풀어내는 분배법칙이 성립함

  
# Tomorrow I'll Learn..

- math..: 확률의수학적정의_확률의성질_확률분포함수..
