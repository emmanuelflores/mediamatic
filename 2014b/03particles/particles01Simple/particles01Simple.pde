class Particle {
  float xPos = 0;
  float yPos = 0;
  color c = color(random(255), random(255), random(255));
  float radius = random(10) + 5;

  Particle() {
  }
  Particle(float _xPos, float _yPos) {
    xPos = _xPos;
    yPos = _yPos;
  }

  void render() {
    fill(c);
    ellipse(xPos, yPos, radius, radius);
  }
}

///////////////////////sketch

ArrayList<Particle> particles = new ArrayList<Particle>();
int amount;

void setup() {
  size(600, 600, P2D);
  background(255);
  smooth();
  noStroke();
  ellipseMode(RADIUS);
  
  amount = 100;
  for (int i=0;i<amount;i++) {
    float x = random(0, width);
    float y = random(0, height);
    particles.add(new Particle(x, y));
  }

  for (int i=0;i<amount;i++) {
    particles.get(i).render();
  }
}

