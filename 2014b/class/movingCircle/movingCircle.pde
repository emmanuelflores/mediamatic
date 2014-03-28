class Jumpy {
  int x;
  int y;
  //constructor
  Jumpy(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void drawMe() {
    int xstep = 1;
    int ystep = 1;
    x = x + xstep;
    y = y + ystep;
    ellipse(x, y, 20, 20);
  }
}

Jumpy mJumpy;

void setup() {
  size(500,500);
  mJumpy = new Jumpy(100,10);
}

void draw(){
  mJumpy.drawMe();
}

