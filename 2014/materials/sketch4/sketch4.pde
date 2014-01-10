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
    println("lol");
    ellipse(xpos,ypos,radius,radius);
  }
}

void setup() {
  background(255);
  Jumpy mJumpy = new Jumpy(10,5,5,0);
  mJumpy.drawCircle();
}

