void setup()
{
  size(1100, 900);
  radar1 = new Radar(width / 2, height - radarWidth, radarWidth, 0.5, color(0, 255, 0));
  border = new borderShapes(radarWidth);
  lat = new Latitude(radarWidth);
  clock = new DigitalClock(40, (width/2-radarWidth)/2/2, height- (radarWidth /2)); 
  
  go.add(radar1);  
  go.add(lat);
  go.add(border);
}

int radarWidth = 100;

DigitalClock clock;
Radar radar1;
borderShapes border;
Latitude lat;
ArrayList<GameObject>  go = new ArrayList<GameObject>();

void draw()
{
  background(0, 60, 0);
  
  
  for(GameObject g: go)
  {
    g.render();
    g.update();
  }
  
  clock.getTime();
  clock.display();
  
  

}