int nrBubbles = 40;
Bubble[] m_bubbles = new Bubble[nrBubbles];

private int m_oldX;
private int m_oldY;

void setup() {
  size(450, 450);
  colorMode(HSB, 100);
  smooth();
  frameRate(15);
  for (int i = 0; i < nrBubbles; i++) {
    m_bubbles[i] = new Bubble();
  }
}

void draw() {
  background(color(0, 0, 255));
  for (int i = 0; i < nrBubbles; i++) {
    m_bubbles[i].drawBubble();
  }
}


class Bubble {
  float m_x;
  float m_y;
  float m_r;
  color m_color;
  float m_maxSize;
  int m_iteration;

  public Bubble() {
    initialize();
  }

  public void drawBubble() {
    m_r += random(1, 5);
    m_iteration++;
    // desaturate color
    float h = hue(m_color);
    float s = saturation(m_color);
    float v = brightness(m_color);
    m_color = color(h, s - 5, v);
    fill(m_color);
    stroke(color(h, s, 80));
    strokeWeight(m_iteration);
    ellipse(m_x, m_y, m_r, m_r);
    if (m_r > m_maxSize) {
      initialize();
    }
  }

  private void initialize() {
    m_r = random(1, 20);
    m_x = random(0, width);
    m_y = random(0, height);
    int xChange = 0;
    int yChange = 0;
    if (mouseX > 0 && mouseX < (width - 5) && mouseY > 0 && mouseY < (height - 5)) {
      // adapt position to mouse
      xChange = (int)((mouseX - m_x) * 0.4);
      yChange = (int)((mouseY - m_y) * 0.4);
    }
    m_x += xChange;
    m_y += yChange;
    m_color = color((int)random(0, 100), 100, 100);
    m_maxSize= random(width/8, width/5);
    m_iteration = 1;
  }
}

