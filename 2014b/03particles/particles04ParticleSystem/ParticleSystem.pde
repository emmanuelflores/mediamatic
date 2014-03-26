class ParticleSystem {
  ArrayList<Particle> particles = new ArrayList<Particle>();

  ParticleSystem() {
  }

  void addParticle(Particle p) {
    particles.add(p);
  }

  void deleteAllParticles() {
    particles.clear();
  }

  void drawParticleSystem() {
    for (int i = 0; i < particles.size(); i++)
    {
      Particle p = (Particle)particles.get(i);
      p.drawParticle();
    }
  }
}

