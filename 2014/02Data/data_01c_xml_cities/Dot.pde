class Dot {
  PFont font;
  float diameter;
  float angle;
  float  posx, posy;
  float  ratio;
  String cityName;
  color titleColor;

  Dot(float posx, float posy, float diameter) {
    latoLight = loadFont("Lato-Light-48.vlw");
    latoHair = loadFont("Lato-Hairline-48.vlw");
    this.posx = posx;
    this.posy = posy;
    this.diameter = diameter;
    ratio = random(0.0, diameter);
  }

  Dot(float posx, float posy, float diameter, String cityName, color titleColor, PFont font) {
    this.posx = posx;
    this.posy = posy;
    this.diameter = diameter;
    ratio = random(0.0, diameter);
    this.cityName = cityName;
    this.titleColor = titleColor;
    this.font = font;
  }

  void printValues() {
    println("the values are: "+ cityName+" "+posx+" "+posy+" "+diameter);
  }

  void drawDot() {
    noFill();
    ratio +=1;
    if (ratio > diameter) {
      ratio = 0;
    }
    fill(titleColor, 255);
    textFont(font, 13);
    text(cityName,posx,posy+5);
    noFill();
    stroke(titleColor,255);
    ellipse(posx, posy, ratio, ratio);
  }
}
