class DigitalClock extends Clock 
{
  int fontSize;
  float x, y;
  
  DigitalClock(int fontSize, float x, float y) 
  {
    this.fontSize = fontSize;
    this.x = x;
    this.y = y;
  }
  
  void getTime() 
  {
    super.getTime();
  }
  
  void display() 
  {
    fill(0, 255, 0 , 100);
    textSize(fontSize);
    textAlign(CENTER);
    text (h + ":" + nf(m, 2) + ":" + nf(s, 2), x, y);
  } 
}