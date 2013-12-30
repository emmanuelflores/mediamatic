class PieChart {
  float[] stream;
  color[] mColor;
  float angle_1 = 0;
  float angle_2 = 0;
  float num;
  PieChart(float[] stream, color[] mColor) {
    this.stream = stream;
    this.mColor = mColor;
  }

  void drawPie() {
    for (int i=0;i<stream.length;i++) {
      num += stream[i];
    }

    num = 360/num;
    int y = 0;

    for (int i=0;i<stream.length;i++) {
      angle_2 = angle_1;
      angle_1 += stream[i] * num;

      fill(mColor[i]);
      arc(width/2-40, height/2, 300, 300, radians(angle_2), radians(angle_1));
      fill(0);
      text(stream[i], width/2+150, y + 100 );
      y+=40;
    }
  }
}

