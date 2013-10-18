int xpos = 0;
int ypos = 0;
int xspeed = 3;

void setup(){
  size(400,400);
  background(255);
}


void draw(){
  background(255);
  //xpos = xpos + 1;
  xpos +=xspeed;
  println(xpos);
  ellipse(xpos,ypos,20,20);
  
  if(xpos>=width || xpos<=0.0){
    xspeed *= -1;
  }
}
