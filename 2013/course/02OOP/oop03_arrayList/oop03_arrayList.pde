ArrayList<Shape> mShapes = new ArrayList<Shape>();

void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  for (int i = 0; i < mShapes.size(); i++) {
    mShapes.get(i).draw();
  }
}


void mousePressed() {
  mShapes.add(new Shape(mouseX, mouseY));
}

