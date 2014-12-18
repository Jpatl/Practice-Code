ArrayList<Particle> allMyParticles = new ArrayList<Particle>();
PImage Bubbles;
PImage Bubble;
void setup() {
 
  imageMode (CENTER);
  noStroke();
  size(1024, 768);
  Bubbles = loadImage("Untitled-1.jpg");
  Bubble = loadImage("Untitled-2.png");
}

void draw() {
  background (Bubbles);
  if (mousePressed) {
    allMyParticles.add(new Particle());
  }

  for (int i = allMyParticles.size ()-1; i >= 0; i--) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
    if (currentParticle.isDead()) {
      allMyParticles.remove(i);
    }
  }
}

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(width/2-40, height/2-140);
    vel = new PVector(random(-3, 0), random(-4, 0));
    acc = new PVector(0, .01);
    sz = random (25, 35);
  }

  void display() {
    image(Bubble, loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  boolean isDead() {
    if (loc.y+25 > height || loc.x > width ||loc.x < 0 || loc.y < 0) {
      return true;
    } else if (dist(mouseX, mouseY, loc.x, loc.y)-5 <sz/2) {
      return true;
    }
   else {
    return false;
  }
}
}

