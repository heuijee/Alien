# Alien
문화기술개론

프로세싱을 이용하여 외계인 그림을 출력하는 코드입니다.

먼저 Alien의 클래스를 만든 뒤 외계인의 구성요소를 나타내는 파라미터를 설정해줍니다.
ex) float sizeScale; 

PShape는 프로세싱에서 제공되는 함수를 이용해 벡터방정식의 도형을 그릴 수 있습니다.

1. 도형 그리기
	
	line(x1,y1,x2,y2): 선 그리기
  
	rectMode(CENTER): 기준점이 중심인 사각형 그리기
 
 	rec(250,250,200,200): (250,250)에 기준점으로 가로 200 세로 200픽셀의 사각형 그리기
  
	ellipse(250,250,200,200): (250,250)에 가로 200, 세로 200인 원 그리기

	triangle(x1,x2,y1,y2,z1,z2): 삼각형 그리기
 
 	arc(x1,x2,y1,y2,z1,z2,f1,f2): 원호 그리기

	quad(x1,x2,y1,y2,z1,z2,f1,f2): 사변형 그리기
  	
	strokeWeight(10): 선의 두께 조절
 	
	noStroke(): 선 그리지 않기
  
2. 동적모드
 
	 ellipse(mouseX, mouseY,50,50): 가로 세로 50인 원 그리기-> mouseX:마우스 x좌표, mouseY:마우스 y좌표
  -> 마우스가 움직이는 좌표에 따라 원이 새로 그려진다.
  
3. 색 정하기
  	
	fill(0): 0~255사이의 값으로 명암을 조절할 수 있다. 도형에 명암을 넣을 수 있다.
	
 	 background(0): 0~255사이의 값으로 배경의 명암을 조절할 수 있다.
	 
외계인을 그리고 싶다면 먼저 Ailen이라는 class를 생성한뒤 외계인의 구성요소들을 파라미터로 만들어줍니다.

  float sizeScale;
  
  float xCenter, yCenter;
  
  PShape alien, body, head, lefteye, righteye, leftleg, rightleg;
  
  color leftColor, rightColor;
  
PShape을 사용해 외계인의 몸, 팔, 다리등의 함수를 만들어 줍니다.

createShape(shape,sizes...): 미리 만들어 놓은 도형을 좀더 빠르게 그릴수있습니다.

ex)head = createShape(ELLIPSE, 0, -125, 150, 150);

vertex(x,y): 점을 찍어 도형을 만드는것

ex) body.vertex(-25, -100);


	 
  
  
  
