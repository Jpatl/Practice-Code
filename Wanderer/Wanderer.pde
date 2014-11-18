PVector loc;
PVector vel;
PVector accel;
int sz = 50;

void setup() {
  size (700,700);
  colorMode(HSB, 360, 100, 100, 100);
  loc = new PVector (width/2, height/2);
  sz=50;
  vel=PVector.random2D();
  accel= new PVector (random(-.1, .1),random(-.1, .1));
}
void draw() {
 accel= new PVector (random(-.1, .1),random(-.1, .1));
  fill(frameCount%360, 100, 100);
  vel.add (accel);
vel.limit (5);
loc.add (vel);
  ellipse (loc.x, loc.y, sz, sz);

  if (loc.y-sz/2>height) {
    loc.y=-sz/2;
  }
  if (loc.y+sz/2<0) {
     loc.y=height+sz/2;
  }
  if (loc.x+sz/2<0) {
     loc.x=width+sz/2;
  }
  if (loc.x-sz/2>width) {
     loc.x=-sz/2;
  }
}

