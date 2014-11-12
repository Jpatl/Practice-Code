int a=00;
int b=3;
int c=1;


void setup() {
  size (600, 600);
  frameRate (500);
  line (0, width/2, 0, 600);
}
void draw () {
  rect(a, 50, 50, b);
  rect(a, 100, 50, b);
  rect(a, 150, 50, b);
  rect(a, 200, 50, b);

  rect(a, 250, 50, b);
  rect(a, 300, 50, b);
  rect(a, 350, 50, b);
  rect(a, 400, 50, b);
  rect(a, 450, 50, b);
  rect(a, 500, 50, b); 
  rect(a, 250, 50, b);
  rect(a, 550, 50, b);
  rect(a, 600, 50, b);
  rect(a, 650, 50, b);
  rect(a, 0, 50, b);
a=a+c;
b=b+1;

  if (mouseX>width/2) {
    fill (0, 0, 255);
  }

  if (b>50) {
    b=0;
  }
  if (a>600) {
    c=-1;
  }
   if (a<0) {
    c=1;
  }
  ellipse(mouseX, mouseY, 50, b);
  if (mouseX<width/2) {
    fill (255, 0, 0);
  }
}

