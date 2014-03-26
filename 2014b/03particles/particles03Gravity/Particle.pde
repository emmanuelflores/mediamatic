class Particle {
  float xPos = 0;
  float yPos = 0;
  color c = color(random(255), random(255), random(255));
  float radius = random(10) + 5;
  //add motion
  float xVel = -3+random(6);
  float yVel = -random(4);
  //gravity
  float gravity = 0.1;
  float friction = 1;

  Particle() {
  }
  Particle(float _xPos, float _yPos) {
    xPos = _xPos;
    yPos = _yPos;
  }

  Particle(float _xPos, float _yPos, float _xVel, float _yVel) {
    xPos = _xPos;
    yPos = _yPos;
    xVel = _xVel;
    yVel = _yVel;
  }

  void update() {
    if (xPos <= radius)
    {
      xVel = abs(xVel);
    } 
    else if (xPos >= width - radius)
    {
      xVel = -abs(xVel);
    }

    if (yPos <= radius)
    {
      yVel = abs(yVel);
    }
    else if (yPos >= height - radius)
    {
      yVel = -abs(yVel);
    }

    yVel+=gravity;
    yVel*=friction;

    xPos+=xVel;
    yPos+=yVel;
  }

  void render() {
    fill(c);
    ellipse(xPos, yPos, radius, radius);
  }
}

