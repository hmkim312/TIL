# 200128-math-pca,function
# To Day I Learned..

### PCA
- 주성분 분석, 차원축소

- 잠재변수를 찾는것
	- 잠재변수란 측정되지는 않았지만 측정된 데이터의 기저에 숨어서 측정 데이터를 결정 짓는 변수
	- <img src="https://latex.codecogs.com/gif.latex?u_1%20%3D%20w_1x_1&plus;w_2x_2" /> 
- PCA의 수학적 설명
	- 데이터가 원점을 중심으로 존재하는 경우에는 벡터에 변환행렬을 곱하는 연산으로 투영벡터를 계산할 수 있다.
	- <img src="https://latex.codecogs.com/gif.latex?\hat x_i = Wx_i" /> 
	- PCA의 목표는 변환 결과인 차원축소 벡터  <img src="https://latex.codecogs.com/gif.latex?\hat x_i" />의 벡터의 정보가 원래의 벡터 <img src="https://latex.codecogs.com/gif.latex? x_i" />가졌던 정보와 가장 유사하게 되는 변환행렬 <img src="https://latex.codecogs.com/gif.latex?W" />를 찾는 것이다.

	- 목적함수는 다음과 같다. 
	- <img src="https://latex.codecogs.com/gif.latex? \arg\min_{W} || X - X W^{T} W ||^2" />
  
- 사이킷런의 PCA 기능
	- 입력 인수
		- n_components : 정수
	- 메서드
		- fit_transform() : 특징행렬을 낮은 차원의 근사행렬로 변환
		- inverse_transform() : 변환된 근사행렬을 원래의 차원으로 복귀
	- 속성
		- mean_ : 평균
		- components_ : 주성분 벡터

- 이미지 PCA
	- 아이겐페이스(Eigen face) : 주성분이 나타내는 얼굴이미지

## 4장 심파이(sympy)로 공부하는 미적분
### 4.1 함수

- 함수
	- 함수 : 입력값을 출력값으로 바꾸어 출력하는 관계 (Ex 자판기)
	- 정의역 : 입력변수가 가질 수 있는 값의 집합
	- 공역 : 출력변수가 가질수 있는 값의 집합

- 변수
	- 변수 : 어떤 숫자를 대표하는 기호
	- 입력변수 : 입력값을 대표하는 변수
	- 출력변수 : 출력값을 대표하는 변수
	- <img src="https://latex.codecogs.com/gif.latex?f(x) = 2x" />
	-  <img src="https://latex.codecogs.com/gif.latex?y=2x" />
	
- 연속과 불연속
	- 불연속 : 함수의 값이 중간에 갑자기 변하는 것
	- 연속 :  <img src="https://latex.codecogs.com/gif.latex?x" />가 조금 바뀌면  <img src="https://latex.codecogs.com/gif.latex?y" />도 조금 바뀌는 것

- 부호함수
	- 입력이 양수이면 1, 음수이면 -1, 0이면 0을 출력하는 <img src="https://latex.codecogs.com/gif.latex?x = 0" />에서 불연속 함수, 넘파이에서 sign()으로 사용

   <img src="https://latex.codecogs.com/gif.latex? \text{sgn}(x)=\begin{cases} 1, & x > 0, \\ 0, & x = 0, \\ -1, & x < 0\end{cases}" />

- 단위계단함수
	- 입력이 0 이상이면 1을, 0 미만이면 0을 출력하는 함수
  
  <img src="https://latex.codecogs.com/gif.latex? H(x) =\begin{cases} 1, & x \ge 0, \\0, & x < 0\end{cases}" />
	

- 지시함수
	- 함수 이름에 아래 첨자로 미리 지정된 값이 들어오면 출력이 1이되고 아니면 출력이 0이 되는 함수
 <img src="https://latex.codecogs.com/gif.latex?\mathbb{I}_i(x)=\delta_{ix} =\begin{cases}1 & \text{ if } x = i \\ 0 & \text{ if } x \neq i \\ \end{cases}  " />

- 역함수
	- 어떤 함수의 입력/출력 관계와 정반대의 입출력 관계를 가지는 함수
	- 역함수는 역수와 기호의 의미가 다름
	- 역함수는 항상 존재하는것은 아니다.
	- <img src="https://latex.codecogs.com/gif.latex?y = f(x), \;\;\; \rightarrow \;\;\; x = f^{-1}(y)  " />
	- <img src="https://latex.codecogs.com/gif.latex?f^{-1}(x) \neq f(x)^{-1} = \dfrac{1}{f(x)}  " />

- 함수의 그래프
	- 함수의 시각화는 그래프와 플롯을 사용한다

- 역함수의 그래프
	- 원래의 함수에서 <img src="https://latex.codecogs.com/gif.latex? x" />축과 <img src="https://latex.codecogs.com/gif.latex? y" />이 바뀐 것이므로 <img src="https://latex.codecogs.com/gif.latex? y = x" />가 나타나는 직선(원점을 통과하는 기울기 1인 직선)을 대칭축으로 대칭인 함수의 그래프와 같다

- 다항식 함수
	- 상수항 <img src="https://latex.codecogs.com/gif.latex? c_0" />, 일차항 <img src="https://latex.codecogs.com/gif.latex? c_1" />, 이차항 <img src="https://latex.codecogs.com/gif.latex? c_2x^2,\cdots" />등의 거듭제곱 항의 선형 조합으로 이루어진 함수다.
	- <img src="https://latex.codecogs.com/gif.latex?f(x) = c_0 + c_1x+c_2x^2+ \cdots+ c_nx^n" />

- 최대 함수
	- 두 인수중 큰값을 출력하는 함수

- $$$ 
\begin{align}
\max(x, y) 
=
\begin{cases}
x & \text{ if } x \geq y \\
y & \text{ if } x < y 
\end{cases}
\end{align}
$$$

- 최소 함수
	- 두 인수중 작은값을 출력하는 함수

	- $$$
\begin{align}
\min(x, y) 
=
\begin{cases}
x & \text{ if } x \leq y \\
y & \text{ if } x > y 
\end{cases}
\end{align}
$$$

- **ReLU** 함수
	- $$$y = 0$$$으로 고정하여 입력값 $$$x$$$가 양수이면 그대로 출력하고 음수일때는 0으로 만들때 사용한다.
	- 해당 **함수는 인공신경망(딥러닝)에서 쓰인다.

	- $$$ 
\begin{align}
\max(x, 0) 
=
\begin{cases}
x & \text{ if } x \geq 0 \\
0 & \text{ if } x < 0 
\end{cases}
\end{align}
$$$

- 지수함수
	- 밑을 오일러 수 $$$e$$$(약 2.718)로 하여 거듭 제곱하는 함수
	- $$$ y = e^x$$$
	- 지수함수는 $$$ y = $$$exp$$$(x) = $$$exp$$$x$$$로 표시하기도 한다.
	- 양수($$$e$$$)를 거듭제곱한 값이므로 항상 양수다.
	- $$$x=0$$$일 때 $$$1$$$이 된다.
	- $$$x$$$가 양의 무한대로 가면($$$x \rightarrow \infty$$$), 양의 무한대로 다가간다.
	- $$$x$$$가 음의 무한대로 가면($$$x \rightarrow -\infty$$$), 0으로 다가간다.
	- $$$x_1 > x_2$$$이면 $$$\exp{x_1} > \exp{x_2}$$$이다.

- 로지스틱함수
	- 지수함수의 변형 함수
	- 항상 0과 1사이의 값이 나오며, 단조증가함

	- $$$
\begin{align}
\sigma(x) = \dfrac{1}{1 + \exp(-x)} 
\end{align}
$$$

- 로그함수
	- $$$e$$$를 거듭제곱하여 특정한 수 $$$a$$$가 되도록 하는 수를 $$$\log a$$$라 표기하고 로그라고 읽는다
	- $$$ y = \log x$$$
	- $$$x$$$값, 즉 입력변수값이 양수이어야 한다. 0이거나 음수는 안된다.
	- $$$x > 1$$$면 $$$y >0$$$ (양수)
	- $$$x=1$$$이면 $$$y=0$$$
	- $$$0 < x <1$$$면 $$$y=0$$$(음수)
	- $$$x_1 > x_2$$$ 면 $$$\log x_1 > \log x_2$$$이다. 
	- 로그함수의 그래프는 지수함수의 역함수이다.
	- 로그함수는 곱하기를 더하기로 변환한다
	- $$$ \log(x_1 \cdot x_2) = \log x_1 + \log x_2$$$
	- $$$\log{\left(\prod_i x_i\right)} = \sum_i \left(\log{x_i}\right) $$$
	- $$$ \log x^n = n\log x$$$
	- 어떤함수에 로그를 적용해도 함수의 최고점, 최저점의 위치는 변하지 않는다.
	- 로그함수는 0부터 1사이의 작은 값을 확대시켜 보여준다.
		- 사람관점 : 차이가 확대되어 구별을 잘 할수있게 해줌
		- 컴퓨터관점 : 부동소수점의 단점을 보완 0~1을 더 크게 보여주기때문에

- 소프트플러스함수
	- 지수함수와 로그함수를 결합하여 만든 함수
	- 0을 인수로 갖는 최대 함수와 비슷하지만, $$$ x = 0$$$근처에서 값이 부드럽게 변함
	- $$$ \zeta(x) = \log( 1 + \exp(x))$$$

- 다변수함수
	- 복수의 입력변수를 가지는 함수
	- $$$ z=f(x,y)$$$
	- 3차원은 서피스 플롯, 컨투어 플롯으로 시각화

- 분리가능 다변수함수
	- 다변수 함수를 단변수함수의 곱으로 표현
	- $$$ f(x,y) = f_1(x)f_2(y)$$$

- 다변수 다출력 함수
	- 입력변수와 출력변수가 여러개인 함수

- 소프트 맥스함수(다변수 다출력 함수)
	- $$$ 
\begin{align}
y =
\begin{bmatrix}
y_1 \\ y_2 \\ y_3
\end{bmatrix}
=S(x_1, x_2, x_3) = 
\begin{bmatrix}
\dfrac{\exp(w_1x_1)}{\exp(w_1x_1) + \exp(w_2x_2) + \exp(w_3x_3)} \\
\dfrac{\exp(w_2x_2)}{\exp(w_1x_1) + \exp(w_2x_2) + \exp(w_3x_3)} \\
\dfrac{\exp(w_3x_3)}{\exp(w_1x_1) + \exp(w_2x_2) + \exp(w_3x_3)} \\
\end{bmatrix}
\end{align}
$$$

	- 모든 출력 원소는 0과 1사이값을 갖는다.
	- 모든 출력 원소의 합은 1이다.
	- 입력원소의 크기 순서와 출력원소의 크기 순서가 같다.
	- 다변수 입력을 확률처럼 보이게 출력 한다.

- 함수의 평행이동
	- $$$ f(x) \;\; \rightarrow \;\; f(x-a)$$$
	- $$$ - $$$은 오른쪽으로 이동, $$$+$$$는 왼쪽으로 이동
	- $$$ f(x) \;\; \rightarrow \;\; f(x)+b$$$
	- $$$ - $$$은 아래로 이동, $$$+$$$는 위로 이동

- 함수의 스케일링
	- 단변수함수를 x축 방향으로 a배만큼 늘릴려면 함수를 다음처럼 변형한다.
	- $$$ f(x) \;\; \rightarrow \;\; f\left(\frac{x}{a}\right) $$$ 양변에서 늘린것 같은 모양
	- 단변수함수를 y축 방향으로 b배만큼 늘릴려면 함수를 다음처럼 변형한다.
	- $$$ f(x) \;\; \rightarrow \;\; bf(x) $$$ 위아래로 늘린것 같은 모양

# Tomorrow I'll Learn..

- math..sympy를 활용한 함수 미분..