int l = 100;
int h = 0;
public void setup()
{
  size (500, 500);
  background(255);
}
public void draw()
{
  fill(h,0.2,1);
  sierpinski(0, height, l);
}
public void mousePressed()//optional
{
  if (l >20)
    l+=10;
  if (l == 500)
    l = 100;
  System.out.println(l);
}
public void mouseMoved()
{
//hsb
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