class Vec2f {
  float x, y;
  Vec2f(float x, float y) {
    this.x = x;
    this.y = y;
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }
}

XML xml;
XML[] children;
ArrayList<String> citiesArray = new ArrayList<String>();
ArrayList<Vec2f> coordinatesArray = new ArrayList<Vec2f>();
ArrayList<Integer> populationArray = new ArrayList<Integer>();

//fonts
PFont latoLight;
PFont latoHair;

void setup() {
  //PAPERWORK
  size(650, 500);
  background(255);
  smooth();

  //FONTS
  latoLight = loadFont("Lato-Light-48.vlw");
  latoHair = loadFont("Lato-Hairline-48.vlw");
  textFont(latoHair, 20);
  fill(0, 102, 153, 204);
  text("Cities that are big", width/2-50, 40);


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
  }

  //let's test the content of the Array lists
  for (int i=0;i<children.length;i++) {
    println(coordinatesArray.get(i).getX()+" "+coordinatesArray.get(i).getY());
  }
  
  
  //DRAW
  for (int i=0;i<children.length;i++) {
    float _r = (float) map(populationArray.get(i),0,35000000,0,30);
    noFill();
    ellipse(coordinatesArray.get(i).getX(), coordinatesArray.get(i).getY(),_r,_r);
    int _rd = int(random(255));
    int _g = int(random(255));
    int _b = int(random(255));
    fill(_rd,_g,_b,140);
    text(citiesArray.get(i),coordinatesArray.get(i).getX()+(_r-5),coordinatesArray.get(i).getY()+5);
  }
}


