//create a class from type color
class ColorElement {
  int red, green, blue;
  ColorElement(int red, int green, int blue) {
    this.red = red;
    this.green = green;
    this.blue = blue;
  }

  color returnColor() {
    color _color = color(red, green, blue);
    return _color;
  }
}
