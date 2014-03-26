float x = 0.0f;
float y = 0.0f;
float angle = 0.0f;
float lasty = 250.0f;
float lastx = 250.0f;

float a = 5.0f;
float b = 3.0f;


void setup() {
  frameRate(60);
  size(500, 300);
  background(232, 232, 232);
  smooth();
}


void draw() {
  //add to the angle
  angle +=0.5f;

  if (angle>360) {
    //reset the angle
    angle -= 360;
  }

  float preva = a;
  float prevb = b;
  a = mouseX/10;
  b = mouseY/10;

  if ((a !=preva) || (b !=prevb)) {
    strokeCap(PROJECT);//Sets the style for rendering line endings
    strokeWeight(int(random(55)) + 5);
    stroke(random(255));
  }
  else
  {
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
  background(232, 232, 232);
}

void mouseDragged() {
  println("ohhhhhhh");
}

