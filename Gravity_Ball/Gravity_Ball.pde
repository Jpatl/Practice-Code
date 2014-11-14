float x; 
float y; 
float velx; 
float vely;
float accelx;
float accely;
float acel;
int sz = 50;

void setup(){
  size(500,500);
  x=width/2;
  y=height/2;
  sz=50;
  velx=0;
  vely=1;
  accelx=0;
  accely=.2;
}
void draw(){
background(0);
ellipse (x,y,sz,sz);
velx+=accelx;
vely+=accely;
x+=velx;
y+=vely;
if (y+sz/2>=height){y=height-sz/2; vely=-abs(vely);}
  
  
  
  
  
  
  
  
  
  
  
  
  
}
