


class Target extends GameObject
{
  int r;
  int k = 1;
  int point = 0;
  float cx = random(r, width-r);
  float cy = random(r*3, height - r * 3);
  
  Target(int r)
  {
    this.r = r;
  }
  
  void update()
  {
  }
  
  void render()
  {
    if(k == 1)
    {
      fill(random(255), random(255),random(255), 100);
      ellipse(cx,cy,r,r);
      fill(255);
      text("POINTS: ", r, height - r*2.5);
      text(point, width/2 - r*4,  height - 50);
    }
    
    if(mousePressed)
    {
      shoot.play();
      if (mouseX < cx + r && mouseX > cx -r) 
      {
        if(mouseY < cy + r && mouseY > cy - r)
        {
          point++;
          cx = random(r, width - r);
          cy = random(r*3, height - r*3);
          shoot.play();
        }
      }
    }
    }
}