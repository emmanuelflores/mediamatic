Pongy mPongy;


void setup() {
  size(300, 300);
  background(255);
  frameRate(20);

  mPongy = new Pongy(0,0,1,4,10);
  
}


void draw() {
  background(255);
  
  mPongy.move();
  mPongy.collision();
  mPongy.drawPongy();
}
