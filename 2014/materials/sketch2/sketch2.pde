
void setup() {
  background(255);
  size(400, 400);
  frameRate(30);
}

void draw() {
  for (int i=0;i<5;i++) {
    float rad = random(10, 30);
    float posx = random(0+rad, width-rad);
    float posy = random(0+rad, height-rad);
    noFill();
    ellipse(posx, posy, rad, rad);
  }
}

void mousePressed() {
  int red = (int)random(0,255);
  int green = (int)random(0,255);
  int blue = (int)random(0,255);
  background(red,green,blue);
}



