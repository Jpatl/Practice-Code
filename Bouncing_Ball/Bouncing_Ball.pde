float a=1;
float b=0;
float speedx=10;
float speedy=1;

void setup() {
  size (1280, 800);
  background (0);
}
void draw () {

  background (0);
//ball
ellipse (a, b, 50, 50);
  a=a+speedx;
  b=b+speedy;

  if (a>=width || a<0) {
    speedx=-speedx;
  }
  if (b>=height || b<0 ) {
    speedy=-speedy;
  }
  fill (20, 50, 91);
 
  
}

