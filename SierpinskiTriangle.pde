int l = 100;
public void setup()
{
  size (500, 500);
  background(255);
}
public void draw()
{
  noStroke();
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256),75);
  sierpinski(0, height, l);
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256),75);
  sierpinskii(width-20, height, l);
  noLoop();
}
public void mouseDragged()//optional
{
  loop();
  if (l >20)
    l+=10;
  if (l == 500)
    l = 100;
  System.out.println(l);
  
}
public void sierpinski(int x, int y, int len) 
{
  if (len <=20)
  { 
    triangle(x, y, x+(len/2), y-len, x+len, y);
  } else 
  {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}
public void sierpinskii(int x, int y, int len) 
{
  if (len <=20)
  { 
    triangle(x, y, x+(len/2), y-len, x+len, y);
  } else 
  {
    sierpinskii(x, y, len/2);
    sierpinskii(x-(len/2), y, len/2);
    sierpinskii(x-(len/4), y-(len/2), len/2);
  }
}
