GravityBall maggie;
GravityBall[] m= new GravityBall[100];

void setup() {
  size (1280, 800);
 for (int i = 0; i < m.length; i++) {
    m[i] = new GravityBall();
    colorMode( HSB, 360,100,100,100);
}}
void draw () {
  background (0);
    for (int i = 0; i < m.length; i++) {
  m[i].display();
  m[i].move();
  m[i].bounce();
    }
  
}
class GravityBall {
  //these are the properties of our Ball class
  float sz;
  PVector loc, vel;
  float hue, sat, bright, alpha;
  GravityBall() {
    sz = 50;
    
    loc = new PVector(random(sz,width/sz),random(height/2));
    vel = PVector.random2D();
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }

  void display() {
     fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}


