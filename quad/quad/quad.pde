float a=1;
float b=4;
float c=4;


void setup(){
println("a=" +a ); 
println("b=" +b);
println("c=" +c);
println("x1=" +quadratic (a,b,c)[3]);
println("x2=" + quadratic (a,b,c)[4] );
}
void draw()
{
}

float [] quadratic ( float a, float b, float c){
  float []results = new float [5];
  results [0]=a;
  results [1]=b;
  results [2]=c;
  results [3] = (-b + sqrt(sq(b)-4*a*c))/2*a;
  results [4] = (-b - sqrt(sq(b)-4*a*c))/2*a;
  return results;}
