class Jumpy {
  int radius;
  int xpos, ypos;
  int xstep, ystep;

  Jumpy(int radius, int xstep, int ystep, int id) {
    this.radius = radius;
    this.xstep = xstep;
    this.ystep = ystep;

    xpos = width/2;
    ypos = height/2;

    println("created with id: " + id);
  }

  void drawCircle() {
    xpos +=xstep;
    ypos +=ystep;
    ellipse(xpos, ypos, radius, radius);
    if (xpos >= width-(radius/2)|| xpos<=radius/2) {
      xstep *=-1;
    }

    if (ypos>=height-(radius/2) || ypos<=radius/2) {
      ystep *=-1;
    }
  }
}

Jumpy mJumpy;
//ArrayList
int amount = 25;
ArrayList<Jumpy> circles = new ArrayList<Jumpy>();
void setup() {
  background(255);
  size(400, 400);
  frameRate(20);
  //mJumpy = new Jumpy(10, 10, 5, 0);
  
  for(int i=0;i<amount;i++){
    int radius = (int)random(10,40);
    int xstep = (int)random(1,8);
    int ystep = (int)random(1,8);
    circles.add(new Jumpy(radius,xstep,ystep,i));
  }
}

void draw() {
  background(255);
  //mJumpy.drawCircle();
  for(int i=0;i<amount;i++){
    circles.get(i).drawCircle();
  }
}

