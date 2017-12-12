class Radar extends GameObject
{
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float cx, float cy, float radius, float frequency, color c)
  {
    super(cx, cy);
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(0, 22, 0);
    fill(0);
    ellipse(x, y, radius * 2.5, radius * 2.5);
    int trailLength = 20;
    float greenIntensity = 244 / (float)trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(0, i * greenIntensity, 0);
      float x2 = x + sin(theta + i * speed) * radius;
      float y2 = y - cos(theta + i * speed) * radius;
      line(x, y, x2, y2);
    }
  }
}