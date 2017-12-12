class Longitude extends GameObject
{
  int r;
  float lineWidth;
  float lineHeight;
  int numTicks;
  int tickHeight;
  float interval; 
   
  Longitude(int r)
  {
    super(width, height/2);
    this.r = r;
    lineHeight = r;
    lineWidth = width * 2;
    numTicks = 240;
    interval = lineWidth/numTicks;
  }
  
  void update()
  {
    x = (width/2 - lineWidth/2)  - (mouseX - width/2);
  }
  
  void render()
  {
    stroke(0, 0 , 0);    
    // longitude
    y = height/2;    
    for(int i = 0; i < numTicks; i++)
    {
      stroke(208, 100);
      tickHeight = 10;
      if(i == (numTicks/2))
      {
        stroke(255, 0, 0);
        tickHeight = 20;
      }
      //ticks along the longitude meter
      line(x+(i * interval), y - (tickHeight), x + (i * interval), y + (tickHeight));
    } 
  }
}