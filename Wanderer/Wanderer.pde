float x; 
float y; 
float velx; 
float vely;
float accelx;
float accely;
float acel;
int sz = 50;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(500, 500);
  x=width/2;
  y=height/2;
  sz=50;
  velx=0;
  vely=0;
  accelx=random (-.1, .1);
  accely=random (-.1, .1);
}
void draw() {
  accelx=random (-.1, .1);
  accely= random (-.1, .1);

  fill(frameCount%360, 100, 100);
  velx = constrain(velx, -5, 5);
  vely = constrain(vely, -5, 5);


  velx+=accelx;
  vely+=accely;
  x+=velx;
  y+=vely;
  ellipse (x, y, sz, sz);

  if (y-sz/2>height) {
    y=-sz/2;
  }
  if (y+sz/2<0) {
    y=height+sz/2;
  }
  if (x+sz/2<0) {
    x=width+sz/2;
  }
  if (x-sz/2>width) {
    x=-sz/2;
  }
}

