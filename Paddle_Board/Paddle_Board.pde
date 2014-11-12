//ball
int sizex=1280;
int sizey=800;
float x;
float y;
float speedx=10;
float speedy=1;
float sz= 50;
float round=70;
//rect
float leftx=20;
float lefty;
float leftw=25;
float lefth=200;
float rx=50;
float ry;
float rw=25;
float rh=200;
//score
int scorel;
int scorer;

void setup() {
  size (sizex, sizey);
  background (0);
  frameRate (50);
  x=width/2;
  y=height/2;
  ry=20;
  ;
}
void draw () {


  background (0);
  //ball
  ellipse (x, y, sz, sz);
  x=x+speedx;
  y=y+speedy;
//Motion of Ball
  if (x+ sz/2>width || x- sz/2<0) {
    speedx=-speedx;
  }
  if (y+ sz/2>height || y- sz/2<0 ) {
    speedy=-speedy;
  }
  //Fill of Paddles
  fill (20, 250, 91);
  // Paddle Left
  float lefty=mouseY;
  lefty=constrain(lefty,0,height-lefth);
  rect(leftx, lefty, 25, 200, 70);
      
  if (x- sz/2<leftx+leftw && y <lefty+lefth && y>lefty) {
    speedx=abs(speedx);
  }
  //right paddle 

  rect(width-rx, ry, rw, rh, 70);
  if (keyPressed) {
    if (key == CODED) { 
      if (keyCode==DOWN) {
        ry=ry+20;
      }
    }
  } 
  if (keyPressed) {
    if (key == CODED) { 
      if (keyCode==UP) {
        ry=ry-20;
      }
    }
  }
    ry=constrain(ry,0,height-rh);
  //ball bounce
  if (x+sz/2>width-rx && y<=ry+rh && y>ry) {
    speedx=-abs(speedx);
  }
  // Ball Reset 
  if (x+sz/2>=width) {
    x=width/2;
    scorel++;
  }
  if (x-sz/2<=0) {
    x=width/2;
    scorer++;
  }
  // Text of Score
  textSize (32);
  fill (255);
  text ("SCORE", 620, 40);
  textSize (30);
  fill (255);
  text (scorel, width/4, 40);
  textSize (30);
  fill (255);
  text (scorer, width/4*3, 40);
  
}

