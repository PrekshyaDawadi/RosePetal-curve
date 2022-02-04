float t=0,w,h;
float r=0,theta=0;
// manipulate the shape
float n = 2 ,d = 7 , k=0; 

void setup(){

  fullScreen();
  background(188, 175, 175);

  h=height;
  w=width;
  
  k = n/d;

  strokeWeight(3);
}

void draw(){

  translate(w/2,h/2);
  theta=radians(t);
  rotate(theta);

  r=150*cos(k*theta);

  stroke(255);
  point(-r,0);

  t+=1.5;
  
  saveFrame("output/frames_####.png");
}
