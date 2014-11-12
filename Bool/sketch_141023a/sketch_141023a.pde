int x;
int y;
boolean circle;
void setup(){
  size (500,500);
}
  void draw(){
    x=mouseX;
    y=mouseY;
    background (0);
if (circle){ellipse (x,y,50,50);}
else { rect(x-25,y-25,50,50);}
  }
  void mousePressed(){ circle=!circle;}
