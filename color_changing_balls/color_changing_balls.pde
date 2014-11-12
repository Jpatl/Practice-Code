int ballcount = 15;
float [] x= new float [ballcount];
float [] y= new float [ballcount];
float [] sz= new float [ballcount];
float [] sx= new float [ballcount];
float [] sy= new float [ballcount];
float [] clr= new float [ballcount];
float q;

void setup() {
  size (displayWidth, displayHeight);
  colorMode (HSB, 360, 100, 100, 100);
  for (int i=0; i<ballcount; i++) {
    x[i]=random(0, width);
    y[i]=random(0, height);
    sz[i]=random(0,100); 
    sx[i]=random(-2, 2);   
    sy[i]=random(-3, 3);
    clr[i]=random(0, 360);
  } 
  background (0);
}
void draw () {
  
  noStroke();

  for (int i=0; i<ballcount; i++) {
    fill ((clr[i]+frameCount)%360,80, 100, 75);
    ellipse (x[i], y[i], sz[i], sz[i]);
    x[i]+=sx[i];
    y[i]+=sy[i];
    {
      sz[i]=sz[i]+cos(frameCount/10)*52;
      if (x[i]+sz[i]/2>= width|| x[i]-sz[i]/2<=0) {
        sx[i]=-sx[i];
      }
      if (y[i]+sz[i]/2>= height|| y[i]-sz[i]/2<=0) {
        sy[i]=-sy[i];
      }
    }
  if (mousePressed){x[i]=mouseX; y[i]=mouseY;}
  }
  q++;
   //if (q>250){background (0); q=0;}
}

