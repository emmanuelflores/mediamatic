class Shape {
  float diameter;
  float angle;
  float posx, posy;
  int red, green, blue;

  Shape(float _posx, float _posy) {
    diameter = height - 10;
    this.posx = _posx;
    this.posy = _posy;
    //noStroke();
    fill(255, 204, 0);
    //fill(red, green, blue);
    stroke(0,0,0);
  }

  void draw() {
    float d1 = 10 + (sin(angle) * diameter/2) + diameter/2;

    ellipse(posx, posy, d1, d1);

    angle += 0.02;
  }
}

