class Bars extends GameObject
{
  int i;
  int r;
  int j;
  
  Bars(int r)
  {
    this.r = r;
    j = 680;
    i =width/2+ r *2;
  }
  
  void update()
  {
  }
  
  void render()
  {
    fill(random(250),0,0);
    rect(r-50, height-r-20, 20, r);
    fill(0,random(255),0);
    rect(r-20, height-r-20, 20, r);
    fill(0,255,60);
    rect(r+20, height-r-20, 10, r-10);
    fill(255,255,0);
    rect(r+40, height-r-20, 10, r-20);
    fill(255,255,0);
    rect(r+60, height-r-20, 10, r-30);
    fill(255,255,0);
    rect(r+80, height-r-20, 10, r-40);
    fill(255,255,0);
    rect(r*2, height-r-20, 10, r-50);
    fill(255,255,0);
    rect(r+r+20, height-r-20, 10, r-60);
    fill(255,255,0);
    rect(r+r+40, height-r-20, 10, r-70);
    
    fill(0,200,0);
    rect(i, height - r - (r/3) , j, 30);
    fill(0,200,0,200);
    rect(i, height - (r-5) , j - 80, 30);    
    fill(0,random(200),0,100);
    rect(i, height - (r-40) , j - 170, 30);
    fill(255);
    textSize(20);
    text("HEALTH BAR", i + r , height - (r+10));
  }
}