int count=100;

float [] x= new float [count];
float [] y= new float [count];
void setup () { 
  colorMode (HSB, 360, 100, 100, 100);
  size (displayWidth, displayHeight);
}

void draw () { 
  background (0);
noStroke();
  x[count-1]=mouseX;
  y[count-1]=mouseY;
  for (int i=0; i<x.length-1; i++) {
    x[i] =x[i+1];
    y[i] =y[i+1];
  }
  for (int i=count-1; i>=0; i--) {
    fill (map (x[i], 0, width, 0, 360), 100, 100, 100);
    ellipse (x[i], y[i], i*3, i*3);
  }
}

