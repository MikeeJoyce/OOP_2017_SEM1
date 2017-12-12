void setup()
{
  fullScreen();
  radar1 = new Radar(width / 2, height - radarWidth, radarWidth, 0.5, color(0, 255, 0));
  ret = new Retical();
  border = new borderShapes(radarWidth);
  lat = new Latitude(radarWidth);
  lon = new Longitude(radarWidth);
  clock = new DigitalClock(40, (width/2-radarWidth)/2/2, height- (radarWidth /2)); 
  bg = new SoundFile(this, "bg.mp3");
  shoot = new SoundFile(this, "shoot.mp3");
  bar = new Bars(radarWidth);
  tar = new Target(radarWidth);
  bg.play();
  
  
  go.add(lat);
  go.add(lon);
  go.add(ret);
  go.add(tar);
  go.add(radar1);
  go.add(border);
  go.add(bar);
  
}

int radarWidth = 100;

import processing.sound.*;
SoundFile bg, shoot;
DigitalClock clock;
Radar radar1;
Retical ret;
Target tar;
Bars bar;
borderShapes border;
Latitude lat;
Longitude lon;
ArrayList<GameObject>  go = new ArrayList<GameObject>();

void draw()
{
  
  background(0, 75, 50);
  
  
  for(GameObject g: go)
  {
    g.render();
    g.update();
  }
  
  clock.getTime();
  clock.display();
  
  
}