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

//load using JSON
JSONArray cities;
ArrayList<Vec2f> coordinatesArray = new ArrayList<Vec2f>();

void setup() {
  cities = loadJSONArray("cities.json");

  for (int i=0;i<cities.size();i++) {
    JSONObject city = cities.getJSONObject(i);
    String _name = city.getString("name");
    JSONArray _coords = city.getJSONArray("coord");
    for (int j=0;j<_coords.size();j++) {
      JSONObject _coord = _coords.getJSONObject(j);
      int _n = _coord.getInt("n"); 
      int _e = _coord.getInt("e");
      coordinatesArray.add(new Vec2f(_n, _e));
    }
    int _pop = city.getInt("pop");
    
    println("name: "+_name);
    println(coordinatesArray.get(i).getX(), coordinatesArray.get(i).getY());
    println(_pop);
  }
}

