import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;


XML xml;
XML[] children;
ArrayList<String> citiesArray = new ArrayList<String>();
ArrayList<Vec2f> coordinatesArray = new ArrayList<Vec2f>();
ArrayList<Integer> populationArray = new ArrayList<Integer>();
ArrayList<ColorElement> titleColors = new ArrayList<ColorElement>();
ArrayList<Dot> dots = new ArrayList<Dot>();

//fonts
PFont latoLight;
PFont latoHair;

//image
PImage asia;

void setup() {
  //PAPERWORK
  size(650, 500);
  background(255);
  smooth();
  asia = loadImage("asia.png");
  latoLight = loadFont("Lato-Light-48.vlw");
  latoHair = loadFont("Lato-Hairline-48.vlw");
  frameRate(30);

  //XML
  xml = loadXML("cities.xml");
  children = xml.getChildren("city");

  for (int i=0;i<children.length;i++) {
    //get name
    XML nameElement = children[i].getChild("name");
    String name = nameElement.getContent();
    citiesArray.add(new String(name));

    //get coordinates
    XML coordinateElement = children[i].getChild("coordinates");
    float north = coordinateElement.getFloat("n");
    float east = coordinateElement.getFloat("e");
    coordinatesArray.add(new Vec2f(north, east));

    //population
    XML populationElement = children[i].getChild("pop");
    int population = populationElement.getIntContent();
    populationArray.add(new Integer(population));

    int _r = int(random(255));
    int _g = int(random(255));
    int _b = int(random(255));
    titleColors.add(new ColorElement(_r, _g, _b));
  }

  //create dots
  for (int i=0;i<children.length;i++) {
    float _r = (float) map(populationArray.get(i), 0, 35000000, 0, 30);
    //dots.add(new Dot(coordinatesArray.get(i).getX(), coordinatesArray.get(i).getY(), _r));
    dots.add(new Dot(coordinatesArray.get(i).getX(), coordinatesArray.get(i).getY(), _r, 
    citiesArray.get(i), titleColors.get(i).returnColor(),latoHair));
  }
}

void draw() {
  background(255);
  image(asia, 0, 0);
  textFont(latoHair, 20);
  fill(0, 102, 153, 204);
  text("Cities that are big", width/2-50, 40);

  //  for (int i=0;i<dots.size();i++) {
  //    dots.get(i).drawDot();
  //  }

  Iterator<Dot> it = dots.iterator();
  while (it.hasNext ()) {
    Dot obj = it.next();
    obj.drawDot();
    obj.printValues();
  }
}

//detect the locations in map by hand
void mousePressed() {
  println(mouseX +" "+ mouseY);
}

