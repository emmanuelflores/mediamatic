///////////////////////sketch
ParticleSystem particleSystem = new ParticleSystem();

void setup() {
  size(600, 600, P2D);
  background(255);
  smooth();
  noStroke();
  ellipseMode(RADIUS);

}

void draw(){
  background(255);
  if(mousePressed)
  {
    particleSystem.addParticle(new Particle(mouseX, mouseY));
  }
  particleSystem.drawParticleSystem();
}

//void mousePressed(){
// particleSystem.addParticle(new Particle(mouseX, mouseY)); 
//}

void keyPressed(){
  if(key == 'd' || key == 'D'){
    particleSystem.deleteAllParticles();
  }
}

