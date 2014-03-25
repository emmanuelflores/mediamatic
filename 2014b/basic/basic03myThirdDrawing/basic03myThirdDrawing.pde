int amount = 10;

void setup() {
  size(500, 500);
  background(0);
  //test a for loop
  for (int i=0;i<amount;i++) {
    println(i);
  }
}

//now let's draw
void draw() {
  for (int i=0;i<amount;i++) {
    int r = (int)random(0, 255);
    int g = (int)random(0, 255);
    int b = (int)random(0, 255);

    int x2 = (int)random(0, width);
    int y2 = (int)random(0, height);

    stroke(r, g, b);
    line(width*0.5, height*0.5, x2, y2);
  }
}

void keyPressed() {
  background(0);
}

