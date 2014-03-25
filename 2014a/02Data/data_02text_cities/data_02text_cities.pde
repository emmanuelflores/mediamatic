//using arrays&text to load data
int[] array_data = {
  100, 200, 300, 400, 500, 600, 700, 800
};
int[] city_data;
int timer = 0;

void setup() {
  String[] source = loadStrings("values.txt");
  city_data = int(split(source[0], ','));
  for (int i=0;i<city_data.length;i++) {
    println("from an array: "+array_data[i]);
    println("from a text file: " + city_data[i]);
  }
}

