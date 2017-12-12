class Retical extends GameObject
{
  int radius;

  Retical()
  {
    radius = 50;
  }
  
  void update()
  {
    x = (mouseX);
    y = (mouseY);
  }
  
  void render()
  {
    stroke(0, 22, 0, 100);
    noFill();
    ellipse(x, y, radius, radius); 
    noStroke();
    fill(0);
    ellipse(x, y, radius/3, radius/3); 
    stroke(0, 22, 0, 100);
    line(x-radius, y, x+radius, y);
    line(x, y-radius, x, y+radius);

  }
}