float a=1;
float b=0;
float speedx=10;
float speedy=1;

void setup() {
  size (1280, 800);
}
void draw () {
  
    background (0,50,9);
  ellipse (a, b, 50, 50);
  a=a+speedx;
  b=b+speedy;

  if (a>=width) {
    speedx=-speedx;
  }
  if (b>=height) {
    speedy=-speedy;
  }
  if (a<0) {
    speedx=-speedx;
  }
  if (b<0) {
    speedy=-speedy;
  }
  fill (random (255), random (255), random (255));
}

