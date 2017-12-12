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
    //if(mousePressed)
      //shoot.play();

  }
  
  void render()
  {
    if(k == 1)
    {
      fill(255, 0,0, 200);
      noStroke();
      ellipse(cx,cy,r,r);
      fill(255,255,255,200);
      textSize(30);
      text("POINTS: ",r, height -r*9);
      text(point,r+r, height -r*9);
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