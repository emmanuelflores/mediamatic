int xPos = 100;//global variables
int yPos = 200;
int ellipseXPos = 60;
int ellipseYPos = 20;

void setup(){
  size(300,300);
  background(232,232,232);
  frameRate(20);
}

void draw(){
//  int crazyFrameRate = (int)random(10,40);
//  frameRate(crazyFrameRate);
  background(232,232,232);
  smooth();
  stroke(0,0,0);
  line(10,10,100,100);//x1,y1,x2,y2
  
  //dynamic line
  xPos = (int)random(0,width);
  yPos = (int)random(0,height);
  stroke(100,200,200);
  line(100,100,xPos,yPos);
  
  
  noFill();
  int r = (int)random(0,255);
  int g = (int)random(0,255);
  int b = (int)random(0,255);
  stroke(r,g,b);
  ellipseXPos = (int)random(50,width-200);
  ellipseYPos = (int)random(50,height-200);
  ellipse(100,100,ellipseXPos,ellipseYPos);
  
//  
//  int xxx = (int)random(0,100);
//  ellipse(20,20,xxx,20);
}
