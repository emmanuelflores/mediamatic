class JumpyCircle {
  int radius;
  int xpos, ypos;
  int xstep, ystep;
  JumpyCircle(int radius, int xstep, int ystep, int id) {
    this.radius = radius;
    this.xstep = xstep;
    this.ystep = ystep;

    xpos = radius/2;
    ypos = radius/2;

    println("I have been created " + id);
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

///////////////////////////////
JumpyCircle mJumpyCircle;
int amount = 25;
ArrayList<JumpyCircle> circlesMoving = new ArrayList<JumpyCircle>();
void setup() {
  size(500, 500);
  background(255);
  //mJumpyCircle = new JumpyCircle(40, 3, 2);
  for (int i=0;i<amount;i++) {
    int _radius = (int)random(10, 40);
    int _xstep = (int)random(1, 8);
    int _ystep = (int)random(1, 8);
    circlesMoving.add(new JumpyCircle(_radius, _xstep, _ystep, i));
  }
}

void draw() {
  background(255);
  //mJumpyCircle.drawCircle();

  for (int i=0;i<amount;i++) {
    circlesMoving.get(i).drawCircle();
  }
}

