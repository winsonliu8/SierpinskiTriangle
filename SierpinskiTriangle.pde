public void setup()
{
  background (#B7B1B1);
  size(400, 400);
  frameRate(5);
}
public void draw()
{
    sierpinski(0, 350, 350); 
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    fill ((int)(Math.random()*240),(int)(Math.random()*240),(int)(Math.random()*240));
    triangle (x, y, x + len/2, y - len, x+ len, y);
  }
  else{
    fill((int)Math.random()*240,(int)Math.random()*240,(int)Math.random()*240);
    sierpinski(x,y,len/2);
    fill((int)Math.random()*240,(int)Math.random()*240,(int)Math.random()*240);
    sierpinski(x+len/2,y,len/2);
    fill((int)Math.random()*240,(int)Math.random()*240,(int)Math.random()*240);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
