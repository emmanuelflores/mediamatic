float x1;
float y1;
float x2;
float y2;
//float xc;
//float yc;
//float rc;

void setup(){
   size(500,500);
   background(233,233,233);
   //line(100,100,200,200); 
}

void draw(){ 
  //drawLotsOfLines();  
  drawCircles();
}

void drawLotsOfLines(){
  x1 = random(0,100);
  y1 = random(0,200);
  x2 = random(400,500);
  y2 = random(300,500);
  
  line(x1,y1,x2,y2);
}

//elllipse(x,y,rx,ry);
void drawCircles(){
  float rc = random(1,100);
  float xc = random(0+rc,width-rc);
  float yc = random(0+rc,height-rc);
  noFill();
  int red = (int)random(0,255);
  int green = (int)random(100,200);
  int blue = (int)random(50,150);
  stroke(red,green,blue);
  ellipse(xc,yc,rc,rc);
}
