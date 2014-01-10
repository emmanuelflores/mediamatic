//variables
float rad;
float rad2;
int red, green, blue;

void setup(){
  background(255); 
  size(400,400); 
  frameRate(30);
  rad = 50;
  rad2 = 50;
  red = 100;
  green=0;
  blue=100;
}

void draw(){ 
  background(255);
  rad = random(30,100);
  rad2 = random(30,100);
  red = (int)random(0,255);
  green = (int)random(0,255);
  blue = (int)random(0,255);
  stroke(red,green,blue);
  ellipse(mouseX,mouseY,rad,rad2);
}
