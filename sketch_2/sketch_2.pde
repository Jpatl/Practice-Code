int x=50;
int y=50;

void setup (){
  

  
  background (140,160,244);
size (1280,800);
  
  
  
}

void draw (){ 
    x= mouseX;
  y= mouseY;
  
background (2,50,100);
//Hands
line (x-30,y+20,x,y+20);
line (x+80,y+20,x+50,y+20);
ellipse (x+80,y+20,5,5);
ellipse (x-30,y+20,5,5);
//feet
line (x-10,y+80,x+10,y+80);
line (x+10,y+80,x+10,y+50);
line (x+40,y+50,x+40,y+80);
line (x+40,y+80,x+60,y+80);
//body
rect (x,y-10,50,60);

//mouth
line (60,80,90,80);
line(65,80,65,85);
line (65,85,70,85);
line (70,85, 70, 80);
line(80,80,80,85);
line(80,85,85,85);
line (85,85,85,80);

//pants
line (50,90,100,90);
line (70,90,74,94);
line (74,94,78,90);
line (74,94,78,98);
line (78,98,74,99);
line (74,99,70,98);
line (70,98,74,94);

//eyes
ellipse (63,60,10,10);
ellipse (87,60,10,10);
noFill ();
ellipse (63,60,20,20);
ellipse (87,60,20,20);

}
