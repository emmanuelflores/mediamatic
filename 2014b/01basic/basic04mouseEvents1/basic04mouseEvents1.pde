//variables
float rad;
float rad2;
int red, green, blue;
int x,y;
int bck;

void setup(){
  background(255); 
  size(400,400); 
  frameRate(30);
  rad = 50;
  rad2 = 50;
  red = 100;
  green=0;
  blue=100;
  
  x = 0;
  y = 0;
  
  bck = 255;
}

void draw(){ 
  background(bck);
  rad = random(30,100);
  rad2 = random(30,100);
  red = (int)random(0,255);
  green = (int)random(0,255);
  blue = (int)random(0,255);
  stroke(red,green,blue);
  ellipse(x,y,rad,rad2);
}

void mouseMoved(){
  x = mouseX;
  y = mouseY;
}

void mousePressed(){
 bck = (int)random(0,255); 
}
