//create a class for the letters
import java.util.*;

ArrayList words;
String s;
List<Character> cList = new ArrayList<Character>();
int maxWords = 10;

void setup() {
  size(640, 360);
  background(0);

  // Create the font
  String helloWorld = "Hello World";
  //int v = helloWorld.length();
  for (int i=0;i<helloWorld.length();i++) {
    cList.add(helloWorld.charAt(i));
  }

  //textFont(createFont("Georgia", 24));
  textAlign(CENTER, CENTER);
} 


void draw() {
  int margin = 10;
  translate(margin*4, margin*4);
  int gap = 46;
  int counter = 35;
  int wordsIndex = 0;
  int brightValue;

  for (int y = 0; y < height-gap; y += gap) {
    for (int x = 0; x < width-gap; x += gap) {

      //char currentLetter = cList.get(x % cList.size());
      char currentLetter = cList.get(wordsIndex%cList.size());
      brightValue = (int)random(200)+55;
      fill(brightValue);
      text(currentLetter, x, y);

      counter++;
      wordsIndex++;
    }
  }
}

