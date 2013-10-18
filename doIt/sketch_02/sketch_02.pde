float x = 0.0f;
float y = 0.0f;
float angle = 0.0f;
float lasty = 250.0f;
float lastx = 250.0f;
float a = 5.0f;
float b = 3.0f;

void setup() {
  frameRate(30);
  size(500, 300);
  background(232, 232, 232);
  smooth();
}


void draw() {
  angle += 0.5;

  if (angle > 360) {
    //println("ahhhhhhhhhhhhhhh");
    angle -= 360;
    //angle = 0;
  }

  float preva = a;
  float prevb = b;
  a = mouseX;
  b = mouseY;

  //if a is different from preva
  // or b is different from prevb
  if ((a != preva) || (b != prevb)) {
    strokeCap(PROJECT);
    //random(0,55);
    strokeWeight(int(random(55))+5);//5+60
    stroke(random(255));
  }
  else {
    strokeCap(ROUND);
    strokeWeight(1);
    stroke(255, 150);
  }

  x = sin(a * radians(angle) + PI / 2) * 280;
  y = sin(b * radians(angle)) * 180;
  x += 250;
  y += 150;

  line(x, y, lastx, lasty);

  lastx = x;
  lasty = y;
}

void mousePressed() {
  int bkgColor = (int)random(100, 232);
  background(bkgColor);
}

