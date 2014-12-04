GravityBall maggie;
GravityBall[] m= new GravityBall[500];

void setup() {
  size (displayWidth, displayHeight);
  for (int i = 0; i < m.length; i++) {
    m[i] = new GravityBall(15,2);
    colorMode( HSB, 360, 100, 100, 100);
  }
}
void draw () {
  background (0);
  for (int i = 0; i < m.length; i++) {
    m[i].display();
    m[i].move();
    m[i].bounce();
    for (int j=0; j< GravityBall.length;j++){
      if(i!=j){
        GravityBall[i].collideWith(GravityBall[j]);}}
  }
}
class GravityBall {
  //these are the properties of our Ball class
  float sz;
  PVector loc, vel;
  float speed;
  float hue, sat, bright, alpha;
  GravityBall(float tempsz, float tempspeed) {
    sz = tempsz;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    speed = tempspeed;
    vel.mult(speed);
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
  void collideWith(GravityBall someOtherBall) {
    if (loc.dist(someOtherBall.loc) < sz/2 + someOtherBall.sz/2) {
      vel = PVector.sub(loc, someOtherBall.loc);
      vel.normalize();
      vel.setMag(speed);
    }
  }

}
