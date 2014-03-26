int x1, y1;
int x2, y2;
int value;

void setup() {
  size(500, 500);
  background(0);
  frameRate(20);
  //i'm a lonely line
  stroke(100, 200, 150);
  line(20, 20, 40, 40);
  //me too, I'm another lonley line
  stroke(200, 0, 0);
  line(50, 50, width, height);
}

void draw() {
  x1 = (int)random(0, width/2);
  y1 = (int)random(0, height/2);
  x2 = (int)random(0, width - (width/2));
  y2 = (int)random(0, height - (height/2));
  noFill();
  stroke(220);
  rect(x1, y1, x2, y2);
}

void keyPressed() {
  background(0);
  if (key == 'b') {
    println("oh, b");
  }
}

