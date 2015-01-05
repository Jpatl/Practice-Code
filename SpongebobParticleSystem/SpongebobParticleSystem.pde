// FOR BACKGROUND MUSIC
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer sou; // varible name;

// FOR PARTICLE SUSTEM
ArrayList<bubble> allBubbles = new ArrayList<bubble>();
//IMAGES
PImage BubblesBack;
PImage Bubble;

//SETUP
void setup() {
  //TO POP BUBBLE
  imageMode (CENTER);
  //TO MAKE SMOOTHER
  noStroke();
  //CANVAS SIZE
  size(1024, 768);
  //LOADING OF IMAGES
  BubblesBack = loadImage("Untitled-1.jpg");
  Bubble = loadImage("Untitled-2.png");
  //BACKGROUND MUSIC
  minim = new Minim(this);
  sou= minim.loadFile("The Bubble Song - SpongeBob SquarePants.mp3");
  sou.loop();
}
//DRAW
void draw() {
  //BACKGROUND
  background (BubblesBack);
  //ADD BUBBLES
  if (mousePressed) {
    allBubbles.add(new bubble());
  }
  //CONTROLL PROP. OF INDIVIDUAL BUBBLES
  for (int b = allBubbles.size ()-1; b >= 0; b--) {
    bubble currentbubble = allBubbles.get(b);
    //SHOW BUBBLE
    currentbubble.display();
    //MOVE BUBBLE
    currentbubble.move();
    //REMOVE BUBBLE ACCORDING TO BOOL    
    if (currentbubble.PopBubble()) {
      allBubbles.remove(b);
    }
  }
}
// BUBBLE
class bubble {
  //STATE VARIABLES
  PVector loc, vel, acc;
  float sz;
  //INITIALIZE VARIABLES
  bubble() {
    loc = new PVector(width/2-30, height/2-130);
    vel = new PVector(random(-3, 0), random(-4, 0));
    acc = new PVector(0, .01);
    sz = random (25, 35);
  }
  //SHOWING OF BUBBLES
  void display() {
    image(Bubble, loc.x, loc.y, sz, sz);
  }
  //MOVING OF BUBBLES
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  //SHOULD BUBBLE BE REMOVED?
  boolean PopBubble() {
    if (loc.y+25 > height || loc.x > width ||loc.x < 0 || loc.y < 0) {
      return true;
      //POP BUBBLE WITH MOUSE
    } else if (dist(mouseX, mouseY, loc.x, loc.y)-5 <sz/2) {
      return true;
      //IF OUTSIDE BORDERS
    } else {
      return false;
    }
  }
}

