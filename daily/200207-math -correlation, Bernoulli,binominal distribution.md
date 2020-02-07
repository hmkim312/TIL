# 200206 - 독립과상관_공분산과상관계수_베루누이분포와이항분
# To Day I Learned..

- 독립과 상관
  - 상관 : 표본값이 달라지면 다른 확률변수의 조건부 분포가 달라지는것
  - 독립 : 두 확률변수가 상관관계가 아닐때
  - 두 확률변수 *X*,*Y*의 결합확률밀도함수가 주변확률밀도함수의 곱과 강으면 서로 독립
  -   - <img src ="https://latex.codecogs.com/gif.latex?p_%7BXY%7D%28x%2C%20y%29%20%3D%20p_X%28x%29p_Y%28y%29"/>

- 반복 시행
  - 같은 확률변수에서 복수의 표본 데이터를 취하는 경우에는 이 표본들은 서로 독립인 확률변수들에서 나온 표본
  - <img src = "https://latex.codecogs.com/gif.latex?p%28x_1%2C%20x_2%2C%20x_3%2C%20%5Ccdots%2C%20x_N%20%29%20%3D%20%5Cprod_%7Bi%3D1%7D%5EN%20p%28x_i%29"/>

- 조건부 확률분포
  - 독립인 두 확률변수 *X*,*Y*의 조건부확률밀도함수는 주변확률밀도함수와 같다.
    - <img src = "https://latex.codecogs.com/gif.latex?%5C%5Cp_%7BX%20%5Cmid%20Y%7D%20%28x%20%7C%20y%29%20%3D%20%5Cdfrac%7Bp_%7BXY%7D%28x%2C%20y%29%7D%7Bp_%7BY%7D%28y%29%7D%20%3D%20%5Cdfrac%7Bp_%7BX%7D%28x%29%20p_%7BY%7D%28y%29%7D%7Bp_%7BY%7D%28y%29%7D%20%3D%20p_%7BX%7D%28x%29%20%5C%5Cp_%7BY%20%5Cmid%20X%7D%20%28y%20%7C%20x%29%20%3D%20%5Cdfrac%7Bp_%7BXY%7D%28x%2C%20y%29%7D%7Bp_%7BX%7D%28x%29%7D%20%3D%20%5Cdfrac%7Bp_%7BX%7D%28x%29%20p_%7BY%7D%28y%29%7D%7Bp_%7BX%7D%28x%29%7D%20%3D%20p_%7BY%7D%28y%29"/>

- 독립 확률변수의 기댓값
  - 독립인 두 확률변수 *X*,*Y*의 기댓값은 다음 성질을 만족한다.
    - <img src ="https://latex.codecogs.com/gif.latex?%5C%5C%5Ctext%7BE%7D%5BXY%5D%20%3D%20%5Ctext%7BE%7D%5BX%5D%5Ctext%7BE%7D%5BY%5D%20%5C%5C%5Ctext%7BE%7D%5B%28X%20-%20%5Cmu_X%29%28Y-%5Cmu_Y%29%5D%20%3D%200"/>

- 독립 확률변수의 분산
  - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BVar%7D%5BX&plus;Y%5D%20%3D%20%5Ctext%7BVar%7D%5BX%5D%20&plus;%20%5Ctext%7BVar%7D%5BY%5D"/>
  
### 7.5 공분산과 상관계수
  - 다변수 확률변수 간의 상관관계를 숫자로 나타낸것이 **공분산**, **상관계수**

- 표본공분산
  - 자료가 평균값으로부터 얼마나 떨어져 있는지를 나타냄
  - <img src ="https://latex.codecogs.com/gif.latex?s_%7Bxy%7D%20%3D%20%5Cdfrac%7B1%7D%7BN%7D%5Csum_%7Bi%3D1%7D%5E%7BN%7D%20%28x_i-%5Cbar%7Bx%7D%29%28y_i-%5Cbar%7By%7D%29"/>
  - 공분산의 부호는 *X*,*Y* 데이터가 같은 부호를 가지는지 다른 부호를 가지는지에 대한 지표

- 표본상관계수
  - 표본상관계수는 다음과 같이 공분산을 각각의 표본표준편차값으로 나누어 정규화 한다.
  - <img src ="https://latex.codecogs.com/gif.latex?r_%7Bxy%7D%20%3D%20%5Cdfrac%7Bs_%7Bxy%7D%7D%7B%5Csqrt%7Bs%5E2_%7Bx%7D%20%5Ccdot%20s%5E2_%7By%7D%7D%7D"/>
  
- 확률변수의 공분산과 상관계수
  - 두 확률변수 *X*와 *Y*의 공분산

    - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BCov%7D%5BX%2C%20Y%5D%20%3D%20%5Ctext%7BE%7D%5B%28X%20-%20%5Ctext%7BE%7D%5BX%5D%29%28Y%20-%20%5Ctext%7BE%7D%5BY%5D%29%5D"/>
  - 두 확률변수 *X*와 *Y*의 상관계수
    - <img src ="https://latex.codecogs.com/gif.latex?%5Crho%5BX%2CY%5D%20%3D%20%5Cdfrac%7B%5Ctext%7BCov%7D%5BX%2C%20Y%5D%7D%7B%5Csqrt%7B%5Ctext%7BVar%7D%5BX%5D%20%5Ccdot%20%5Ctext%7BVar%7D%5BY%5D%7D%7D"/>
  - 상관계수의 성질
    - <img src ="https://latex.codecogs.com/gif.latex?%5C%5C-1%20%5Cleq%20%5Crho%20%5Cleq%201"/>
    - <img src ="https://latex.codecogs.com/gif.latex?%5Crho%20%3D%201"/> : 완전 선형 상관관계
    - <img src ="https://latex.codecogs.com/gif.latex?%5Crho%20%3D%200"/> : 무상관(독립과는 다름)
    - <img src ="https://latex.codecogs.com/gif.latex?%5Crho%20%3D%20-1"/> : 완전선형 반상관관계
    - 상관계수는 스캐터플롯의 기울기와는 아무런 상관이 없다.

- 비선형 상관관계
  - 피어슨 상관계수는 두 확률변수의 관계가 선형관계일때만 제대로 된 계산값이 나옴

- 앤스콤 데이터
  - 피어슨 상관계수는 아웃라이어에 영향을 많이 받는다.
  
- 다변수 확률변수의 표본공분산
  - 특징행렬의 모든 조합에 대해 공분산을 한꺼번에 표기하기 위해 표본공분산행렬을 정의
  - 표본공분산행렬
  - 대각성분 : 각각 확률변수의 분산
  - 비대각성분 : 서로 다른 확률변수의 공분산
- <img src ="https://latex.codecogs.com/gif.latex?S%20%3D%20%5Cdfrac%7B1%7D%7BN%7D%5Csum_%7Bi%3D1%7D%5EN%20%28x_i-%5Cbar%7Bx%7D%29%28x_i-%5Cbar%7Bx%7D%29%5ET"/>

- 다변수 확률변수의 공분산
  - <img src ="https://latex.codecogs.com/gif.latex?X%20%3D%20%5Cbegin%7Bbmatrix%7D%20X_1%20%5C%5C%20X_2%20%5C%5C%20%5Cvdots%20%5C%5C%20X_M%20%5Cend%7Bbmatrix%7D"/>
  - <img src = "https://latex.codecogs.com/gif.latex?%5CSigma%20%3D%20%5Ctext%7BCov%7D%5BX%5D%20%26%3D%20%5Ctext%7BE%7D%20%5Cleft%5B%20%28X%20-%20%5Ctext%7BE%7D%5BX%5D%29%28X%20-%20%5Ctext%7BE%7D%5BX%5D%29%5ET%20%5Cright%5D%20%5C%5C"/>

### 7.6 조건부기댓값과 예측 문제
- 확률변수 *Y*의 기댓값을 구할때 조건부 밀도함수<img src = "https://latex.codecogs.com/gif.latex?p_%7BY%5Cvert%20X%7D%28y%7Cx%29"/>를 이용하여 가중치를 계산하면 **조건부기댓값** 혹은 **조건부평균**이 된다.
- <img src="https://latex.codecogs.com/gif.latex?%5Ctext%7BE%7D%5BY%20%5Cvert%20X%5D%20%3D%20%5Cint%20y%20%5C%2C%20p%28y%7Cx%29%20dy"/>
- 조건부 기댓값은 조건이 되는 확률변수의 값에 따라서 값이 달라지는 확률변수
- <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BE%7D%5BY%20%5Cvert%20x%5D%20%3D%20f%28x%29"/>

- 예측 문제
  - 예측 : 두 확률변수가 *X*,*Y*에서 *X*값을 알고 있을때 *Y*값을 알아내는 것
  - 회귀분석 : 연속확률변수일때의 예측
  - 분류 : 이산확률변수일때의 예측
  - <img src ='https://latex.codecogs.com/gif.latex?x%5Cx%5Crightarrow%5Chat%7By%7D%20%3D%20E%5By%7Cx%5D%20%3D%20f%28x%29'/>

- 조건부 기댓값의 성질
  - 조건부기댓값 E[Y|X]가 *X*의 함수, 즉 변환이므로 조건부기댓값 E[Y|X]도 확률변수다.
  - 만약 확률변수 *Y*가 확룰변수 *X*값을 독립변수로 하는 결정론적 함숫값이라면
  - <img src = "https://latex.codecogs.com/gif.latex?Y%20%3D%20g%28X%29"/>
  - 사용자가 *X*값을 어떤 값 *x*로 정하는 순간 *Y*값도 결정되어 버리기 때문에<img src = "https://latex.codecogs.com/gif.latex?Y%20%3D%20g%28X%29"/>는 더는 확률 적인 값이 아니라 상수다.
  - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BE%7D%5BY%20%5Cvert%20X%5D%20%3D%20%5Ctext%7BE%7D%5Bg%28X%29%20%5Cvert%20X%5D%20%3D%20g%28X%29"/>
  - 같은 방식으로 확률변수 *X*와 *Y*가 결정론적 함수 관계가 아닐 때도 다음 등식이 성립한다.
  - <img src = "https://latex.codecogs.com/gif.latex?%5Ctext%7BE%7D%5Bg%28X%29%20Y%20%5Cvert%20X%5D%20%3D%20g%28X%29%20%5Ctext%7BE%7D%5BY%20%5Cvert%20X%5D"/>

- 전체 기댓값의 법칙
  - 전체 기댓값의 법칙 : 조건부기댓값은 확률변수이므로 조건이 되는 확률변수에 대해 다시 기댓값을 구할 수 있다. 이렇게 반복하여 구한 조건부기댓값의 기댓값은 원래확률변수의 기댓값과 같다.
  - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BE%7D%5B%5Ctext%7BE%7D%5BY%20%5Cvert%20X%5D%5D%20%3D%20%5Ctext%7BE%7D%5BY%5D"/>

- 조건부 분산
  - *x*값을 알고 있을때 이에 대한 조건부확률분포 <img src ="https://latex.codecogs.com/gif.latex?p%28y%7Cx%29"/>의 분산이다.
  - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BVar%7D_Y%5BY%20%5Cvert%20X%5D%20%3D%20%5Ctext%7BE%7D_Y%5B%28Y%20-%20%5Ctext%7BE%7D_Y%5BY%20%5Cvert%20X%5D%29%5E2%20%5Cvert%20X%5D%20%3D%20%5Cint%20%28Y%20-%20%5Ctext%7BE%7D_Y%5BY%20%5Cvert%20X%5D%29%5E2%20f_%7BY%20%5Cvert%20X%7D%28y%20%5Cvert%20x%29%20dy"/>

- 전체 분산의 법칙
  - 확률변수의 분산은 조건부분산의 기댓값과 조건부기댓값의 분산의 합과 같다.
  - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BVar%7D%5BY%5D%20%3D%20%5Ctext%7BE%7D%5B%5Ctext%7BVar%7D%5BY%5Cvert%20X%5D%5D%20&plus;%20%5Ctext%7BVar%7D%5B%5Ctext%7BE%7D%5BY%5Cvert%20X%5D%5D"/>

## 8 scipy로 공부하는 확률분포
### 8.1 scipy를 이용한 확률분포 분석
- 확률분포 클래스
  - |종류|명령|확률분포|
    |:---:|:---:|:---:|
    |이산|`bernoulli`|베르누이분포|
    |이산|`binom`|이항분포|
    |이산|`multinomial`|다항분포|
    |연속|`uniforn`|균일분포
    |연속|`norm`|정규분포|
    |연속|`beta`|베타분포|
    |연속|`gamma`|감마분포|
    |연속|`t`|스튜던트 t분포|
    |연속|`chi2`|카이제곱분포|
    |연속|`f`|F분포|
    |연속|`dirichlet`|디리클리분포|
    |연속|`multivariatie_normal`|다변수 정규분포|
  - `sp.stats.norm()`처럼 생성
  
- 모수 지정
  - loc : 분포의 기댓값
  - scale : 분포의 표준편차

- 확률분포 메서드
  - |메서드|기능|
    |:---:|:---:|
    |pmf|확률질량함수
    |pdf|확률밀도함수
    |cmf|누적분포함수
    |ppf|누적분포함수의 역함수
    |sf|생존함수
    |isf|생존함수의 역함수
    rvs|랜덤 표본 생성

- 무작위 표본 생성
  - size : 표본 생성 시 생성될 표본 크기
  - random_state : 표본 생성 시 사용되는 seed 값

### 8.2 베르누이분포와 이항분포
- 베르누이시행
  - 결과가 두 가지 중 하나로만 나오는 실험이나 시핼
  
- 베르누이 확률변수
  - 베르누이 시행의 결과를 0 또는 1로 바꾼 것
  
- 베르누이 확률분포
  - 베르누이 확률변수의 분포
  - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BBern%7D%28x%3B%5Cmu%29%20%3D%20%5Cmu%5Ex%281-%5Cmu%29%5E%7B%281-x%29%7D"/>

- scipy를 사용한 베르누이 확룰변수의 시뮬레이션
  - `sp.stats.bernoulli(mu)`
  
- 베르누이분포의 모멘트
  - 기댓값
    - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BE%7D%5BX%5D%20%3D%20%5Cmu"/>
  - 분산
    - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BVar%7D%5BX%5D%20%3D%20%5Cmu%281-%5Cmu%29"/>

- 이항분포
  - 베르누이 분포 : 표본데이터가 1개
  - 이항분포 : 표본데이터가 N개
  - 이항분포 확률변수 *X*의 확률질량함수
    - <img src = "https://latex.codecogs.com/gif.latex?x%3D%5Csum_%7Bi%3D1%7D%5ENy_i"/>
    - <img src ="https://latex.codecogs.com/gif.latex?%5Ctext%7BBin%7D%28x%3BN%2C%5Cmu%29%20%3D%20%5Cbinom%20N%20x%20%5C%3B%20%5Cmu%5Ex%281-%5Cmu%29%5E%7BN-x%7D"/>

- 사이파이를 사용한 이항분포의 시뮬레이션
  - `sp.stats.binow(N,mu)
  
- 베르누이분포와 이항분포의 모수추정
  - 모수추정 : 데이터에서 모수의 값을 찾아내는 것
  - <img src ="https://latex.codecogs.com/gif.latex?%5Chat%7B%5Cmu%7D%20%3D%20%5Cdfrac%7B%5Csum_%7Bi%3D1%7D%5EN%20x_i%7D%7BN%7D%3D%20%5Cdfrac%7BN_1%7D%7BN%7D"/>
  
- 베르누이분포의 활용
  - 베이지안 관점 : 분류예측 문제의 출력 데이터가 두 값으로 구분되는 카테고리값인 경우에 분류 결과 즉, 두값중 어느 값이 가능성이 높은지 표현하는데 사용
  - 빈도주의적 관점 : 입력데이터가 0또는 1혹은 참 또는 거짓, 두 개의 값으로 구분되는 카테고리 값인 경우, 두 종류의 값이 나타내는 비율을 표현하는데 사용

# Tomorrow I'll Learn..
- 다항분포_정규분포_다변수정규분포

