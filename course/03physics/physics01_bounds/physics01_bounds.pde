//global
//declare variables
int x, y; 
int xspeed, yspeed;
int r;
int halfW, halfH;

void setup() {
  size(300, 300);
  background(255);
  frameRate(200);

  //init variables
  //x=y=0;
  halfW = width/2;//width*0.5;
  halfH = height/2;
  x=0;
  y=0;
  xspeed = 1;
  yspeed = 4;
  r = 10;
}


void draw() {
  background(255);
  x +=xspeed;
  y +=yspeed;
  ellipse(x,y, r, r);
  if (x>width-(r/2) || x<0) {
    xspeed *=-1;
  }
  
  if(y>height-(r/2) || y<0){
   yspeed *=-1; 
  }
}
