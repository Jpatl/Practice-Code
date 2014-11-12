int x=50;
int y=50;
int dx=5;
int dy=5;

void setup (){
  

  
  background (140,160,244);
size (1280,800);
  
  
  
}

void draw (){ 
    x= x+dx;
  y= y+dy;
 
  

//Hands
fill (255);
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
line (x+10,y+30,x+40,y+30);
line(x+15,y+30,x+15,y+35);
line (x+15,y+35,x+20,y+35);
line (x+20,y+35, x+20, y+30);
line(x+30,y+30,x+30,y+35);
line(x+30,y+35,x+35,y+35);
line (x+35,y+35,x+35,y+30);

//pants
line (x,y+40,x+50,y+40);
line (x+20,y+40,x+24,y+44);
line (x+24,y+44,x+28,y+40);
line (x+24,y+44,x+28,y+48);
line (x+28,y+48,x+24,y+44);
line (x+24,y+49,x+20,y+48);
line (x+20,y+48,x+24,y+44);

//eyes
ellipse (x+13,y+10,10,10);
ellipse (x+37,y+10,10,10);
noFill ();
ellipse (x+13,y+10,20,20);
ellipse (x+37,y+10,20,20);

 if (x<0){dx=-dx;}
    if (y<0){dy=-dy;}
     if (x>width){dx=-dx;}
    if (y>height){dy=-dy;}
}

