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
}

void draw(){
  background(255);
  for (int i=0;i<amount;i++) {
    particles.get(i).update();
  }
  
  for (int i=0;i<amount;i++) {
    particles.get(i).render();
  }
}

