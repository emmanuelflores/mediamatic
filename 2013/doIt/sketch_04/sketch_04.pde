int radius = 40;
int xpos = radius/2;
int ypos = radius/2;
int xstep = 3;
int ystep = 2;

void setup(){
  size(400,400);
  background(255);
}


void draw(){
  background(255);
  //xpos = xpos + 1;
  xpos +=xstep;
  ypos +=ystep;
  println(xpos);
  ellipse(xpos,ypos,radius,radius);
  
  if(xpos >= width-(radius/2)|| xpos<=radius/2){
    xstep *=-1;
    println(xpos);
  }
  
  if(ypos>=height-(radius/2) || ypos<=radius/2){
    ystep *=-1;
  }
}

