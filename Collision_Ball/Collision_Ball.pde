PVector loc, vel, accel, mouse;
int sz=70;
void setup() {
  size(700, 700);
  loc= new PVector (width/2, height/2);
  vel= PVector.random2D();
  accel = new PVector (0, 0);
  mouse= new PVector (mouseX, mouseY);
  noCursor();
}
void draw() {
  background (0);
  mouse= new PVector (mouseX, mouseY);
  if (loc.dist(mouse)<sz/2) {
    fill(255, 0, 0);
    if (loc.x <mouse.x) {
      vel.x=-abs(vel.x);
    } else {
      vel.x=abs(vel.x);
    }
    if (loc.y <mouse.y) {
      vel.y=-abs(vel.y);
    } else {
      vel.y=abs(vel.y);
    }
  } else {
    fill(5, 233, 232);
  }

  ellipse (loc.x, loc.y, sz, sz);
  vel.add (accel);
  loc.add (vel);
  if (loc.x+sz/2>width || loc.x-sz/2<0) {
    vel.x=vel.x*-1;
  }
  if (loc.y+sz/2>height || loc.y-sz/2<0) {
    vel.y=vel.y*-1;
  }   
  ellipse (mouse.x, mouse.y, 10, 10);
}

