class Bars extends GameObject
{
  int r;
  int j = 680;
  
  Bars(int r)
  {
    this.r = r;
  }
  
  void update()
  {
  }
  
  void render()
  {
    int i = width/2+ r *2;
    
    fill(150,0,0);
    rect(i, height - r - (r/3) , j, 30);
    rect(i, height - r/2 , j - 80, 30);
    rect(i, height - r/4 , j - 170, 30);
    fill(255);
    text("HEALTH BAR", i + r*3, height - r/2);
  }
}