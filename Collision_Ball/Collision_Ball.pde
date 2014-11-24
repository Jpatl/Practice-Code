int toomanyproblems=100;
int maggie= toomanyproblems;
int count= maggie;
PVector[] loc =new PVector [count];
PVector[] vel =new PVector [count];
PVector[] accel =new PVector [count];
float[]sz= new float [count];
float[] mass = new float[count];
int minDiam = 04;
int maxDiam = 600;

void setup() {
  
  size(800, 800);
  for (int i=0; i<count; i++) { 
    sz[i] = random (15, 25);
    loc[i]= new PVector (random(sz[i], width-sz[i]), random (sz[i], height-sz[i]));
    vel[i]= PVector.random2D();
    accel [i]= new PVector (0, 0);
     mass[i] = map(sz[i], minDiam, maxDiam, .1, 1.5);
    noCursor();
  }
}
void draw() {
background (0);
  for ( int i=0; i<count; i++)
  {
    vel[i].add (accel[i]);
    loc[i].add (vel[i]);

    for ( int ii=0; ii<count; ii++) {
      if (i!=ii) {
        if (loc[i].dist (loc[ii])< sz[i]/2+sz[ii]/2) {
          /* if (loc[i].x < loc[ii].x) {   
           vel[i].x = -abs(vel[i].x);
           vel[ii].x = abs(vel[ii].x);
           } else {
           vel[i].x = abs(vel[i].x);
           vel[ii].x = -abs(vel[ii].x);
           }
           if (loc[i].y < loc[ii].y) {   
           vel[i].y = -abs(vel[i].y);
           vel[ii].y = abs(vel[ii].y);
           } else {
           vel[i].y = abs(vel[i].y);
           vel[ii].y = -abs(vel[ii].y);
           }*/
          vel[i] = PVector.sub(loc[i], loc[ii]);          
          vel[i].normalize();                    
          vel[i].div(mass[i]);
        }
      }
    }

    ellipse (loc[i].x, loc[i].y, sz[i], sz[i]);

    if (loc[i].x+sz[i]/2>width || loc[i].x-sz[i]/2<0) {
      vel[i].x=vel[i].x*-1;
    }
    if (loc[i].y+sz[i]/2>height || loc[i].y-sz[i]/2<0) {
      vel[i].y=vel[i].y*-1;
    }
  }
}

