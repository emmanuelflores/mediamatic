Pongy pongy;

void setup(){
  size(300,300);
  frameRate(100);
  //pongy = new Pongy(0,0,1,4,10);
  pongy = new Pongy();
}


void draw(){
  background(255);
  pongy.move();
  pongy.collision();
  pongy.drawPongy();
}
