//basic start drawing

int pos=250;

void setup(){
  size(400,400);
  background(232,232,232);
}


void draw(){
  
  //primitives for drawing
  smooth();
  line(10,10,100,100);
  noFill();
  ellipse(100,100,20,20);
  line(100,100,200,100);
  arc(200, 100, 80, 80, 0, PI+QUARTER_PI, CHORD);//arc(a, b, c, d, start, stop, mode)
  line(200,100,pos,pos);
  fill(204, 102,0);
  quad(pos-20, pos-20, pos+20, pos-20, 
  pos+20,pos+20, pos-20, pos+20);//quad(x1, y1, x2, y2, x3, y3, x4, y4)
  line(pos,pos,130,175);
  noFill();
  triangle(130, 175, 158, 120, 186, 175);
}
