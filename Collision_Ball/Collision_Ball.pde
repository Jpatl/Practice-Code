PVector loc, vel, accel;
int sz=70;
void setup() {
  size(700,700);
  loc= new PVector (width/2, height/2);
  vel= PVector.random2D();
  accel = new PVector (0, 0);
}
void draw() {
  if (dist(loc.x,loc.y,mouseX,mouseY)<sz/2){fill(255,0,0);}else {fill(5,233,232);}
  ellipse (loc.x, loc.y, sz, sz);
  vel.add (accel);
  loc.add (vel);
  if (loc.x+sz/2>width || loc.x-sz/2<0){
    vel.x=vel.x*-1;}
  if (loc.y+sz/2>height || loc.y-sz/2<0){
    vel.y=vel.y*-1;}   
   ellipse (mouseX,mouseY,10,10);
   
}

