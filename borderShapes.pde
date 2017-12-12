class borderShapes extends GameObject
{
  int r;
  borderShapes(int r)
  {
    this.r = r;
  }
  
  void update()
  {
  }
  
  void render()
  {
    stroke(0, 200, 0);
    fill(0, 30, 0);
    
    rect(0, 0, width, r * 1.5);
    
    stroke(0, 60, 0);
    fill(0, 22, 0);
    quad(width/2 - (r * 4), 0, width/2 + (r * 4), 0 ,(width/2) + (r * 3), r * 2, (width/2) - (r * 3), r * 2);
    
    quad(0, height, 0, height - (r*1.5), (width/2) - (r * 2), height - (r*1.5), width/2 - r, height);
    quad(width, height, width, height - (r*1.5), (width/2) + (r * 2), height - (r*1.5), width/2 + r, height);
  }
}