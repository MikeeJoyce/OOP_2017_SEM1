class Latitude extends GameObject
{
  int r;
  float rectwidth;
  float rectheight;
  int numTicks;
  float interval;
  int tickWidth;
  
  Latitude(int r)
  {
    super(width/2, height/2);
    this.r = r;
    rectwidth = r;
    rectheight = 2 * height;
    numTicks = 240;
    interval = rectheight/numTicks;
  }
  
  void update()
  {
    y = (height/2 - rectheight/2)  - (mouseY - height/2);
  }
  
  void render()
  {
    stroke(0, 100, 0, 100);
    fill(0, 244, 0, 15);
    
    // first latitude
    x = width/2 - r*3;
    rect(x, y, rectwidth, rectheight);
    
    for(int i = 0; i < numTicks; i++)
    {
      stroke(208, 100);
      tickWidth = 10;
      if(i == (numTicks/2))
      {
        stroke(255, 0, 0);
        tickWidth = 50;
      }
      //ticks along left latitude meter
      line(x+(rectwidth/2) - (tickWidth/2), y+ (i * interval), x+(rectwidth/2) + (tickWidth/2), y+ (i * interval));
    }
    
    
    //second latitude
    stroke(0, 100, 0, 100);
    x = width/2 + r*2;
    rect(x, y, rectwidth, rectheight);
    
    for(int i = 0; i < numTicks; i++)
    {
      stroke(208, 100);
      tickWidth = 10;
      if(i == (numTicks/2))
      {
        stroke(255, 0, 0);
        tickWidth = 50;
      }
      //ticks along right latitude meter
      line(x+(rectwidth/2) - (tickWidth/2), y+ (i * interval), x+(rectwidth/2) + (tickWidth/2), y+ (i * interval));
    }
  }
}